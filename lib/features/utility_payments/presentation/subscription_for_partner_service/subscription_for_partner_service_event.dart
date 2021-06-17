part of 'subscription_for_partner_service_bloc.dart';

@freezed
class SubscriptionForPartnerServiceEvent
    with _$SubscriptionForPartnerServiceEvent {
  const factory SubscriptionForPartnerServiceEvent.getSubscription({
    required String subscriptionId,
  }) = _GetSubscription;

  const factory SubscriptionForPartnerServiceEvent.purchaseSubscription({
    required String subscriptionId,
  }) = _PurchaseSubscription;
}
