part of 'resume_watcher_bloc.dart';

@freezed
abstract class ResumeWatcherState with _$ResumeWatcherState {
  const factory ResumeWatcherState({
    @required String language,
    @required PersonalInfo info,
    @required List<AcademicHistory> academics,
    @required List<WorkHistory> works,
    @required List<QualificationHistory> qualifications,
    @required ResumeOptions options,
    @required bool isLoading,
    @required Option<ApiFailure> failureOrSuccessOption,
  }) = _ResumeWatcherState;

  factory ResumeWatcherState.initial() => ResumeWatcherState(
        language: 'en',
        info: const PersonalInfo(),
        academics: [],
        works: [],
        qualifications: [],
        options: const ResumeOptions(),
        isLoading: true,
        failureOrSuccessOption: none(),
      );
}
