part of 'purchase_package_bloc.dart';

@freezed
class PurchasePackageEvent with _$PurchasePackageEvent {
  const factory PurchasePackageEvent.changeCustomerId(String id) =
      _ChangeCustomerId;
  const factory PurchasePackageEvent.changeRemark(String remark) =
      _ChangeRemark;
  const factory PurchasePackageEvent.setInitialState(ServicePackage package) =
      _SetInitialState;
  const factory PurchasePackageEvent.purchase() = _Purchase;
}
