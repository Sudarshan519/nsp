part of 'purchase_package_bloc.dart';

@freezed
class PurchasePackageState with _$PurchasePackageState {
  const factory PurchasePackageState.initial() = _Initial;
  const factory PurchasePackageState.loading() = _Loading;

  const factory PurchasePackageState.loaded(dynamic data) = _Loaded;
  const factory PurchasePackageState.failure(ApiFailure failure) = _Failure;
}
