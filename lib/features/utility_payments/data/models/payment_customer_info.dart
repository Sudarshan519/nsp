import 'dart:convert';

import 'package:wallet_app/features/utility_payments/domain/entities/payment_customer_info.dart';

PaymentCustomerInfoModel paymentCustomerInfoFromJson(String str) =>
    PaymentCustomerInfoModel.fromJson(
        json.decode(str)['data'] as Map<String, dynamic>);

class PaymentCustomerInfoModel extends PaymentCustomerInfo {
  PaymentCustomerInfoModel({
    required String billNumber,
    required String dueDate,
    required String amount,
    required String refstan,
    required String customerName,
    required String date,
    required String account,
    required String officeCode,
    required String customerId,
    required String productId,
    required String mobileNumber,
    required List<Package> packages,
    required int? sessionId,
  }) : super(
          billNumber: billNumber,
          dueDate: dueDate,
          amount: amount,
          refstan: refstan,
          customerName: customerName,
          date: date,
          account: account,
          officeCode: officeCode,
          customerId: customerId,
          productId: productId,
          mobileNumber: mobileNumber,
          packages: packages,
          sessionId: sessionId,
        );

  factory PaymentCustomerInfoModel.fromJson(Map<String, dynamic> json) =>
      PaymentCustomerInfoModel(
          billNumber: json["bill_number"] as String? ?? '',
          dueDate: json["due_date"] as String? ?? '',
          amount: json["amount"].toString(),
          refstan: json["refstan"] as String? ?? '',
          customerName: json["customer_name"] as String? ?? '',
          date: json["date"] as String? ?? '',
          account: json["account"] as String? ?? '',
          officeCode: json["office_code"] as String? ?? '',
          customerId: json["customer_id"] as String? ?? '',
          productId: json["product_id"] as String? ?? '',
          mobileNumber: json["mobile_number"] as String? ?? '',
          sessionId: json["session_id"] as int? ?? 0,
          packages: json["packages"] == null
              ? []
              : List<Package>.from((json["packages"] as Iterable)
                  .map((x) => Package.fromJson(x as Map<String, dynamic>))));

  Map<String, dynamic> toJson() => {
        "bill_number": billNumber,
        "due_date": dueDate,
        "amount": amount,
        "refstan": refstan,
        "customer_name": customerName,
        "date": date,
        "account": account,
        "office_code": officeCode,
        "customer_id": customerId,
        "product_id": productId,
        'mobile_number': mobileNumber,
        'session_id': sessionId,
      };
}
