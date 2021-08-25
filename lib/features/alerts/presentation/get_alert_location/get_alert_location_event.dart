part of 'get_alert_location_bloc.dart';

@freezed
class GetAlertLocationEvent with _$GetAlertLocationEvent {
  const factory GetAlertLocationEvent.getlocation() = _Getlocation;
  const factory GetAlertLocationEvent.setLocation(String location) =
      _SetLocation;
}
