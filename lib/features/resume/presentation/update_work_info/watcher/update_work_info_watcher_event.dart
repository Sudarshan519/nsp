part of 'update_work_info_watcher_bloc.dart';

@freezed
abstract class UpdateWorkInfoWatcherEvent with _$UpdateWorkInfoWatcherEvent {
  const factory UpdateWorkInfoWatcherEvent.changeToLoadingState() =
      _ChangeToLoadingState;
  const factory UpdateWorkInfoWatcherEvent.setWorkHistory(
      WorkHistory workHistory) = _SetWorkHistory;
}
