part of 'verify_ime_pay_topup_bloc.dart';

@freezed
class VerifyImePayTopupEvent with _$VerifyImePayTopupEvent {
  const factory VerifyImePayTopupEvent.verify({
    required String transactionId,
    required String amount,
    required String purpose,
  }) = _Verify;
}
