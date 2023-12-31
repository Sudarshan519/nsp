import 'package:wallet_app/features/partner_services/data/model/service_packages_model.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_packages.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services.dart';

class ServicesModel extends Services {
  const ServicesModel({
    required int? id,
    // required List branches,
    required String? serviceProductName,
    required String? category,
    required String? companyName,
    required String? companyLogo,
    required String? serviceUrl,
    required String? companyBannerImage,
    required String? salesContactEmail,
    required String? salesContactPhone,
    required String? supportContactEmail,
    required String? supportContactPhone,
    required String? companyAddressHeadCountry,
    required String? companyAddressHeadPostCode,
    required String? companyAddressHeadProvince,
    required String? companyAddressHeadCity,
    required String? companyAddressHeadStreet,
    required String? description,
    required double? cashbackPercentage,
    required double? rewardPoints,
    required List<ServicePackage>? servicePackages,
  }) : super(
          id: id,
          // branches: branches,
          serviceProductName: serviceProductName,
          category: category,
          companyName: companyName,
          companyLogo: companyLogo,
          serviceUrl: serviceUrl,
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
          servicePackages: servicePackages,
          cashbackPercentage: cashbackPercentage,
          rewardPoints: rewardPoints,
        );

  factory ServicesModel.fromJson(Map<String, dynamic> json) => ServicesModel(
        id: json["id"] as int?,
        // branches:
        //     List<dynamic>.from((json["branches"] as Iterable).map((x) => x)),
        serviceProductName: json["service_product_name"] as String?,
        category: json["category"] as String?,
        companyName: json["company_name"] as String?,
        companyLogo: json["company_logo"] as String?,
        serviceUrl: json["service_url"] as String?,
        companyBannerImage: json["company_banner_image"] as String?,
        salesContactEmail: json["sales_contact_email"] as String?,
        salesContactPhone: json["sales_contact_phone"] as String?,
        supportContactEmail: json["support_contact_email"] as String?,
        supportContactPhone: json["support_contact_phone"] as String?,
        companyAddressHeadCountry:
            json["company_address_head_country"] as String?,
        companyAddressHeadPostCode:
            json["company_address_head_post_code"] as String?,
        companyAddressHeadProvince:
            json["company_address_head_province"] as String?,
        companyAddressHeadCity: json["company_address_head_city"] as String?,
        companyAddressHeadStreet:
            json["company_address_head_street"] as String?,
        description: json["description"] as String?,
        rewardPoints: json["reward_point"] as double?,
        cashbackPercentage: json["cashback_per"] as double?,
        servicePackages: json["service_packages"] == null
            ? null
            : List<ServicePackageModel>.from(
                (json["service_packages"] as Iterable).map(
                  (x) =>
                      ServicePackageModel.fromJson(x as Map<String, dynamic>),
                ),
              ),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        // "branches": List<dynamic>.from(branches.map((x) => x)),
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
