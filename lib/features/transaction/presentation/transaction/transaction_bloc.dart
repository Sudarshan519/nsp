import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/features/transaction/domain/usecase/get_transaction.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final GetTransactions getTransaction;
  bool isFetching = false;
  int _page = 1;
  bool _hasReachedEnd = false;
  DateTime from = DateTime.now();
  DateTime to = DateTime.now();
  final List<TransactionItem> _data = [];

  TransactionBloc({
    required this.getTransaction,
  }) : super(const _Loading());

  @override
  Stream<TransactionState> mapEventToState(TransactionEvent event) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      fetchTransactionData: (d) async* {
        if (_hasReachedEnd) {
          yield _Loaded(_data);
        } else {
          isFetching = true;
          if (_data.isEmpty) {
            yield const _Loading();
          }
          yield* _mapFetchNewsToState(d);
        }
      },
      pullToRefresh: (e) async* {},
    );
  }

  Stream<TransactionState> _mapFetchNewsToState(
      _FetchTransactionData d) async* {
    if (_data.isNotEmpty) {
      yield const _Loading();
    }

    final result = await getTransaction(d.params);
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
        if (transactionData.isEmpty) {
          _hasReachedEnd = true;
        }
        _data.addAll(transactionData);
        _page = _page + 1;
        return _Loaded(_data);
      },
    );
  }
}
