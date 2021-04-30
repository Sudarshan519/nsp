part of 'get_earthquakes_bloc.dart';

@freezed
abstract class GetEarthquakesState with _$GetEarthquakesState {
  const factory GetEarthquakesState.initial() = _Initial;
  const factory GetEarthquakesState.loading() = _Loading;
  const factory GetEarthquakesState.loadingWithData(List<Alert> alerts) =
      _LoadingWithData;
  const factory GetEarthquakesState.success(List<Alert> alerts) = _Success;
  const factory GetEarthquakesState.failure(ApiFailure failure) = _Failure;
}
