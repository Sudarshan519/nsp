part of 'topup_via_stripe_bloc.dart';

@freezed
class TopupViaStripeEvent with _$TopupViaStripeEvent {
  const factory TopupViaStripeEvent.changeName(String name) = _ChangeName;
  const factory TopupViaStripeEvent.changeCardNumber(String number) =
      _ChangeCardNumber;
  const factory TopupViaStripeEvent.changeCvc(String cvc) = _ChangeCvc;
  const factory TopupViaStripeEvent.changeExpYear(String year) = _ChangeExpYear;
  const factory TopupViaStripeEvent.changeAmount(String amount) = _ChangeAmount;
  const factory TopupViaStripeEvent.changeAmountFromOptions(String amount) =
      _ChangeAmountFromOptions;
  const factory TopupViaStripeEvent.changePurpose(String purpose) =
      _ChangePurpose;
  const factory TopupViaStripeEvent.changeSaveCard() = _ChangeSaveCard;
  // ignore: avoid_positional_boolean_parameters
  const factory TopupViaStripeEvent.topup(bool isSavedCard) = _TopUp;
}
