part of 'location_via_postal_code_bloc.dart';

@freezed
abstract class LocationViaPostalCodeState with _$LocationViaPostalCodeState {
  const factory LocationViaPostalCodeState.initial() = _Initial;
  const factory LocationViaPostalCodeState.success(
      List<PrefectureAndCityFromPostalCode> data) = _Success;
  const factory LocationViaPostalCodeState.loading() = _Loading;
  const factory LocationViaPostalCodeState.failure(ApiFailure failure) =
      _Failure;
}
