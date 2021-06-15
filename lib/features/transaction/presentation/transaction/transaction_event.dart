part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.fetchTransactionData(
      GetTransactionParam params) = _FetchTransactionData;
  const factory TransactionEvent.pullToRefresh() = _PullToRefresh;
}
