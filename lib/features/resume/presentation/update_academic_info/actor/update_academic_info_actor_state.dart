part of 'update_academic_info_actor_bloc.dart';

@freezed
class UpdateAcademicInfoActorState with _$UpdateAcademicInfoActorState {
  const factory UpdateAcademicInfoActorState({
    required Key? key,
    required String nameOfInstitute,
    required String majorSubject,
    required String yearOFEnroll,
    required String yearOfCpmpletion,
    required String monthOfEnroll,
    required String monthOfCompletion,
    required List<String> majorSubjectList,
    required List<String> listOfYear,
    required List<String> listOfYearWithRunning,
    required bool isSubmitting,
    required bool hasSetInitialData,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _UpdateAcademicInfoActorState;

  factory UpdateAcademicInfoActorState.initial() =>
      UpdateAcademicInfoActorState(
        key: UniqueKey(),
        nameOfInstitute: '',
        majorSubject: '',
        yearOFEnroll: '',
        yearOfCpmpletion: '',
        monthOfEnroll: '',
        monthOfCompletion: '',
        majorSubjectList: [],
        listOfYear: [],
        listOfYearWithRunning: [],
        isSubmitting: false,
        hasSetInitialData: false,
        failureOrSuccessOption: none(),
      );
}
