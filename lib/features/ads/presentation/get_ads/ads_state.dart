part of 'ads_bloc.dart';

@freezed
class AdsState with _$AdsState {
  const factory AdsState.initial() = _Initial;
  const factory AdsState.loading() = _Loading;
  const factory AdsState.loaded(Ads ads) = _Loaded;
    const factory AdsState.failure(ApiFailure failure) = _Failure;

}
