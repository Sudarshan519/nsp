part of 'sim_tv_bloc.dart';

@freezed
class SimTvEvent with _$SimTvEvent {
  const factory SimTvEvent.started(String productId) = _Started;
  const factory SimTvEvent.changeCustomerId(String customerId) = _CustomerID;
  const factory SimTvEvent.changeAmount(String amount) = _ChangeAmount;
  const factory SimTvEvent.payBill() = _PayBill;
}
