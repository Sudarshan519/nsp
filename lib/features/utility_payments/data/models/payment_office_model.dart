import 'package:wallet_app/features/utility_payments/domain/entities/payment_office.dart';

class PaymentOfficeModel extends PaymentOffice {
  PaymentOfficeModel({
    required String officeCode,
    required String officeName,
  }) : super(
          officeCode: officeCode,
          officeName: officeName,
        );

  factory PaymentOfficeModel.fromJson(Map<String, dynamic> json) =>
      PaymentOfficeModel(
        officeCode: json['office_code'] as String? ?? '',
        officeName: json['office_name'] as String? ?? '',
      );
}
