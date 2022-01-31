part of 'tv_payment_bloc.dart';

@freezed
class TvPaymentEvent with _$TvPaymentEvent {
  const factory TvPaymentEvent.started(String productId, String provider) =
      _Started;
  const factory TvPaymentEvent.changeCustomerId(String customerId) =
      _CustomerID;
  const factory TvPaymentEvent.changeAmount(String amount) = _ChangeAmount;
  const factory TvPaymentEvent.changePackage(Package? package) = _ChangePackage;
  const factory TvPaymentEvent.payBill() = _PayBill;
  const factory TvPaymentEvent.enquire() = _Enquire;
}
