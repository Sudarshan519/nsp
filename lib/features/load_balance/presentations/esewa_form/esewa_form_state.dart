part of 'esewa_form_cubit.dart';

@freezed
class EsewaFormState with _$EsewaFormState {
  const factory EsewaFormState({
    required Key key,
    required String amount,
    required String purpose,
  }) = _EsewaFormState;

  factory EsewaFormState.initial() => EsewaFormState(
        key: UniqueKey(),
        amount: '',
        purpose: '',
      );
}
