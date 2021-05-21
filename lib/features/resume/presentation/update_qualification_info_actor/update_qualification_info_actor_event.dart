part of 'update_qualification_info_actor_bloc.dart';

@freezed
class UpdateQualificationInfoActorEvent
    with _$UpdateQualificationInfoActorEvent {
  const factory UpdateQualificationInfoActorEvent.changedQualificationName(
      String name) = _ChangedQualificationName;
  const factory UpdateQualificationInfoActorEvent.changedCertifiedYear(
      String year) = _ChangedCertifiedYear;
  const factory UpdateQualificationInfoActorEvent.changedCertifiedMonth(
      String month) = _ChangedCertifiedMonth;

  const factory UpdateQualificationInfoActorEvent.setInitialState(
          QualificationHistory qualificationHistory, String lang) =
      _SetInitialState;

  const factory UpdateQualificationInfoActorEvent.save() = _Save;
}
