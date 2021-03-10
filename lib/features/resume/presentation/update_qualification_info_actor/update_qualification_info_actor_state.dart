part of 'update_qualification_info_actor_bloc.dart';

@freezed
abstract class UpdateQualificationInfoActorState
    with _$UpdateQualificationInfoActorState {
  const factory UpdateQualificationInfoActorState({
    @required String qualificationName,
    @required String certifiedYear,
    @required String certifiedMonth,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdateQualificationInfoActorState;

  factory UpdateQualificationInfoActorState.initial() =>
      UpdateQualificationInfoActorState(
        qualificationName: '',
        certifiedYear: '',
        certifiedMonth: '',
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
