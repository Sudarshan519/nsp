part of 'update_academic_info_actor_bloc.dart';

@freezed
abstract class UpdateAcademicInfoActorState
    with _$UpdateAcademicInfoActorState {
  const factory UpdateAcademicInfoActorState({
    @required String nameOfInstitute,
    @required String majorSubject,
    @required String yearOFEnroll,
    @required String yearOfCpmpletion,
    @required String monthOfEnroll,
    @required String monthOfCompletion,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdateAcademicInfoActorState;

  factory UpdateAcademicInfoActorState.initial() =>
      UpdateAcademicInfoActorState(
        nameOfInstitute: '',
        majorSubject: '',
        yearOFEnroll: '',
        yearOfCpmpletion: '',
        monthOfEnroll: '',
        monthOfCompletion: '',
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
