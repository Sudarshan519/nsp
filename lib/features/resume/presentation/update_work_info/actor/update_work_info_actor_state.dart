part of 'update_work_info_actor_bloc.dart';

@freezed
abstract class UpdateWorkInfoActorState with _$UpdateWorkInfoActorState {
  const factory UpdateWorkInfoActorState({
    @required String nameOfComapny,
    @required String companyType,
    @required String startedYear,
    @required String startedMonth,
    @required String endYear,
    @required String endMonth,
    @required List<String> typeOfCompanyList,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdateWorkInfoActorState;

  factory UpdateWorkInfoActorState.initial() => UpdateWorkInfoActorState(
        nameOfComapny: '',
        companyType: '',
        startedYear: '',
        startedMonth: '',
        endYear: '',
        endMonth: '',
        typeOfCompanyList: [],
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
