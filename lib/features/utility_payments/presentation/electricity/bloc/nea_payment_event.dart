part of 'nea_payment_bloc.dart';

@freezed
class NeaPaymentEvent with _$NeaPaymentEvent {
  const factory NeaPaymentEvent.started(
      List<NEAOffice> offices, String productId) = _Started;
  const factory NeaPaymentEvent.changeOffice(NEAOffice office) = _ChangeOffice;
  const factory NeaPaymentEvent.customerID(String customerId) = _CustomerID;
  const factory NeaPaymentEvent.changeScNum(String changeScNum) = _ChangeScNum;
  const factory NeaPaymentEvent.resetCustomerInfo() = _ResetCustomerInfo;
  const factory NeaPaymentEvent.enquire() = _Enquire;
  const factory NeaPaymentEvent.payBill() = _PayBill;
}
