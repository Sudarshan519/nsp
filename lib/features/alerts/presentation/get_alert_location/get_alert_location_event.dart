part of 'get_alert_location_bloc.dart';

@freezed
class GetAlertLocationEvent with _$GetAlertLocationEvent {
  const factory GetAlertLocationEvent.getlocation() = _Getlocation;
  const factory GetAlertLocationEvent.getPlaceFromGPS() = _GetPlaceFromGPS;
  const factory GetAlertLocationEvent.setCity(Place city) = _SetCity;
  const factory GetAlertLocationEvent.removePlace() = _RemovePlace;
}
