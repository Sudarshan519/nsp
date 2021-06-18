part of 'purchase_package_bloc.dart';

@freezed
class PurchasePackageState with _$PurchasePackageState {
  const factory PurchasePackageState({
    required Key key,
    required String customerId,
    required int packageId,
    required int serviceId,
    required String packageName,
    required double amount,
    required String remark,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _PurchasePackageState;

  factory PurchasePackageState.initial() => PurchasePackageState(
        key: UniqueKey(),
        customerId: '',
        packageId: 0,
        serviceId: 0,
        packageName: '',
        amount: 0.0,
        remark: '',
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
