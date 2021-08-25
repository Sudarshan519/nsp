part of 'verify_prabhu_pay_topup_bloc.dart';

@freezed
class VerifyPrabhuPayTopupEvent with _$VerifyPrabhuPayTopupEvent {
  const factory VerifyPrabhuPayTopupEvent.verify({
    required String referenceId,
    required String amount,
    required String purpose,
    required String productName,
    required String returnUrl,
  }) = _Verify;
}
