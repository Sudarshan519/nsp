part of 'verify_prabhu_pay_topup_bloc.dart';

@freezed
class VerifyPrabhuPayTopupState with _$VerifyPrabhuPayTopupState {
  const factory VerifyPrabhuPayTopupState.initial() = _Initial;
  const factory VerifyPrabhuPayTopupState.loading() = _Loading;
  const factory VerifyPrabhuPayTopupState.success(String url) = _Success;
  const factory VerifyPrabhuPayTopupState.failure(ApiFailure failure) =
      _Failure;
}
