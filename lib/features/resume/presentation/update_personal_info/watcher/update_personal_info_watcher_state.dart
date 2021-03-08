part of 'update_personal_info_watcher_bloc.dart';

@freezed
abstract class UpdatePersonalInfoWatcherState
    with _$UpdatePersonalInfoWatcherState {
  const factory UpdatePersonalInfoWatcherState.loading() = _Loading;
  const factory UpdatePersonalInfoWatcherState.loaded(PersonalInfo info) =
      _Loaded;
}
