import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Services extends Equatable {
  const Services({
    @required this.id,
    // @required this.branches,
    @required this.serviceProductName,
    @required this.category,
    @required this.companyName,
    @required this.companyLogo,
    @required this.companyBannerImage,
    @required this.salesContactEmail,
    @required this.salesContactPhone,
    @required this.supportContactEmail,
    @required this.supportContactPhone,
    @required this.companyAddressHeadCountry,
    @required this.companyAddressHeadPostCode,
    @required this.companyAddressHeadProvince,
    @required this.companyAddressHeadCity,
    @required this.companyAddressHeadStreet,
    @required this.description,
  });

  final int id;
  // final List<dynamic> branches;
  final String serviceProductName;
  final String category;
  final String companyName;
  final String companyLogo;
  final String companyBannerImage;
  final String salesContactEmail;
  final String salesContactPhone;
  final String supportContactEmail;
  final String supportContactPhone;
  final String companyAddressHeadCountry;
  final String companyAddressHeadPostCode;
  final String companyAddressHeadProvince;
  final String companyAddressHeadCity;
  final String companyAddressHeadStreet;
  final String description;

  String get descriptionWithOutHtmlTags {
    if (description != null) {
      return removeAllHtmlTags(description);
    }

    return "";
  }

  String removeAllHtmlTags(String htmlText) {
    final RegExp exp = RegExp("<[^>]*>", multiLine: true);

    return htmlText.replaceAll(exp, '');
  }

  @override
  List<Object> get props => [
        id,
        // branches,
        serviceProductName,
        category,
        companyName,
        companyLogo,
        companyBannerImage,
        salesContactEmail,
        salesContactPhone,
        supportContactEmail,
        supportContactPhone,
        companyAddressHeadCountry,
        companyAddressHeadPostCode,
        companyAddressHeadProvince,
        companyAddressHeadCity,
        companyAddressHeadStreet,
        description,
      ];
}
