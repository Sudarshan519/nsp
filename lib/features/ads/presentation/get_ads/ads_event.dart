part of 'ads_bloc.dart';

@freezed
class AdsEvent with _$AdsEvent {
  const factory AdsEvent.fetchAds() = _FetchAds;
  const factory AdsEvent.hideAds() = _HideAds;
  const factory AdsEvent.refreshAd({required int seconds}) = _RefreshAd;
}
