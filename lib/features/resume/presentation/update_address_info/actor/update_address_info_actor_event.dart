part of 'update_address_info_actor_bloc.dart';

@freezed
abstract class UpdateAddressInfoActorEvent with _$UpdateAddressInfoActorEvent {
  const factory UpdateAddressInfoActorEvent.changedCurrPostalCode(String code) =
      _ChangedCurrPostalCode;
  const factory UpdateAddressInfoActorEvent.changedCurrPrefecture(
      String prefecture) = _ChangedCurrPrefecture;
  const factory UpdateAddressInfoActorEvent.changedCurrCity(String city) =
      _ChangedCurrCity;
  const factory UpdateAddressInfoActorEvent.changedCurrAddress(String address) =
      _ChangedCurrAddress;
  const factory UpdateAddressInfoActorEvent.changedCurrPhone(String phone) =
      _ChangedCurrPhone;

  const factory UpdateAddressInfoActorEvent.changedContPostalCode(String code) =
      _ChangedContPostalCode;
  const factory UpdateAddressInfoActorEvent.changedContPrefecture(
      String prefecture) = _ChangedContPrefecture;
  const factory UpdateAddressInfoActorEvent.changedContCity(String city) =
      _ChangedContCity;
  const factory UpdateAddressInfoActorEvent.changedContAddress(String address) =
      _ChangedContAddress;
  const factory UpdateAddressInfoActorEvent.changedContPhone(String phone) =
      _ChangedContPhone;

  const factory UpdateAddressInfoActorEvent.setInitialState(PersonalInfo info) =
      _SetInitialState;
  const factory UpdateAddressInfoActorEvent.save() = _Save;
}
