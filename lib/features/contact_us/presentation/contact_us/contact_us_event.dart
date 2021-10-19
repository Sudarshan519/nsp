part of 'contact_us_bloc.dart';

@freezed
class ContactUsEvent with _$ContactUsEvent {
  const factory ContactUsEvent.setInital() = _SetInital;
  const factory ContactUsEvent.changeName(String name) = _ChangeName;
  const factory ContactUsEvent.changeEmail(String email) = _ChangeEmail;
  const factory ContactUsEvent.changeMessage(String message) = _ChangeMessage;
  const factory ContactUsEvent.contactUs() = _ContactUs;
}
