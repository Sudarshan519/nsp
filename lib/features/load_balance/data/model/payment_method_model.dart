// To parse this JSON data, do
import 'dart:convert';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';

LoadFundModel paymentMethodsModelFromJson(String str) =>
    LoadFundModel.fromJson(json.decode(str) as Map<String, dynamic>);

class LoadFundModel extends LoadFund {
  LoadFundModel({
    required bool? status,
    required List<PaymentMethod>? paymentMethods,
    required double? balance,
  }) : super(
          balance: balance,
          status: status,
          paymentMethods: paymentMethods,
        );

  factory LoadFundModel.fromJson(Map<String, dynamic> json) => LoadFundModel(
        status: json["status"] == null ? null : json["status"] as bool?,
        paymentMethods: json["payment_methods"] == null
            ? null
            : List<PaymentMethodsModel>.from(
                (json["payment_methods"] as Iterable).map((x) =>
                    PaymentMethodsModel.fromJson(x as Map<String, dynamic>))),
        balance: json["balance"] == null ? null : json["balance"] as double?,
      );
}

class PaymentMethodsModel extends PaymentMethod {
  PaymentMethodsModel({
    required String? name,
    required String? type,
    required String? secretKey,
    required String? logo,
    required bool? isActive,
    required String? baseUrl,
    required String? module,
    required String? merchantCode,
    required String? username,
    required String? password,
    required String? callbackUrl,
    required String? paymentUrl,
    required String? webRedirectUrl,
    required String? bseUrl,
    required String? merchantId,
    required String? merchantSecret,
  }) : super(
          name: name,
          type: type,
          secretKey: secretKey,
          logo: logo,
          isActive: isActive,
          baseUrl: baseUrl,
          module: module,
          merchantCode: merchantCode,
          username: username,
          password: password,
          callbackUrl: callbackUrl,
          paymentUrl: paymentUrl,
          webRedirectUrl: webRedirectUrl,
          bseUrl: bseUrl,
          merchantId: merchantId,
          merchantSecret: merchantSecret,
        );

  factory PaymentMethodsModel.fromJson(Map<String, dynamic> json) =>
      PaymentMethodsModel(
        name: json["name"] == null ? null : json["name"] as String?,
        type: json["type"] == null ? null : json["type"] as String?,
        secretKey:
            json["secret_key"] == null ? null : json["secret_key"] as String?,
        logo: json["logo"] == null ? null : json["logo"] as String?,
        isActive: json["is_active"] == null ? null : json["is_active"] as bool?,
        baseUrl: json["base_url"] == null ? null : json["base_url"] as String?,
        module: json["module"] == null ? null : json["module"] as String?,
        merchantCode: json["merchant_code"] == null
            ? null
            : json["merchant_code"] as String?,
        username: json["username"] == null ? null : json["username"] as String?,
        password: json["password"] == null ? null : json["password"] as String?,
        callbackUrl: json["callback_url"] == null
            ? null
            : json["callback_url"] as String?,
        paymentUrl:
            json["payment_url"] == null ? null : json["payment_url"] as String?,
        webRedirectUrl: json["web_redirect_url"] == null
            ? null
            : json["web_redirect_url"] as String?,
        bseUrl: json["bse_url"] == null ? null : json["bse_url"] as String?,
        merchantId:
            json["merchant_id"] == null ? null : json["merchant_id"] as String?,
        merchantSecret: json["merchant_secret"] == null
            ? null
            : json["merchant_secret"] as String?,
      );
}
