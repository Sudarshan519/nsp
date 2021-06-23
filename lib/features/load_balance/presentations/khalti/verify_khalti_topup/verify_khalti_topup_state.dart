part of 'verify_khalti_topup_bloc.dart';

@freezed
class VerifyKhaltiTopupState with _$VerifyKhaltiTopupState {
  const factory VerifyKhaltiTopupState.initial() = _Initial;
  const factory VerifyKhaltiTopupState.loading() = _Loading;
  const factory VerifyKhaltiTopupState.success() = _Success;
  const factory VerifyKhaltiTopupState.failure(ApiFailure failure) = _Failure;
}
