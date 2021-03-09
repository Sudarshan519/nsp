part of 'update_work_info_actor_bloc.dart';

@freezed
abstract class UpdateWorkInfoActorEvent with _$UpdateWorkInfoActorEvent {
  const factory UpdateWorkInfoActorEvent.changedNameOfCompany(String company) =
      _ChangedNameOfCompany;
  const factory UpdateWorkInfoActorEvent.changedDesignation(
      String designation) = _ChangedDesignation;
  const factory UpdateWorkInfoActorEvent.changedStartedYear(String year) =
      _ChangedStartedYear;
  const factory UpdateWorkInfoActorEvent.changedEndYear(String year) =
      _ChangedEndYear;
  const factory UpdateWorkInfoActorEvent.setInitialState(
      WorkHistory workHistory) = _SetInitialState;
  const factory UpdateWorkInfoActorEvent.save() = _Save;
}
