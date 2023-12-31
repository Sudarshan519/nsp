part of 'update_qualification_info_actor_bloc.dart';

@freezed
class UpdateQualificationInfoActorState
    with _$UpdateQualificationInfoActorState {
  const factory UpdateQualificationInfoActorState({
    required Key? key,
    required String qualificationName,
    required String certifiedYear,
    required String certifiedMonth,
    required bool isSubmitting,
    required List<String> listOfYear,
    required bool hasSetInitialData,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _UpdateQualificationInfoActorState;

  factory UpdateQualificationInfoActorState.initial() =>
      UpdateQualificationInfoActorState(
        key: UniqueKey(),
        qualificationName: '',
        certifiedYear: '',
        certifiedMonth: '',
        isSubmitting: false,
        hasSetInitialData: false,
        listOfYear: [],
        failureOrSuccessOption: none(),
      );
}
