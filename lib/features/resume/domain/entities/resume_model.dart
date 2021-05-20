import 'package:equatable/equatable.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';

import 'resume_with_language.dart';

class Resume extends Equatable {
  const Resume({
    required this.userDetail,
    required this.resumeData,
    required this.addressesJp,
    required this.addressesNp,
  });

  final UserDetail? userDetail;
  final ResumeStatusData? resumeData;
  final AddressesJp? addressesJp;
  final AddressesNp? addressesNp;

  @override
  List<Object> get props => [];
}

class ResumeStatusData extends Equatable {
  const ResumeStatusData({
    this.status,
    this.data,
    this.hasResume,
  });

  final bool? status;
  final ResumeWithLanguage? data;
  final bool? hasResume;

  @override
  List<Object> get props => [];
}

class AddressesJp extends Equatable {
  const AddressesJp({
    required this.en,
    required this.jp,
  });

  final AddressesJpWithLanguage? en;
  final AddressesJpWithLanguage? jp;

  @override
  List<Object> get props => [];

  // factory AddressesJp.fromJson(Map<String, dynamic> json) => AddressesJp(
  //       en: AddressesJpEn.fromJson(json["en"]),
  //       jp: AddressesJpEn.fromJson(json["jp"]),
  //     );
}

class AddressesJpWithLanguage extends Equatable {
  const AddressesJpWithLanguage({
    required this.prefectures,
  });

  final List<String>? prefectures;

  @override
  List<Object> get props => [];

  // factory AddressesJpEn.fromJson(Map<String, dynamic> json) => AddressesJpEn(
  //       prefectures: List<String>.from(json["prefectures"].map((x) => x)),
  //     );
}

class AddressesNp extends Equatable {
  const AddressesNp({
    required this.en,
    required this.jp,
  });

  final AddressesNpWithLanguage? en;
  final AddressesNpWithLanguage? jp;

  @override
  List<Object> get props => [];

  // factory AddressesNp.fromJson(Map<String, dynamic> json) => AddressesNp(
  //     en: AddressesNpEn.fromJson(json["en"]),
  //     jp: AddressesNpEn.fromJson(json["jp"]),
  // );

}

class AddressesNpWithLanguage extends Equatable {
  const AddressesNpWithLanguage({
    required this.province,
  });

  final List<NepalProvince>? province;

  @override
  List<Object> get props => [];

  // factory AddressesNpEn.fromJson(Map<String, dynamic> json) => AddressesNpEn(
  //       province: List<Province>.from(
  //           json["province"].map((x) => Province.fromJson(x))),
  //     );

}

class NepalProvince extends Equatable {
  const NepalProvince({
    required this.provinceId,
    required this.provinceName,
  });

  final int? provinceId;
  final String? provinceName;

  @override
  List<Object> get props => [];

  // factory Province.fromJson(Map<String, dynamic> json) => Province(
  //     provinceId: json["province_id"],
  //     provinceName: json["province_name"],
  // );

}
