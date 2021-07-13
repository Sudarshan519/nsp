part of 'get_weathers_bloc.dart';

@freezed
class GetWeathersState with _$GetWeathersState {
  const factory GetWeathersState.initial() = _Initial;
  const factory GetWeathersState.loading() = _Loading;
  const factory GetWeathersState.success(List<WeatherInfo> weathers) = _Success;
  const factory GetWeathersState.failure(ApiFailure failure) = _Failure;
}
