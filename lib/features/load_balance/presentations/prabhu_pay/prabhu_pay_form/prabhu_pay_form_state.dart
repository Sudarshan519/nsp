part of 'prabhu_pay_form_cubit.dart';

@freezed
class PrabhuPayFormState with _$PrabhuPayFormState {
  const factory PrabhuPayFormState({
    required Key key,
    required String amount,
    required String purpose,
  }) = _PrabhuPayFormState;

  factory PrabhuPayFormState.initial() => PrabhuPayFormState(
        key: UniqueKey(),
        amount: '',
        purpose: '',
      );
}
