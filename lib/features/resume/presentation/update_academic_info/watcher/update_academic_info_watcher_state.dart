part of 'update_academic_info_watcher_bloc.dart';

@freezed
abstract class UpdateAcademicInfoWatcherState
    with _$UpdateAcademicInfoWatcherState {
  const factory UpdateAcademicInfoWatcherState.loading() = _Loading;
  const factory UpdateAcademicInfoWatcherState.loaded(AcademicHistory info) =
      _Loaded;
}
