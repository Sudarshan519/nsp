part of 'isp_payment_bloc.dart';

@freezed
class ISPPaymentEvent with _$ISPPaymentEvent {
  const factory ISPPaymentEvent.started(
    String productId,
    String provider,
  ) = _Started;
  const factory ISPPaymentEvent.changeAccountNumber(String accountNumber) =
      _ChangeAccountNumber;
  const factory ISPPaymentEvent.changeCustomerId(String customerId) =
      _ChangeCustomerId;

  const factory ISPPaymentEvent.changeAmount(String amount) = _ChangeAmount;
  const factory ISPPaymentEvent.changePhone(String phone) = _ChangePhone;

  const factory ISPPaymentEvent.changePackage(Package? package) =
      _ChangePackage;
  const factory ISPPaymentEvent.payBill() = _PayBill;
  const factory ISPPaymentEvent.enquire() = _Enquire;
}
