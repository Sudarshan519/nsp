import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Services extends Equatable {
  const Services({
    @required this.id,
    @required this.branches,
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
  });

  final int id;
  final List<dynamic> branches;
  final String serviceProductName;
  final String category;
  final String companyName;
  final String companyLogo;
  final String companyBannerImage;
  final String salesContactEmail;
  final int salesContactPhone;
  final String supportContactEmail;
  final int supportContactPhone;
  final String companyAddressHeadCountry;
  final int companyAddressHeadPostCode;
  final String companyAddressHeadProvince;
  final String companyAddressHeadCity;
  final String companyAddressHeadStreet;

  @override
  List<Object> get props => [
        id,
        branches,
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
      ];
}
