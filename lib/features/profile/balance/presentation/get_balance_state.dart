part of 'get_balance_bloc.dart';

@freezed
class GetBalanceState with _$GetBalanceState {
  const factory GetBalanceState.loading() = _Loading;
  const factory GetBalanceState.loaded(UserBalance balance) = _Loaded;
  const factory GetBalanceState.failure(ApiFailure failure) = _Failure;
}
