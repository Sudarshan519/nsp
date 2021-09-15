part of 'topup_via_stripe_bloc.dart';

@freezed
class TopupViaStripeState with _$TopupViaStripeState {
  const factory TopupViaStripeState({
    required Key key,
    required String name,
    required String cardNumber,
    required String cvc,
    required String expYear,
    required String amount,
    required String purpose,
    required bool saveCard,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _TopupViaStripeState;

  factory TopupViaStripeState.initial() => TopupViaStripeState(
        key: UniqueKey(),
        name: '',
        cardNumber: '',
        cvc: '',
        expYear: '',
        amount: '',
        purpose: '',
        saveCard: true,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
