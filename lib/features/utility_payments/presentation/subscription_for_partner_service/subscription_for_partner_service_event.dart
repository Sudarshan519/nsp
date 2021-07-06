part of 'subscription_for_partner_service_bloc.dart';

@freezed
class SubscriptionForPartnerServiceEvent
    with _$SubscriptionForPartnerServiceEvent {
  const factory SubscriptionForPartnerServiceEvent.getSubscription({
    required String subscriptionId,
  }) = _GetSubscription;

  const factory SubscriptionForPartnerServiceEvent.selectSubscription({
    required SubscriptionInvoice invoice,
  }) = _SelectSubscription;

  const factory SubscriptionForPartnerServiceEvent.selectAllSubscription(

      ///[true] to selectall and vice versa
      bool selectAll) = _SelectAllSubscription;

  const factory SubscriptionForPartnerServiceEvent.purchaseSubscription(
      int productId) = _PurchaseSubscription;
}
