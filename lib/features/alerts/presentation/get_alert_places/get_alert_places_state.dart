part of 'get_alert_places_bloc.dart';

@freezed
class GetAlertPlacesState with _$GetAlertPlacesState {
  const factory GetAlertPlacesState.loading() = _Loading;
  const factory GetAlertPlacesState.success(AlertPlaces alertPlaces) = _Success;
  const factory GetAlertPlacesState.failure(ApiFailure failure) = _Failure;
}
