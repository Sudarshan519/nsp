part of 'resume_watcher_bloc.dart';

@freezed
abstract class ResumeWatcherEvent with _$ResumeWatcherEvent {
  const factory ResumeWatcherEvent.loading() = _Loading;
  const factory ResumeWatcherEvent.setResumeData(ResumeData data) =
      _SetResumeData;
}
