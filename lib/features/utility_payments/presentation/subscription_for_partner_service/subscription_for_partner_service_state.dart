part of 'subscription_for_partner_service_bloc.dart';

@freezed
class SubscriptionForPartnerServiceState
    with _$SubscriptionForPartnerServiceState {
  const factory SubscriptionForPartnerServiceState.initial() = _Initial;
  const factory SubscriptionForPartnerServiceState.loading() = _Loading;
  const factory SubscriptionForPartnerServiceState.failure(ApiFailure failure) =
      _Failure;
  const factory SubscriptionForPartnerServiceState.fetchSubscriptionSuccessfully() =
      _FetchSubscriptionSuccessfully;
  const factory SubscriptionForPartnerServiceState.purchasedSuccessfully() =
      _PurchasedSuccessfully;
}
