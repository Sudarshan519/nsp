part of 'individual_transaction_bloc.dart';

@freezed
class IndividualTransactionState with _$IndividualTransactionState {
  const factory IndividualTransactionState.loading() = _Loading;

  const factory IndividualTransactionState.loadedIndividual(
      TransactionItem item) = _LoadedIndividual;
  const factory IndividualTransactionState.failure(ApiFailure failure) =
      _Failure;
  const factory IndividualTransactionState.failureWithData(
      ApiFailure failure, List<TransactionItem> list) = _FailureWithData;
}
