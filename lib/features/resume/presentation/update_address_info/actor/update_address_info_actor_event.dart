part of 'update_address_info_actor_bloc.dart';

@freezed
class UpdateAddressInfoActorEvent with _$UpdateAddressInfoActorEvent {
  const factory UpdateAddressInfoActorEvent.changeCurrCountry(String country) =
      _ChangedCurrCountry;
  const factory UpdateAddressInfoActorEvent.changedCurrPostalCode(String code) =
      _ChangedCurrPostalCode;
  const factory UpdateAddressInfoActorEvent.changedCurrJapanesePrefecture(
      String prefecture) = _ChangedCurJapaneserPrefecture;
  const factory UpdateAddressInfoActorEvent.changedCurrNepaliProvince(
      String province) = _ChangedCurrNepaliProvince;
  const factory UpdateAddressInfoActorEvent.changedCurrCity(String city) =
      _ChangedCurrCity;
  const factory UpdateAddressInfoActorEvent.changedCurrAddress(String address) =
      _ChangedCurrAddress;
  const factory UpdateAddressInfoActorEvent.changedCurrPhone(String phone) =
      _ChangedCurrPhone;

  const factory UpdateAddressInfoActorEvent.changeSameAsCurrAddressInfo(
      // ignore: avoid_positional_boolean_parameters
      bool value) = _ChangedSameAsCurrAddressInfo;

  const factory UpdateAddressInfoActorEvent.changeContCountry(String country) =
      _ChangedContCountry;
  const factory UpdateAddressInfoActorEvent.changedContPostalCode(String code) =
      _ChangedContPostalCode;
  const factory UpdateAddressInfoActorEvent.changedContJapanesePrefecture(
      String prefecture) = _ChangedContJapanesePrefecture;
  const factory UpdateAddressInfoActorEvent.changedContNepaliProvince(
      String province) = _ChangedContNepaliProvince;
  const factory UpdateAddressInfoActorEvent.changedContCity(String city) =
      _ChangedContCity;
  const factory UpdateAddressInfoActorEvent.changedContAddress(String address) =
      _ChangedContAddress;
  const factory UpdateAddressInfoActorEvent.changedContPhone(String phone) =
      _ChangedContPhone;

  const factory UpdateAddressInfoActorEvent.setInitialState({
    required PersonalInfo info,
    required List<String> prefectures,
    required List<String> provinces,
    required List<String> countries,
    required String lang,
  }) = _SetInitialState;

  const factory UpdateAddressInfoActorEvent.save() = _Save;
}
