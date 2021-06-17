part of 'purchase_package_bloc.dart';

@freezed
class PurchasePackageEvent with _$PurchasePackageEvent {
  const factory PurchasePackageEvent.purchase(PurchasePackageParams params) =
      _Purchase;
}
