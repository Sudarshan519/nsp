part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.loading() = _Loading;

  const factory TransactionState.loaded(List<TransactionItem> list) = _Loaded;
  const factory TransactionState.failure(ApiFailure failure) = _Failure;
  const factory TransactionState.failureWithData(
      ApiFailure failure, List<TransactionItem> list) = _FailureWithData;
}
