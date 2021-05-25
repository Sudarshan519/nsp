part of 'get_payment_methods_bloc.dart';

@freezed
class GetPaymentMethodsState with _$GetPaymentMethodsState {
  const factory GetPaymentMethodsState.loading() = _Loading;
  const factory GetPaymentMethodsState.loaded(LoadFund data) = _Loaded;
  const factory GetPaymentMethodsState.failure(ApiFailure failure) = _Failure;
}
