part of 'update_work_info_actor_bloc.dart';

@freezed
class UpdateWorkInfoActorState with _$UpdateWorkInfoActorState {
  const factory UpdateWorkInfoActorState({
    required Key? key,
    required String nameOfComapny,
    required String companyType,
    required String startedYear,
    required String startedMonth,
    required String endYear,
    required String endMonth,
    required String purposeOfResign,
    required List<String> typeOfCompanyList,
    required List<String> listOfYear,
    required List<String> listOfYearWithRunning,
    required bool isSubmitting,
    required bool hasSetInitialData,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _UpdateWorkInfoActorState;

  factory UpdateWorkInfoActorState.initial() => UpdateWorkInfoActorState(
        key: UniqueKey(),
        nameOfComapny: '',
        companyType: '',
        startedYear: '',
        startedMonth: '',
        endYear: '',
        endMonth: '',
        purposeOfResign: '',
        typeOfCompanyList: [],
        listOfYear: [],
        listOfYearWithRunning: [],
        isSubmitting: false,
        hasSetInitialData: false,
        failureOrSuccessOption: none(),
      );
}
