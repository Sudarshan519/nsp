part of 'verify_esewa_topup_bloc.dart';

@freezed
class VerifyEsewaTopupEvent with _$VerifyEsewaTopupEvent {
  const factory VerifyEsewaTopupEvent.verify({
    required String transactionId,
    required String amount,
    required String purpose,
  }) = _Verify;
}
