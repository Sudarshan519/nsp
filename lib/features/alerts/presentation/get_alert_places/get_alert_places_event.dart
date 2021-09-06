part of 'get_alert_places_bloc.dart';

@freezed
class GetAlertPlacesEvent with _$GetAlertPlacesEvent {
  const factory GetAlertPlacesEvent.fetch() = _Fetch;
  // const factory GetAlertPlacesEvent.register() = _Register;
}
