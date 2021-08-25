part of 'stripe_refund_bloc.dart';

@freezed
class StripeRefundEvent with _$StripeRefundEvent {
  const factory StripeRefundEvent.stripeRefund(String referenceId) =
      _StripeRefund;
}
