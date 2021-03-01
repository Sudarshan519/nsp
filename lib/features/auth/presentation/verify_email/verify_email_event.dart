part of 'verify_email_bloc.dart';

@freezed
abstract class VerifyEmailEvent with _$VerifyEmailEvent {
  const factory VerifyEmailEvent.changePin(String pin) = _ChangePin;
  const factory VerifyEmailEvent.verify(String email) = _Verify;
  const factory VerifyEmailEvent.resend(String email) = _Resend;
}
