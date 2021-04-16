part of 'update_personal_info_actor_bloc.dart';

@freezed
abstract class UpdatePersonalInfoActorEvent
    with _$UpdatePersonalInfoActorEvent {
  const factory UpdatePersonalInfoActorEvent.changeFirstName(String name) =
      _ChangeFirstName;
  const factory UpdatePersonalInfoActorEvent.changeLastName(String name) =
      _ChangeLastName;
  const factory UpdatePersonalInfoActorEvent.changeFuriganaName(String name) =
      _ChangeFuriganaName;
  const factory UpdatePersonalInfoActorEvent.changeProfession(
      String profession) = _ChangeProfession;
  const factory UpdatePersonalInfoActorEvent.changeDob(String dob) = _ChangeDob;
  const factory UpdatePersonalInfoActorEvent.changeAge(String age) = _ChangeAge;
  const factory UpdatePersonalInfoActorEvent.changeGender(String gender) =
      _ChangeGender;
  const factory UpdatePersonalInfoActorEvent.changeNationality(
      String nationality) = _ChangeNationality;
  const factory UpdatePersonalInfoActorEvent.changeEmail(String email) =
      _ChangeEmail;
  const factory UpdatePersonalInfoActorEvent.changePhone(String phone) =
      _ChangePhone;
  const factory UpdatePersonalInfoActorEvent.setInitialState({
    @required PersonalInfo info,
    @required List<String> listOfNationality,
    @required List<String> listOfProfession,
    @required String lang,
  }) = _SetInitialState;
  const factory UpdatePersonalInfoActorEvent.save() = _Save;
}
