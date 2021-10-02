part of 'app_update_bloc.dart';

@freezed
class AppUpdateEvent with _$AppUpdateEvent {
  const factory AppUpdateEvent.checkForUpdates() = _CheckForUpdates;
}
