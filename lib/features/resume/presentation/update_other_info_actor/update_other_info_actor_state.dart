part of 'update_other_info_actor_bloc.dart';

@freezed
class UpdateOtherInfoActorState with _$UpdateOtherInfoActorState {
  const factory UpdateOtherInfoActorState({
    required Key? key,
    required List<String> languages,
    // ignore: non_constant_identifier_names
    required String JLPTLevel,
    required String selfPR,
    required String motivationsSpecialSkills,
    required List<String> hobbies,
    required List<String> skills,
    required String workinHours,
    required String workingMinutes,
    required String numberOfDependent,
    required String isSpouse,
    required String isSpouseSupportObligation,
    required String specialConditions,
    required List<String> knownLanguages,
    required List<String> listOfHobbies,
    required List<String> listOfSkills,
    required List<String> listOfJLPTLevel,
    required List<String> listOfHourRate,
    required List<String> listOfYesNoOption,
    required bool isSubmitting,
    required bool hasSetInitialData,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _UpdateOtherInfoActorState;

  factory UpdateOtherInfoActorState.initial() => UpdateOtherInfoActorState(
        key: UniqueKey(),
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
        specialConditions: 'Follow as per company rules and regulations.',
        knownLanguages: [],
        listOfHobbies: [],
        listOfSkills: [],
        listOfJLPTLevel: [],
        listOfHourRate: [],
        listOfYesNoOption: [],
        isSubmitting: false,
        hasSetInitialData: false,
        failureOrSuccessOption: none(),
      );
}
