part of 'mero_tv_bloc.dart';

@freezed
class MeroTvState with _$MeroTvState {
  const factory MeroTvState({
    required Key key,
    required String customerId,
    required String amount,
    required String productId,
    required String provider,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
    PaymentCustomerInfoModel? customerInfo,
    Package? selectedPackage,
    required bool isPaymentComplete,
  }) = _MeroTvState;

  factory MeroTvState.initial() => MeroTvState(
        customerId: '',
        isSubmitting: false,
        productId: '',
        amount: '',
        provider: '',
        failureOrSuccessOption: none(),
        key: UniqueKey(),
        isPaymentComplete: false,
      );
}
