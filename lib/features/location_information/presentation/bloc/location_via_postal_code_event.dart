part of 'location_via_postal_code_bloc.dart';

@freezed
class LocationViaPostalCodeEvent with _$LocationViaPostalCodeEvent {
  const factory LocationViaPostalCodeEvent.fetch(String postalCode) = _Fetch;
  const factory LocationViaPostalCodeEvent.setStateToInitial() =
      _SetStateToInitial;
}
