part of 'ads_bloc.dart';

@freezed
class AdsEvent with _$AdsEvent {
  const factory AdsEvent.fetchAds() = _FetchAds;
}