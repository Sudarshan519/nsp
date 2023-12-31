part of 'redeem_coupon_bloc.dart';

@freezed
class RedeemCouponState with _$RedeemCouponState {
  const factory RedeemCouponState({
    required Key key,
    required String couponCode,
    required bool isSubmitting,
    required CouponCode? coupon,
    required Option<Either<ApiFailure, Unit>> failureOrSuccess,
  }) = _VerifyCouponState;

  factory RedeemCouponState.initial() => RedeemCouponState(
        key: UniqueKey(),
        couponCode: '',
        isSubmitting: false,
        coupon: null,
        failureOrSuccess: none(),
      );
}
