part of 'verify_phone_bloc.dart';

@freezed
class VerifyPhoneEvent with _$VerifyPhoneEvent {
  const factory VerifyPhoneEvent.changePin(String pin) = _ChangePin;
  const factory VerifyPhoneEvent.verify(String phone) = _Verify;
  const factory VerifyPhoneEvent.resend(String phone) = _Resend;
}
