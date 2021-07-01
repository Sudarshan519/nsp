part of 'verify_ime_pay_topup_bloc.dart';

@freezed
class VerifyImePayTopupEvent with _$VerifyImePayTopupEvent {
  const factory VerifyImePayTopupEvent.verify({
    required String refId,
    required String amount,
    required String purpose,
    required String tokenId,
  }) = _Verify;
}
