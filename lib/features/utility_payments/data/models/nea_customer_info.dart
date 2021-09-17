import 'dart:convert';

import 'package:wallet_app/features/utility_payments/domain/entities/nea_customer_info.dart';

NeaCustomerInfoModel neaCustomerInfoFromJson(String str) =>
    NeaCustomerInfoModel.fromJson(
        json.decode(str)['data'] as Map<String, dynamic>);

class NeaCustomerInfoModel extends NeaCustomerInfo {
  NeaCustomerInfoModel({
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
        );

  factory NeaCustomerInfoModel.fromJson(Map<String, dynamic> json) =>
      NeaCustomerInfoModel(
        billNumber: json["bill_number"] as String? ?? '',
        dueDate: json["due_date"] as String? ?? '',
        amount: json["amount"] as String? ?? '',
        refstan: json["refstan"] as String? ?? '',
        customerName: json["customer_name"] as String? ?? '',
        date: json["date"] as String? ?? '',
        account: json["account"] as String? ?? '',
        officeCode: json["office_code"] as String? ?? '',
        customerId: json["customer_id"] as String? ?? '',
        productId: json["product_id"] as String? ?? '',
      );

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
      };
}
