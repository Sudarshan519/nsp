part of 'verify_khalti_topup_bloc.dart';

@freezed
class VerifyKhaltiTopupEvent with _$VerifyKhaltiTopupEvent {
  const factory VerifyKhaltiTopupEvent.verify({
    required String transactionId,
    required String amount,
    required String purpose,
  }) = _Verify;
}
