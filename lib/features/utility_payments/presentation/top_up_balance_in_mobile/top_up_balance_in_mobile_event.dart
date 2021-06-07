part of 'top_up_balance_in_mobile_bloc.dart';

@freezed
class TopUpBalanceInMobileEvent with _$TopUpBalanceInMobileEvent {
  const factory TopUpBalanceInMobileEvent.changePhoneNumber(String number) =
      _ChangePhoneNumber;
  const factory TopUpBalanceInMobileEvent.changeAmount(String amount) =
      _ChangeAmount;
  const factory TopUpBalanceInMobileEvent.topup() = _Topup;
}
