part of 'top_up_balance_in_mobile_bloc.dart';

@freezed
class TopUpBalanceInMobileEvent with _$TopUpBalanceInMobileEvent {
  const factory TopUpBalanceInMobileEvent.changePhoneNumber(
      {required String number,
      required bool fromContactPicker}) = _ChangePhoneNumber;

  const factory TopUpBalanceInMobileEvent.changeAmount(String amount) =
      _ChangeAmount;
  const factory TopUpBalanceInMobileEvent.changeCoupon(String coupon) =
      _ChangeCoupon;

  const factory TopUpBalanceInMobileEvent.setDiscountpercentage(
      double percentage) = _SetDiscountpercentage;

  const factory TopUpBalanceInMobileEvent.setRewardPointFromCoupon(
      double point) = _SetRedeemPointFromCoupon;

  const factory TopUpBalanceInMobileEvent.changeconvertedJpyAmount(
      String amount) = _ChangeconvertedJpyAmount;

  const factory TopUpBalanceInMobileEvent.validate() = _Validate;
  const factory TopUpBalanceInMobileEvent.topup() = _Topup;

  const factory TopUpBalanceInMobileEvent.setPayData(UtilityPayment paydata) =
      _SetPayData;
}
