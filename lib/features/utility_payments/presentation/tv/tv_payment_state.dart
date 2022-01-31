part of 'tv_payment_bloc.dart';

@freezed
class TvPaymentState with _$TvPaymentState {
  const factory TvPaymentState({
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
  }) = _TvPaymentState;

  factory TvPaymentState.initial() => TvPaymentState(
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
