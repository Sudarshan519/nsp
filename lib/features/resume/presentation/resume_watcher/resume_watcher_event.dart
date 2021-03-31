part of 'resume_watcher_bloc.dart';

@freezed
abstract class ResumeWatcherEvent with _$ResumeWatcherEvent {
  const factory ResumeWatcherEvent.getResumeData() = _GetResumeData;
  const factory ResumeWatcherEvent.setResumeData() = _SetResumeData;
  const factory ResumeWatcherEvent.changeLanguage(String language) =
      _ChangeLanguage;
}
