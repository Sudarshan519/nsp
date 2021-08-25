part of 'stripe_refund_bloc.dart';

@freezed
class StripeRefundState with _$StripeRefundState {
  const factory StripeRefundState.initial() = _Initial;
  const factory StripeRefundState.loading() = _Loading;
  const factory StripeRefundState.success(String refId) = _Success;
  const factory StripeRefundState.failure(ApiFailure failure) = _Failure;
}
