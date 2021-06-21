part of 'khalti_form_cubit.dart';

@freezed
abstract class KhaltiFormState with _$KhaltiFormState {
  const factory KhaltiFormState({
    required Key key,
    required String amount,
    required String purpose,
  }) = _KhaltiFormState;

  factory KhaltiFormState.initial() => KhaltiFormState(
        key: UniqueKey(),
        amount: '',
        purpose: '',
      );
}
