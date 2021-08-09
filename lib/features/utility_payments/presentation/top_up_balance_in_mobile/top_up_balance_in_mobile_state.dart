part of 'top_up_balance_in_mobile_bloc.dart';

@freezed
class TopUpBalanceInMobileState with _$TopUpBalanceInMobileState {
  const factory TopUpBalanceInMobileState({
    required Key key,
    required String number,
    required String productId,
    required String type,
    required String amount,
    required String convertedJpyAmount,
    required String coupon,
    required double cashbackPercentage,
    required double discountPercentage,
    required double rewardPoint,
    required double rewardPointFromCoupon,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _TopUpBalanceInMobileState;

  factory TopUpBalanceInMobileState.initial() => TopUpBalanceInMobileState(
        key: UniqueKey(),
        productId: '',
        number: '',
        type: '',
        amount: '',
        convertedJpyAmount: '0.0',
        coupon: '',
        cashbackPercentage: 0,
        discountPercentage: 0,
        rewardPoint: 0,
        rewardPointFromCoupon: 0,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
