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
    required List<CreditCardModel>? creditCards,
    required int? userId,
  }) : super(
          balance: balance,
          status: status,
          paymentMethods: paymentMethods,
          creditCards: creditCards,
          userId: userId,
        );

  factory LoadFundModel.fromJson(Map<String, dynamic> json) => LoadFundModel(
        status: json["status"] == null ? null : json["status"] as bool?,
        paymentMethods: json["payment_methods"] == null
            ? null
            : List<PaymentMethodsModel>.from(
                (json["payment_methods"] as Iterable).map((x) =>
                    PaymentMethodsModel.fromJson(x as Map<String, dynamic>))),
        balance: json["balance"] == null
            ? null
            : (json["balance"] is int?)
                ? double.parse("${json["balance"] as int? ?? 0}")
                : json["balance"] as double?,
        creditCards: json["credit_cards"] == null
            ? null
            : List<CreditCardModel>.from(
                (json["credit_cards"] as Iterable).map(
                  (x) => CreditCardModel.fromJson(x as Map<String, dynamic>),
                ),
              ),
        userId: json["user_id"] == null ? null : json["user_id"] as int?,
      );
}

class PaymentMethodsModel extends PaymentMethod {
  PaymentMethodsModel({
    required String? name,
    required String? type,
    required String? secretKey,
    required String? publicKey,
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
    required String? recordingUrl,
    required String? deliveryUrl,
    required int? balanceLimit,
    required int? upperLimit,
    required int? lowerLimit,
    required bool? isLive,
  }) : super(
          name: name,
          type: type,
          secretKey: secretKey,
          publicKey: publicKey,
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
          recordingUrl: recordingUrl,
          deliveryUrl: deliveryUrl,
          islive: isLive,
          balanceLimit: balanceLimit,
          upperLimit: upperLimit,
          lowerLimit: lowerLimit,
        );

  factory PaymentMethodsModel.fromJson(Map<String, dynamic> json) =>
      PaymentMethodsModel(
        name: json["name"] == null ? null : json["name"] as String?,
        type: json["type"] == null ? null : json["type"] as String?,
        secretKey:
            json["secret_key"] == null ? null : json["secret_key"] as String?,
        logo: json["logo"] == null ? null : json["logo"] as String?,
        publicKey:
            json["public_key"] == null ? '' : json["public_key"] as String?,
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
        recordingUrl: json["recording_url"] == null
            ? null
            : json["recording_url"] as String?,
        deliveryUrl: json["delivery_url"] == null
            ? null
            : json["delivery_url"] as String?,
        webRedirectUrl: json["web_redirect_url"] == null
            ? null
            : json["web_redirect_url"] as String?,
        bseUrl: json["bse_url"] == null ? null : json["bse_url"] as String?,
        merchantId:
            json["merchant_id"] == null ? null : json["merchant_id"] as String?,
        merchantSecret: json["merchant_secret"] == null
            ? null
            : json["merchant_secret"] as String?,
        isLive: json['isLive'] == null ? false : json['isLive'] as bool?,
        balanceLimit:
            json["balance_limit"] == null ? 0 : json['balance_limit'] as int?,
        upperLimit: json['txn_upper_limit'] as int?,
        lowerLimit: json['txn_lower_limit'] as int?,
      );
}

class CreditCardModel extends CreditCard {
  CreditCardModel({
    required int id,
    required String? name,
    required String? cardNumber,
  }) : super(
          id: id,
          name: name,
          cardNumber: cardNumber,
        );
  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      CreditCardModel(
        id: json["id"] as int,
        name: json["name"] == null ? null : json["name"] as String?,
        cardNumber:
            json["card_number"] == null ? null : json["card_number"] as String?,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "card_number": cardNumber,
      };
}
