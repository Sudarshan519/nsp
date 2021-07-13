part of 'get_weathers_bloc.dart';

@freezed
class GetWeathersEvent with _$GetWeathersEvent {
  const factory GetWeathersEvent.fetchWeather() = _FetchWeather;
}
