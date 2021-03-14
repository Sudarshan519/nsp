part of 'update_academic_info_actor_bloc.dart';

@freezed
abstract class UpdateAcademicInfoActorEvent
    with _$UpdateAcademicInfoActorEvent {
  const factory UpdateAcademicInfoActorEvent.changedNameOfInstitute(
      String institute) = _ChangedNameOfInstitute;
  const factory UpdateAcademicInfoActorEvent.changedMajorSubject(
      String subject) = _ChangedMajorSubject;
  const factory UpdateAcademicInfoActorEvent.changedYearOfEnroll(String year) =
      _ChangedYearOfEnroll;
  const factory UpdateAcademicInfoActorEvent.changedYearOfCompletion(
      String year) = _ChangedYearOfCompletion;
  const factory UpdateAcademicInfoActorEvent.changedMonthOfEnroll(
      String month) = _ChangedMonthOfEnroll;
  const factory UpdateAcademicInfoActorEvent.changedMonthOfCompletion(
      String month) = _ChangedMonthOfCompletion;
  const factory UpdateAcademicInfoActorEvent.setInitialState(
          AcademicHistory academicHistory, List<String> listOfMajorSubject) =
      _SetInitialState;
  const factory UpdateAcademicInfoActorEvent.save() = _Save;
}
