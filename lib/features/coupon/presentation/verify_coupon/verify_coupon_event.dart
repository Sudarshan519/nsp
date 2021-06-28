part of 'verify_coupon_bloc.dart';

@freezed
class VerifyCouponEvent with _$VerifyCouponEvent {
  const factory VerifyCouponEvent.changeCouponCode(String code) = _ChangeCouponCode;
  const factory VerifyCouponEvent.verifyCoupon() = _VerifyCoupon;
  const factory VerifyCouponEvent.setInitialState() = _SetInitialState;
}
