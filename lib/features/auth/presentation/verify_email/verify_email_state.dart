part of 'verify_email_bloc.dart';

@freezed
abstract class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState.initial() = _Initial;
  const factory VerifyEmailState.verified() = _Verified;
  const factory VerifyEmailState.codeSent() = _CodeSent;
  const factory VerifyEmailState.failure(ApiFailure failure) = _Failure;
  const factory VerifyEmailState.loading() = _Loading;
}
