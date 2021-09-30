part of 'khanepani_payment_bloc.dart';

@freezed
class KhanepaniPaymentState with _$KhanepaniPaymentState {
  const factory KhanepaniPaymentState({
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
  }) = _KhanepaniPaymentState;

  factory KhanepaniPaymentState.initial() => KhanepaniPaymentState(
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
