part of 'update_other_info_actor_bloc.dart';

@freezed
abstract class UpdateOtherInfoActorEvent with _$UpdateOtherInfoActorEvent {
  const factory UpdatePersonalInfoActorEvent.changeLanguages(
      List<String> languages) = _ChangeLanguages;
  const factory UpdatePersonalInfoActorEvent.changeJLPTLevel(String JLPTLevel) =
      _ChangeJLPTLevel;
  const factory UpdatePersonalInfoActorEvent.changeSelfPR(String selfPR) =
      _ChangeSelfPR;
  const factory UpdatePersonalInfoActorEvent.changeMotivationsSpecialSkills(
      String motivationsSpecialSkills) = _ChangeMotivationsSpecialSkills;
  const factory UpdatePersonalInfoActorEvent.changeWorkinHours(String hours) =
      _ChangeWorkinHours;
  const factory UpdatePersonalInfoActorEvent.changeWorkingMinutes(
      String minutes) = _ChangeWorkingMinutes;
  const factory UpdatePersonalInfoActorEvent.changeNumberOfDependent(
      String numberOfDependent) = _ChangeNumberOfDependent;
  const factory UpdatePersonalInfoActorEvent.changeIsSpouse(bool isSpouse) =
      _ChangeIsSpouse;
  const factory UpdatePersonalInfoActorEvent.changeIsSpouseSupportObligation(
      bool isSpouseSupportObligation) = _ChangeIsSpouseSupportObligation;
  const factory UpdatePersonalInfoActorEvent.changeSpecialConditions(
      String specialConditions) = _ChangeSpecialConditions;
  const factory UpdatePersonalInfoActorEvent.save() = _Save;
}
