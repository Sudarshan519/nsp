part of 'update_other_info_actor_bloc.dart';

@freezed
abstract class UpdateOtherInfoActorEvent with _$UpdateOtherInfoActorEvent {
  const factory UpdateOtherInfoActorEvent.changeLanguages(
      List<String> languages) = _ChangeLanguages;
  const factory UpdateOtherInfoActorEvent.changeJLPTLevel(String JLPTLevel) =
      _ChangeJLPTLevel;
  const factory UpdateOtherInfoActorEvent.changeSelfPR(String selfPR) =
      _ChangeSelfPR;
  const factory UpdateOtherInfoActorEvent.changeMotivationsSpecialSkills(
      String motivationsSpecialSkills) = _ChangeMotivationsSpecialSkills;
  const factory UpdateOtherInfoActorEvent.changeHobbies(List<String> hobbies) =
      _ChangeHobbies;
  const factory UpdateOtherInfoActorEvent.changeSkills(List<String> skills) =
      _ChangeSkills;
  const factory UpdateOtherInfoActorEvent.changeWorkinHours(String hours) =
      _ChangeWorkinHours;
  const factory UpdateOtherInfoActorEvent.changeWorkingMinutes(String minutes) =
      _ChangeWorkingMinutes;
  const factory UpdateOtherInfoActorEvent.changeNumberOfDependent(
      String numberOfDependent) = _ChangeNumberOfDependent;
  const factory UpdateOtherInfoActorEvent.changeIsSpouse(String isSpouse) =
      _ChangeIsSpouse;
  const factory UpdateOtherInfoActorEvent.changeIsSpouseSupportObligation(
      String isSpouseSupportObligation) = _ChangeIsSpouseSupportObligation;
  const factory UpdateOtherInfoActorEvent.changeSpecialConditions(
      String specialConditions) = _ChangeSpecialConditions;
  const factory UpdateOtherInfoActorEvent.setInitialState({
    @required PersonalInfo info,
    @required String lang,
    @required List<String> listOfLanguages,
    @required List<String> listOHobbies,
    @required List<String> listOfSkills,
  }) = _SetInitialState;
  const factory UpdateOtherInfoActorEvent.save() = _Save;
}
