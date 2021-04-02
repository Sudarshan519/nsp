part of 'update_work_info_actor_bloc.dart';

@freezed
abstract class UpdateWorkInfoActorEvent with _$UpdateWorkInfoActorEvent {
  const factory UpdateWorkInfoActorEvent.changedNameOfCompany(String company) =
      _ChangedNameOfCompany;
  const factory UpdateWorkInfoActorEvent.changedTypeOfCompany(String type) =
      _ChangedTypeOfCompany;
  const factory UpdateWorkInfoActorEvent.changedStartedYear(String year) =
      _ChangedStartedYear;
  const factory UpdateWorkInfoActorEvent.changedStartedMonth(String month) =
      _ChangedStartedMonth;
  const factory UpdateWorkInfoActorEvent.changedEndYear(String year) =
      _ChangedEndYear;
  const factory UpdateWorkInfoActorEvent.changedEndMonth(String month) =
      _ChangedEndMonth;
  const factory UpdateWorkInfoActorEvent.changedPurposeOfResign(
      String puropse) = _ChangedPurposeOfResign;
  const factory UpdateWorkInfoActorEvent.setInitialState(
      WorkHistory workHistory,
      List<String> typeOfCompanyList,
      String lang) = _SetInitialState;

  const factory UpdateWorkInfoActorEvent.save() = _Save;
}
