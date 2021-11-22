part of 'isp_payment_bloc.dart';

@freezed
class ISPPaymentState with _$ISPPaymentState {
  const factory ISPPaymentState({
    required Key key,
    required String accountNumber,
    required String amount,
    required String productId,
    required String provider,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
    required bool isPaymentComplete,
    PaymentCustomerInfoModel? customerInfo,
    Package? selectedPackage,
    String? phone,
    String? customerId,
  }) = _ISPPaymentState;

  factory ISPPaymentState.initial() => ISPPaymentState(
        accountNumber: '',
        isSubmitting: false,
        productId: '',
        amount: '',
        provider: '',
        failureOrSuccessOption: none(),
        key: UniqueKey(),
        isPaymentComplete: false,
      );
}
