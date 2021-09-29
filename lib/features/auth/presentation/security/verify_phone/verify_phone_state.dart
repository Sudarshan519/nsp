part of 'verify_phone_bloc.dart';

@freezed
class VerifyPhoneState with _$VerifyPhoneState {
  const factory VerifyPhoneState.initial() = _Initial;
  const factory VerifyPhoneState.verified() = _Verified;
  const factory VerifyPhoneState.codeSent() = _CodeSent;
  const factory VerifyPhoneState.failure(ApiFailure failure) = _Failure;
  const factory VerifyPhoneState.loading() = _Loading;
}
