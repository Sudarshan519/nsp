part of 'get_alert_location_bloc.dart';

@freezed
class GetAlertLocationState with _$GetAlertLocationState {
  const factory GetAlertLocationState.initial() = _Initial;
  const factory GetAlertLocationState.loaded(String location) = _Loaded;
  const factory GetAlertLocationState.failure() = _Failure;
}
