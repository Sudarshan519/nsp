part of 'parnter_services_bloc.dart';

@freezed
class ParnterServicesState with _$ParnterServicesState {
  const factory ParnterServicesState.initial() = _Initial;
  const factory ParnterServicesState.loading() = _Loading;
  const factory ParnterServicesState.loaded(List<Services> list) = _Loaded;
  const factory ParnterServicesState.reachEnd() = _ReachedEnd;
  const factory ParnterServicesState.failure(ApiFailure failure) = _Failure;
}
