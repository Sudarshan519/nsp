part of 'top_up_balance_in_mobile_bloc.dart';

@freezed
class TopUpBalanceInMobileState with _$TopUpBalanceInMobileState {
  const factory TopUpBalanceInMobileState({
    required UtilityPayment paydata,
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
    required bool isNumberValid,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _TopUpBalanceInMobileState;

  factory TopUpBalanceInMobileState.initial() => TopUpBalanceInMobileState(
        key: UniqueKey(),
        paydata: UtilityPayment(id: -1, name: ''),
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
        isNumberValid: false,
        failureOrSuccessOption: none(),
      );
}
