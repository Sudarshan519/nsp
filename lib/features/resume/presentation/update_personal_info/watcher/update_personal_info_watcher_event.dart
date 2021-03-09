part of 'update_personal_info_watcher_bloc.dart';

@freezed
abstract class UpdatePersonalInfoWatcherEvent
    with _$UpdatePersonalInfoWatcherEvent {
  const factory UpdatePersonalInfoWatcherEvent.changeToLoadingState() =
      _ChangeToLoadingState;
  const factory UpdatePersonalInfoWatcherEvent.setPersonalInfo(
      PersonalInfo info) = _SetPersonalInfo;
}
