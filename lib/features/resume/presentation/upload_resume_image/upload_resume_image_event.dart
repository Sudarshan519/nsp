part of 'upload_resume_image_bloc.dart';

@freezed
abstract class UploadResumeImageEvent with _$UploadResumeImageEvent {
  const factory UploadResumeImageEvent.updateProfileImage(File image) =
      _UpdateProfileImage;
}
