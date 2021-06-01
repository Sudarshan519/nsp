part of 'topup_via_stripe_bloc.dart';

@freezed
class TopupViaStripeState with _$TopupViaStripeState {
  const factory TopupViaStripeState({
    required String name,
    required String cardNumber,
    required String cvc,
    required String expYear,
    required String amount,
    required bool saveCard,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _TopupViaStripeState;

  factory TopupViaStripeState.initial() => TopupViaStripeState(
        name: '',
        cardNumber: '',
        cvc: '',
        expYear: '',
        amount: '',
        saveCard: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
