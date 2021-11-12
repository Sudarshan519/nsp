part of 'mero_tv_bloc.dart';

@freezed
class MeroTvEvent with _$MeroTvEvent {
  const factory MeroTvEvent.started(String productId, String provider) =
      _Started;
  const factory MeroTvEvent.changeCustomerId(String customerId) = _CustomerID;
  const factory MeroTvEvent.changeAmount(String amount) = _ChangeAmount;
  const factory MeroTvEvent.changePackage(Package? package) = _ChangePackage;
  const factory MeroTvEvent.payBill() = _PayBill;
  const factory MeroTvEvent.enquire() = _Enquire;
}
