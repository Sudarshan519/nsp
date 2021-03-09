part of 'update_address_info_actor_bloc.dart';

@freezed
abstract class UpdateAddressInfoActorEvent with _$UpdateAddressInfoActorEvent {
  const factory UpdateAddressInfoActorEvent.changedPostalCode(String code) =
      _ChangedPostalCode;
  const factory UpdateAddressInfoActorEvent.changedPrefecture(
      String prefecture) = _ChangedPrefecture;
  const factory UpdateAddressInfoActorEvent.changedCity(String city) =
      _ChangedCity;
  const factory UpdateAddressInfoActorEvent.changedAddress(String address) =
      _ChangedAddress;
  const factory UpdateAddressInfoActorEvent.changedPhone(String phone) =
      _ChangedPhone;
  const factory UpdateAddressInfoActorEvent.setInitialState(PersonalInfo info) =
      _SetInitialState;
  const factory UpdateAddressInfoActorEvent.save() = _Save;
}
