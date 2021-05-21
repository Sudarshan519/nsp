part of 'upload_resume_image_bloc.dart';

@freezed
class UploadResumeImageState with _$UploadResumeImageState {
  const factory UploadResumeImageState({
    File? resumeProfileImage,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _UploadResumeImageState;
  factory UploadResumeImageState.initial() => UploadResumeImageState(
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
