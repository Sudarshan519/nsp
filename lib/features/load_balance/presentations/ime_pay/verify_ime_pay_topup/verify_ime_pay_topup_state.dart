part of 'verify_ime_pay_topup_bloc.dart';

@freezed
class VerifyImePayTopupState with _$VerifyImePayTopupState {
  const factory VerifyImePayTopupState.initial() = _Initial;
  const factory VerifyImePayTopupState.loading() = _Loading;
  const factory VerifyImePayTopupState.success() = _Success;
  const factory VerifyImePayTopupState.failure(ApiFailure failure) = _Failure;
}
