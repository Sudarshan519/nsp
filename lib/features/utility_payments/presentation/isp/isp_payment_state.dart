part of 'isp_payment_bloc.dart';

@freezed
class ISPPaymentState with _$ISPPaymentState {
  const factory ISPPaymentState({
    required Key key,
    required String customerId,
    required String amount,
    required String productId,
    required String provider,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
    PaymentCustomerInfoModel? customerInfo,
    Package? selectedPackage,
    required String phone,
    required bool isPaymentComplete,
  }) = _ISPPaymentState;

  factory ISPPaymentState.initial() => ISPPaymentState(
        customerId: '',
        isSubmitting: false,
        productId: '',
        amount: '',
        phone: '',
        provider: '',
        failureOrSuccessOption: none(),
        key: UniqueKey(),
        isPaymentComplete: false,
      );
}
