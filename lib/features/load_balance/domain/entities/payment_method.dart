import 'package:wallet_app/utils/currency_formater.dart';

class LoadFund {
  LoadFund({
    required this.status,
    required this.paymentMethods,
    required this.balance,
    required this.creditCards,
  });

  final bool? status;
  final List<PaymentMethod>? paymentMethods;
  final double? balance;
  final List<CreditCard>? creditCards;

  String get formattedBalance => currencyFormatter(value: balance ?? 0.0);
}

class PaymentMethod {
  PaymentMethod({
    required this.name,
    required this.type,
    required this.secretKey,
    required this.publicKey,
    required this.logo,
    required this.isActive,
    required this.baseUrl,
    required this.module,
    required this.merchantCode,
    required this.username,
    required this.password,
    required this.callbackUrl,
    required this.paymentUrl,
    required this.webRedirectUrl,
    required this.recordingUrl,
    required this.deliveryUrl,
    required this.bseUrl,
    required this.merchantId,
    required this.merchantSecret,
    required this.balanceLimit,
    required this.islive,
  });

  final String? name;
  final String? type;
  final String? secretKey;
  final String? publicKey;
  final String? logo;
  final bool? isActive;
  final String? baseUrl;
  final String? module;
  final String? merchantCode;
  final String? username;
  final String? password;
  final String? callbackUrl;
  final String? paymentUrl;
  final String? webRedirectUrl;
  final String? recordingUrl;
  final String? deliveryUrl;
  final String? bseUrl;
  final String? merchantId;
  final String? merchantSecret;
  final int? balanceLimit;
  final bool islive;
}

class CreditCard {
  CreditCard({
    required this.name,
    required this.cardNumber,
    required this.id,
  });

  final int id;
  final String? name;
  final String? cardNumber;
}
