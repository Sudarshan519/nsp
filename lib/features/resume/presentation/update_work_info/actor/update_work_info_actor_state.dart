part of 'update_work_info_actor_bloc.dart';

@freezed
abstract class UpdateWorkInfoActorState with _$UpdateWorkInfoActorState {
  const factory UpdateWorkInfoActorState({
    @required String nameOfComapny,
    @required String designation,
    @required String startedYear,
    @required String endYear,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdateWorkInfoActorState;

  factory UpdateWorkInfoActorState.initial() => UpdateWorkInfoActorState(
        nameOfComapny: '',
        designation: '',
        startedYear: '',
        endYear: '',
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
