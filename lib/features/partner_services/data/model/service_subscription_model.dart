import 'dart:convert';

import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';

ServiceSubscriptionModel serviceSubscriptionModelFromJson(String str) =>
    ServiceSubscriptionModel.fromJson(json.decode(str) as Map<String, dynamic>);

class ServiceSubscriptionModel extends ServiceSubscription {
  ServiceSubscriptionModel({
    required bool? status,
    required List<SubscriptionInvoiceModel>? invoice,
  }) : super(
          status: status,
          invoice: invoice,
        );

  factory ServiceSubscriptionModel.fromJson(Map<String, dynamic> json) =>
      ServiceSubscriptionModel(
        status: json["status"] == null ? null : json["status"] as bool?,
        invoice: json["invoices"] == null
            ? null
            : List<SubscriptionInvoiceModel>.from(
                (json["invoices"] as Iterable).map(
                  (x) => SubscriptionInvoiceModel.fromJson(
                      x as Map<String, dynamic>),
                ),
              ),
      );
}

class SubscriptionInvoiceModel extends SubscriptionInvoice {
  SubscriptionInvoiceModel({
    required String? insuredName,
    required String? planName,
    required String? invoiceNumber,
    required String? paymentType,
    required String? invoiceDate,
    required String? invoiceDueDate,
    required double? totalAmount,
    required double? amountReceived,
    required double? dueAmount,
  }) : super(
          insuredName: insuredName,
          planName: planName,
          invoiceNumber: invoiceNumber,
          paymentType: paymentType,
          invoiceDate: invoiceDate,
          invoiceDueDate: invoiceDueDate,
          totalAmount: totalAmount,
          amountReceived: amountReceived,
          dueAmount: dueAmount,
        );

  factory SubscriptionInvoiceModel.fromJson(Map<String, dynamic> json) =>
      SubscriptionInvoiceModel(
        insuredName: json["insured_name"] == null
            ? null
            : json["insured_name"] as String?,
        planName:
            json["plan_name"] == null ? null : json["plan_name"] as String?,
        invoiceNumber: json["invoice_number"] == null
            ? null
            : json["invoice_number"] as String?,
        paymentType: json["payment_type"] == null
            ? null
            : json["payment_type"] as String?,
        invoiceDate: json["invoice_date"] == null
            ? null
            : json["invoice_date"] as String?,
        invoiceDueDate: json["invoice_due_date"] as String?,
        totalAmount: json["total_amount"] == null
            ? null
            : json["total_amount"] is int
                ? (json["total_amount"] as int).toDouble()
                : json["total_amount"] as double?,
        amountReceived: json["amount_received"] == null
            ? null
            : json["amount_received"] is int
                ? (json["amount_received"] as int).toDouble()
                : json["amount_received"] as double?,
        dueAmount: json["due_amount"] == null
            ? null
            : json["due_amount"] is int
                ? (json["due_amount"] as int).toDouble()
                : json["due_amount"] as double?,
      );

  Map<String, dynamic> toJson() => {
        "plan_name": planName,
        "insured_name": insuredName,
        "invoice_number": invoiceNumber,
        "payment_type": paymentType,
        "invoice_date": invoiceDate,
        "invoice_due_date": invoiceDueDate,
        "total_amount": totalAmount,
        "amount_received": amountReceived,
        "due_amount": dueAmount,
      };
}

extension SubscriptionInvoiceExt on SubscriptionInvoice {
  SubscriptionInvoiceModel toSubscriptionInvoiceModel() =>
      SubscriptionInvoiceModel(
        insuredName: insuredName,
        planName: planName,
        invoiceNumber: invoiceNumber,
        paymentType: paymentType,
        invoiceDate: invoiceDate,
        invoiceDueDate: invoiceDueDate,
        totalAmount: totalAmount,
        amountReceived: amountReceived,
        dueAmount: dueAmount,
      );
}
