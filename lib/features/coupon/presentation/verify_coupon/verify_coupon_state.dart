part of 'verify_coupon_bloc.dart';

@freezed
class VerifyCouponState with _$VerifyCouponState {
  const factory VerifyCouponState({
    required String couponCode,
    required String productType,
    required int productId,
    required bool isSubmitting,
    required Option<Either<ApiFailure, CouponCode>> failureOrSuccess,
  }) = _VerifyCouponState;

  factory VerifyCouponState.initial() => VerifyCouponState(
        couponCode: '',
        productType: '',
        productId: 0,
        isSubmitting: false,
        failureOrSuccess: none(),
      );
}
