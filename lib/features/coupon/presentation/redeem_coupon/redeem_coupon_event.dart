part of 'redeem_coupon_bloc.dart';

@freezed
class RedeemCouponEvent with _$RedeemCouponEvent {
  const factory RedeemCouponEvent.changeCouponCode(String code) =
      _ChangeCouponCode;
  const factory RedeemCouponEvent.applyCoupon() = _ApplyCoupon;
  const factory RedeemCouponEvent.redeemCoupon() = _RedeemCoupon;
}
