part of 'upload_resume_image_bloc.dart';

@freezed
class UploadResumeImageEvent with _$UploadResumeImageEvent {
  const factory UploadResumeImageEvent.updateProfileImage(
      File image, String lang) = _UpdateProfileImage;
}
