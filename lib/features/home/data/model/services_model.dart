import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/home/domain/entities/services.dart';

class ServicesModel extends Services {
  const ServicesModel({
    @required int id,
    @required List branches,
    @required String serviceProductName,
    @required String category,
    @required String companyName,
    @required String companyLogo,
    @required String companyBannerImage,
    @required String salesContactEmail,
    @required int salesContactPhone,
    @required String supportContactEmail,
    @required int supportContactPhone,
    @required String companyAddressHeadCountry,
    @required int companyAddressHeadPostCode,
    @required String companyAddressHeadProvince,
    @required String companyAddressHeadCity,
    @required String companyAddressHeadStreet,
    @required String description,
  }) : super(
          id: id,
          branches: branches,
          serviceProductName: serviceProductName,
          category: category,
          companyName: companyName,
          companyLogo: companyLogo,
          companyBannerImage: companyBannerImage,
          salesContactEmail: salesContactEmail,
          salesContactPhone: salesContactPhone,
          supportContactEmail: supportContactEmail,
          supportContactPhone: supportContactPhone,
          companyAddressHeadCountry: companyAddressHeadCountry,
          companyAddressHeadPostCode: companyAddressHeadPostCode,
          companyAddressHeadProvince: companyAddressHeadProvince,
          companyAddressHeadCity: companyAddressHeadCity,
          companyAddressHeadStreet: companyAddressHeadStreet,
          description: description,
        );

  factory ServicesModel.fromJson(Map<String, dynamic> json) => ServicesModel(
        id: json["id"] as int,
        branches:
            List<dynamic>.from((json["branches"] as Iterable).map((x) => x)),
        serviceProductName: json["service_product_name"] as String,
        category: json["category"] as String,
        companyName: json["company_name"] as String,
        companyLogo: json["company_logo"] as String,
        companyBannerImage: json["company_banner_image"] as String,
        salesContactEmail: json["sales_contact_email"] as String,
        salesContactPhone: json["sales_contact_phone"] as int,
        supportContactEmail: json["support_contact_email"] as String,
        supportContactPhone: json["support_contact_phone"] as int,
        companyAddressHeadCountry:
            json["company_address_head_country"] as String,
        companyAddressHeadPostCode:
            json["company_address_head_post_code"] as int,
        companyAddressHeadProvince:
            json["company_address_head_province"] as String,
        companyAddressHeadCity: json["company_address_head_city"] as String,
        companyAddressHeadStreet: json["company_address_head_street"] as String,
        description: json["description"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "branches": List<dynamic>.from(branches.map((x) => x)),
        "service_product_name": serviceProductName,
        "category": category,
        "company_name": companyName,
        "company_logo": companyLogo,
        "company_banner_image": companyBannerImage,
        "sales_contact_email": salesContactEmail,
        "sales_contact_phone": salesContactPhone,
        "support_contact_email": supportContactEmail,
        "support_contact_phone": supportContactPhone,
        "company_address_head_country": companyAddressHeadCountry,
        "company_address_head_post_code": companyAddressHeadPostCode,
        "company_address_head_province": companyAddressHeadProvince,
        "company_address_head_city": companyAddressHeadCity,
        "company_address_head_street": companyAddressHeadStreet,
        "description": description,
      };
}
