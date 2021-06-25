part of 'get_balance_bloc.dart';

@freezed
class GetBalanceEvent with _$GetBalanceEvent {
  const factory GetBalanceEvent.fetchBalance() = _FetchBalance;
}
