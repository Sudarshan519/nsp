import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/features/transaction/domain/usecase/get_individual_transaction.dart';
import 'package:wallet_app/features/transaction/domain/usecase/get_transaction.dart';
import 'package:wallet_app/utils/date_time_formatter.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

@singleton
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final GetTransactions getTransaction;
  final GetIndivisualTransaction getIndividualTxn;
  bool isFetching = false;
  int _page = 1;
  // bool _hasReachedEnd = false;
  final String _from = DateTimeFormatter.formatDateToApi(
      DateTime.now().subtract(const Duration(days: 7)));
  final String _to = DateTimeFormatter.formatDateToApi(DateTime.now());
  final List<TransactionItem> _data = [];

  TransactionBloc({
    required this.getTransaction,
    required this.getIndividualTxn,
  }) : super(const _Loading());

  @override
  Stream<TransactionState> mapEventToState(TransactionEvent event) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      fetchTransactionData: (d) async* {
        // if (_hasReachedEnd) {
        //   yield _Loaded(_data);
        // } else {
        isFetching = true;
        if (_data.isEmpty) {
          yield const _Loading();
        }
        yield* _mapFetchNewsToState(d);

        // }
      },
      pullToRefresh: (e) async* {},
      fetchIndividualTransactionData: (e) async* {
        yield const _Loading();

        final data = _data.where((element) => element.id == e.id).toList();
        if (data.isNotEmpty) {
          yield _LoadedIndividual(item: data.first);
        } else {
          final result = await getIndividualTxn(e.id);
          yield result.fold((l) {
            return _Failure(l);
          }, (r) {
            return _LoadedIndividual(item: r);
          });
        }
      },
    );
  }

  Stream<TransactionState> _mapFetchNewsToState(
      _FetchTransactionData _fetchTransactionData) async* {
    if (_data.isNotEmpty) {
      yield const _Loading();
    }

    final result = await getTransaction(
      GetTransactionParam(
        page: '$_page',
        fromDate: _fetchTransactionData.fromDate ?? _from,
        toDate: _fetchTransactionData.toDate ?? _to,
      ),
    );
    yield result.fold(
      (failure) {
        isFetching = false;
        if (_data.isEmpty) {
          return _FailureWithData(failure, _data);
        } else {
          return _Failure(failure);
        }
      },
      (transactionData) {
        isFetching = false;
        // if (transactionData.isEmpty) {
        //   _hasReachedEnd = true;
        // }
        // _data.addAll(transactionData);
        _data.clear();
        _data.addAll(transactionData);

        _page = _page + 1;
        return _Loaded(_data);
      },
    );
  }
}
