class LoadFund {
  LoadFund({
    required this.status,
    required this.paymentMethods,
    required this.balance,
  });

  final bool? status;
  final List<PaymentMethod>? paymentMethods;
  final String? balance;
}

class PaymentMethod {
  PaymentMethod({
    required this.name,
    required this.type,
    required this.secretKey,
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
    required this.bseUrl,
    required this.merchantId,
    required this.merchantSecret,
  });

  final String? name;
  final String? type;
  final String? secretKey;
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
  final String? bseUrl;
  final String? merchantId;
  final String? merchantSecret;
}
