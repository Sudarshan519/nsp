part of 'resume_watcher_bloc.dart';

@freezed
abstract class ResumeWatcherState with _$ResumeWatcherState {
  const factory ResumeWatcherState({
    @required PersonalInfo info,
    @required List<AcademicHistory> academics,
    @required List<WorkHistory> works,
    @required List<QualificationHistory> qualifications,
    @required bool isLoading,
  }) = _ResumeWatcherState;

  factory ResumeWatcherState.initial() => const ResumeWatcherState(
        info: PersonalInfo(),
        academics: [],
        works: [],
        qualifications: [],
        isLoading: true,
      );
}
