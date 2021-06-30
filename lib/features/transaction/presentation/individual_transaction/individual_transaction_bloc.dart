import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/features/transaction/domain/usecase/get_individual_transaction.dart';

part 'individual_transaction_event.dart';
part 'individual_transaction_state.dart';
part 'individual_transaction_bloc.freezed.dart';

@injectable
class IndividualTransactionBloc
    extends Bloc<IndividualTransactionEvent, IndividualTransactionState> {
  IndividualTransactionBloc({required this.getIndividualTxn})
      : super(const _Loading());
  final GetIndivisualTransaction getIndividualTxn;

  @override
  Stream<IndividualTransactionState> mapEventToState(
    IndividualTransactionEvent event,
  ) async* {
    yield* event.map(fetchIndividualTransactionData: (d) async* {
      yield const _Loading();
      final result = await getIndividualTxn(d.id);
      yield result.fold((l) {
        return _Failure(l);
      }, (r) {
        return _LoadedIndividual(r);
      });
    });
  }
}
