import 'package:wallet_app/utils/currency_formater.dart';

class UserBalance {
  UserBalance({
    required this.status,
    required this.balance,
    required this.point,
  });

  final bool? status;
  final double? balance;
  final double? point;

  String get formattedCurrency {
    if (balance != null) {
      return currencyFormatter(value: balance!);
    }

    return 'XX.XX';
  }
}
