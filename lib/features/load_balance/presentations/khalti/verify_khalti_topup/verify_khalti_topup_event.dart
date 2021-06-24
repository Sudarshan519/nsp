part of 'verify_khalti_topup_bloc.dart';

@freezed
class VerifyKhaltiTopupEvent with _$VerifyKhaltiTopupEvent {
  const factory VerifyKhaltiTopupEvent.verify(VerifyKhaltiTopupParams params) =
      _Verify;
}
