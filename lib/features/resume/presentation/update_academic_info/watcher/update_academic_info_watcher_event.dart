part of 'update_academic_info_watcher_bloc.dart';

@freezed
abstract class UpdateAcademicInfoWatcherEvent
    with _$UpdateAcademicInfoWatcherEvent {
  const factory UpdateAcademicInfoWatcherEvent.changeToLoadingState() =
      _ChangeToLoadingState;
  const factory UpdateAcademicInfoWatcherEvent.setAcademicHistory(
      AcademicHistory academicHistory) = _SetAcademicHistory;
}
