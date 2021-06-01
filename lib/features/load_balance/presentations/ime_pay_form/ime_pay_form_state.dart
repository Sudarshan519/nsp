part of 'ime_pay_form_cubit.dart';

@freezed
class ImePayFormState with _$ImePayFormState {
  const factory ImePayFormState({
    required Key key,
    required String amount,
    required String purpose,
  }) = _ImePayFormState;

  factory ImePayFormState.initial() => ImePayFormState(
        key: UniqueKey(),
        amount: '',
        purpose: '',
      );
}
