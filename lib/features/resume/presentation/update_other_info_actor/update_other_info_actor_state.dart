part of 'update_other_info_actor_bloc.dart';

@freezed
abstract class UpdateOtherInfoActorState with _$UpdateOtherInfoActorState {
  const factory UpdateOtherInfoActorState({
    @required List<String> languages,
    @required String JLPTLevel,
    @required String selfPR,
    @required String motivationsSpecialSkills,
    @required List<String> hobbies,
    @required List<String> skills,
    @required String workinHours,
    @required String workingMinutes,
    @required String numberOfDependent,
    @required String isSpouse,
    @required String isSpouseSupportObligation,
    @required String specialConditions,
    @required List<String> knownLanguages,
    @required List<String> listOfHobbies,
    @required List<String> listOfSkills,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdateOtherInfoActorState;

  factory UpdateOtherInfoActorState.initial() => UpdateOtherInfoActorState(
        languages: [],
        JLPTLevel: '',
        selfPR: '',
        hobbies: [],
        skills: [],
        motivationsSpecialSkills: '',
        workinHours: 'Full-time',
        workingMinutes: '00',
        numberOfDependent: '',
        isSpouse: '',
        isSpouseSupportObligation: '',
        specialConditions: '',
        knownLanguages: [],
        listOfHobbies: [],
        listOfSkills: [],
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
