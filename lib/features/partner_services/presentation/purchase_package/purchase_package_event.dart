part of 'purchase_package_bloc.dart';

@freezed
class PurchasePackageEvent with _$PurchasePackageEvent {
  const factory PurchasePackageEvent.changeCustomerName(String name) =
      _ChangeCustomerName;
  const factory PurchasePackageEvent.changeCustomerId(String id) =
      _ChangeCustomerId;
  const factory PurchasePackageEvent.changeRemark(String remark) =
      _ChangeRemark;
  const factory PurchasePackageEvent.setInitialState(
      {required ServicePackage package,
      required double cashBackPercent,
      required double rewardPoint}) = _SetInitialState;
  const factory PurchasePackageEvent.changeCoupon(String coupon) =
      _ChangeCoupon;
  const factory PurchasePackageEvent.setCashbackpercentage(double percentage) =
      _SetCashbackpercentage;
  const factory PurchasePackageEvent.setDiscountpercentage(double percentage) =
      _SetDiscountpercentage;
  const factory PurchasePackageEvent.setRewardPoint(double point) =
      _SetRedeemPoint;
  const factory PurchasePackageEvent.setRewardPointFromCoupon(double point) =
      _SetRedeemPointFromCoupon;
  const factory PurchasePackageEvent.purchase() = _Purchase;
}
