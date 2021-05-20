import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/auth/data/model/user_detail_model.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_model.dart';

import 'resume_with_language.dart';

ResumeModel resumeFromJson(String str) =>
    ResumeModel.fromJson(json.decode(str) as Map<String, dynamic>);

class ResumeModel extends Resume {
  const ResumeModel({
    required UserDetailModel? userDetail,
    required ResumeStatusDataModel? resumeData,
    required AddressesJpModel? addressesJp,
    required AddressesNpModel? addressesNp,
  }) : super(
          userDetail: userDetail,
          resumeData: resumeData,
          addressesJp: addressesJp,
          addressesNp: addressesNp,
        );

  factory ResumeModel.fromJson(Map<String, dynamic> json) => ResumeModel(
        userDetail: json["user_detail"] == null
            ? null
            : UserDetailModel.fromJson(
                json["user_detail"] as Map<String, dynamic>),
        resumeData: json["resume_data"] == null
            ? null
            : ResumeStatusDataModel.fromJson(
                json["resume_data"] as Map<String, dynamic>),
        addressesJp: json["addresses_jp"] == null
            ? null
            : AddressesJpModel.fromJson(
                json["addresses_jp"] as Map<String, dynamic>),
        addressesNp: json["addresses_np"] == null
            ? null
            : AddressesNpModel.fromJson(
                json["addresses_np"] as Map<String, dynamic>),
      );
}

class ResumeStatusDataModel extends ResumeStatusData {
  const ResumeStatusDataModel({
    required bool? status,
    required ResumeWithLanguageModel? data,
    required bool? hasResume,
  }) : super(
          status: status,
          data: data,
          hasResume: hasResume,
        );

  factory ResumeStatusDataModel.fromJson(Map<String, dynamic> json) =>
      ResumeStatusDataModel(
        status: json["status"] as bool?,
        data: json["data"] == null
            ? null
            : ResumeWithLanguageModel.fromJson(
                json["data"] as Map<String, dynamic>),
        hasResume: json["has_resume"] as bool?,
      );
}

class AddressesJpModel extends AddressesJp {
  const AddressesJpModel({
    required AddressesJpWithLanguageModel? en,
    required AddressesJpWithLanguageModel? jp,
  }) : super(
          en: en,
          jp: jp,
        );

  factory AddressesJpModel.fromJson(Map<String, dynamic> json) =>
      AddressesJpModel(
        en: json["en"] == null
            ? null
            : AddressesJpWithLanguageModel.fromJson(
                json["en"] as Map<String, dynamic>),
        jp: json["jp"] == null
            ? null
            : AddressesJpWithLanguageModel.fromJson(
                json["jp"] as Map<String, dynamic>),
      );
}

class AddressesJpWithLanguageModel extends AddressesJpWithLanguage {
  const AddressesJpWithLanguageModel({
    required List<String> prefectures,
  }) : super(prefectures: prefectures);

  factory AddressesJpWithLanguageModel.fromJson(Map<String, dynamic> json) =>
      AddressesJpWithLanguageModel(
        prefectures:
            List<String>.from((json["prefectures"] as Iterable).map((x) => x)),
      );
}

class AddressesNpModel extends AddressesNp {
  const AddressesNpModel({
    required AddressesNpWithLanguageModel? en,
    required AddressesNpWithLanguageModel? jp,
  }) : super(
          en: en,
          jp: jp,
        );

  factory AddressesNpModel.fromJson(Map<String, dynamic> json) =>
      AddressesNpModel(
        en: json["en"] == null
            ? null
            : AddressesNpWithLanguageModel.fromJson(
                json["en"] as Map<String, dynamic>),
        jp: json["jp"] == null
            ? null
            : AddressesNpWithLanguageModel.fromJson(
                json["jp"] as Map<String, dynamic>),
      );
}

class AddressesNpWithLanguageModel extends AddressesNpWithLanguage {
  const AddressesNpWithLanguageModel({
    required List<NepalProvinceModel>? province,
  }) : super(province: province);

  factory AddressesNpWithLanguageModel.fromJson(Map<String, dynamic> json) =>
      AddressesNpWithLanguageModel(
        province: json["province"] == null
            ? null
            : List<NepalProvinceModel>.from((json["province"] as Iterable).map(
                (x) => NepalProvinceModel.fromJson(x as Map<String, dynamic>))),
      );
}

class NepalProvinceModel extends NepalProvince {
  const NepalProvinceModel({
    required int? provinceId,
    required String? provinceName,
  }) : super(
          provinceId: provinceId,
          provinceName: provinceName,
        );

  factory NepalProvinceModel.fromJson(Map<String, dynamic> json) =>
      NepalProvinceModel(
        provinceId: json["province_id"] as int?,
        provinceName: json["province_name"] as String?,
      );
}
