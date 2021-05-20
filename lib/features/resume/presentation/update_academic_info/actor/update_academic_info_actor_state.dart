part of 'update_academic_info_actor_bloc.dart';

@freezed
abstract class UpdateAcademicInfoActorState
    with _$UpdateAcademicInfoActorState {
  const factory UpdateAcademicInfoActorState({
    required Key? key,
    required String nameOfInstitute,
    required String majorSubject,
    required String yearOFEnroll,
    required String yearOfCpmpletion,
    required String monthOfEnroll,
    required String monthOfCompletion,
    required List<String> majorSubjectList,
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
        isSubmitting: false,
        hasSetInitialData: false,
        failureOrSuccessOption: none(),
      );
}
