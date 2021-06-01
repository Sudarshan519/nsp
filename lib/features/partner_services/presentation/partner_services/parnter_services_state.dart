part of 'parnter_services_bloc.dart';

@freezed
class ParnterServicesState with _$ParnterServicesState {
  const factory ParnterServicesState.loading() = _Loading;
  const factory ParnterServicesState.loadingWithData(List<Services> list) =
      _LoadingWithData;
  const factory ParnterServicesState.loaded(List<Services> list) = _Loaded;
  const factory ParnterServicesState.failure(ApiFailure failure) = _Failure;
  const factory ParnterServicesState.failureWithData(
      ApiFailure failure, List<Services> list) = _FailureWithData;
}
