import 'package:wallet_app/features/utility_payments/domain/entities/nea_office.dart';

class NEAOfficeModel extends NEAOffice {
  NEAOfficeModel({
    required String officeCode,
    required String officeName,
  }) : super(
          officeCode: officeCode,
          officeName: officeName,
        );

  factory NEAOfficeModel.fromJson(Map<String, dynamic> json) => NEAOfficeModel(
        officeCode: json['office_code'] as String? ?? '',
        officeName: json['office_name'] as String? ?? '',
      );
}
