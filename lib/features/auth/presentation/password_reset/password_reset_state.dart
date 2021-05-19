part of 'password_reset_bloc.dart';

@freezed
class PasswordResetState with _$PasswordResetState {
  const factory PasswordResetState.showFetchCodePage() = ShowFetchCodePage;
  const factory PasswordResetState.showPasswordResetPage() =
      ShowPasswordResetPage;
  const factory PasswordResetState.loading() = Loading;
  const factory PasswordResetState.failure(ApiFailure failure) = Failure;
  const factory PasswordResetState.successfulPasswordReset() =
      SuccessfulPasswordReset;
}
