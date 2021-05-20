part of 'password_reset_bloc.dart';

@freezed
class PasswordResetEvent with _$PasswordResetEvent {
  const factory PasswordResetEvent.resetPassword({
    required String email,
    required String code,
    required String password,
    required String verificationPassword,
  }) = ResetPassword;
  const factory PasswordResetEvent.getResetCode(String email) = GetResetCode;
}
