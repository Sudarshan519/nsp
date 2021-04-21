import 'dart:convert';

import 'package:wallet_app/features/partner_services/domain/entities/services_list.dart';

import 'services_model.dart';

PartnerServicesListModel partnerServiceListFromJson(String str) =>
    PartnerServicesListModel.fromJson(json.decode(str) as Map<String, dynamic>);

class PartnerServicesListModel extends PartnerServicesList {
  const PartnerServicesListModel({
    final List<ServicesModel> results,
  }) : super(
          results: results,
        );

  factory PartnerServicesListModel.fromJson(Map<String, dynamic> json) =>
      PartnerServicesListModel(
        results: List<ServicesModel>.from((json["partner_services"] as Iterable)
            .map((x) => ServicesModel.fromJson(x as Map<String, dynamic>))),
      );
}
