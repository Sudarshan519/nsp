part of 'nea_payment_bloc.dart';

@freezed
class NeaPaymentState with _$NeaPaymentState {
  const factory NeaPaymentState({
    required String customerId,
    required String scNo,
    required String productId,
    required PaymentOffice selectedOffice,
    required List<PaymentOffice> offices,
    required bool isLoading,
    required bool paymentComplete,
    required Key key,
    required PaymentCustomerInfoModel? customerInfo,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _NeaPaymentState;

  factory NeaPaymentState.initial() => NeaPaymentState(
        customerId: '',
        scNo: '',
        productId: '',
        offices: [],
        selectedOffice: PaymentOffice(officeName: '', officeCode: ''),
        isLoading: false,
        paymentComplete: false,
        customerInfo: null,
        failureOrSuccessOption: none(),
        key: UniqueKey(),
      );
}
