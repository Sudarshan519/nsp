part of 'purchase_package_bloc.dart';

@freezed
class PurchasePackageState with _$PurchasePackageState {
  const factory PurchasePackageState({
    required Key key,
    required String customerName,
    required String customerId,
    required int packageId,
    required int serviceId,
    required String packageName,
    required double amount,
    required String remark,
    required String coupon,
    required double cashbackPercentage,
    required double discountPercentage,
    required double rewardPoint,
    required double rewardPointFromCoupon,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _PurchasePackageState;

  factory PurchasePackageState.initial() => PurchasePackageState(
        key: UniqueKey(),
        customerName: '',
        customerId: '',
        packageId: 0,
        serviceId: 0,
        packageName: '',
        amount: 0.0,
        remark: '',
        coupon: '',
        cashbackPercentage: 0,
        discountPercentage: 0,
        rewardPoint: 0,
        rewardPointFromCoupon: 0,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
