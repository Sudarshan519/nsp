part of 'update_work_info_watcher_bloc.dart';

@freezed
abstract class UpdateWorkInfoWatcherState with _$UpdateWorkInfoWatcherState {
  const factory UpdateWorkInfoWatcherState.loading() = _Loading;
  const factory UpdateWorkInfoWatcherState.loaded(WorkHistory info) = _Loaded;
}
