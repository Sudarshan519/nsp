part of 'khanepani_payment_bloc.dart';

@freezed
class KhanepaniPaymentEvent with _$KhanepaniPaymentEvent {
  const factory KhanepaniPaymentEvent.started(
      List<PaymentOffice> offices, String productId) = _Started;
  const factory KhanepaniPaymentEvent.changeOffice(PaymentOffice office) =
      _ChangeOffice;
  const factory KhanepaniPaymentEvent.customerID(String customerId) =
      _CustomerID;
  const factory KhanepaniPaymentEvent.changeScNum(String changeScNum) =
      _ChangeScNum;
  const factory KhanepaniPaymentEvent.resetCustomerInfo() = _ResetCustomerInfo;
  const factory KhanepaniPaymentEvent.enquire() = _Enquire;
  const factory KhanepaniPaymentEvent.payBill() = _PayBill;
}
