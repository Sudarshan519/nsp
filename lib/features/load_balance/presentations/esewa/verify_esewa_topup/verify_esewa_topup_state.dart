part of 'verify_esewa_topup_bloc.dart';

@freezed
class VerifyEsewaTopupState with _$VerifyEsewaTopupState {
  const factory VerifyEsewaTopupState.initial() = _Initial;
  const factory VerifyEsewaTopupState.loading() = _Loading;
  const factory VerifyEsewaTopupState.success() = _Success;
  const factory VerifyEsewaTopupState.failure(ApiFailure failure) = _Failure;
}
