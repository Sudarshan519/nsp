part of 'resume_watcher_bloc.dart';

@freezed
class ResumeWatcherState with _$ResumeWatcherState {
  const factory ResumeWatcherState({
    required String language,
    required PersonalInfo info,
    required List<AcademicHistory> academics,
    required List<WorkHistory> works,
    required List<QualificationHistory> qualifications,
    required ResumeOptions options,
    required List<String> prefectures,
    required List<String> provinces,
    required bool hasResume,
    required bool isLoading,
    required Option<ApiFailure> failureOrSuccessOption,
  }) = _ResumeWatcherState;

  factory ResumeWatcherState.initial() => ResumeWatcherState(
        language: 'en',
        info: PersonalInfo(),
        academics: [],
        works: [],
        qualifications: [],
        options: const ResumeOptions(),
        prefectures: [],
        provinces: [],
        hasResume: false,
        isLoading: true,
        failureOrSuccessOption: none(),
      );
}
