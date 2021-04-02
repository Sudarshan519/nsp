import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/auth/data/model/user_detail_model.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_model.dart';

import 'resume_with_language.dart';

List<ResumeModel> resumeModelFromJson(String str) =>
    List<ResumeModel>.from((json.decode(str) as Iterable)
        .map((x) => ResumeModel.fromJson(x as Map<String, dynamic>)));

class ResumeModel extends Resume {
  const ResumeModel({
    @required UserDetailModel userDetail,
    @required ResumeStatusDataModel resumeData,
  }) : super(
          userDetail: userDetail,
          resumeData: resumeData,
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
      );
}

class ResumeStatusDataModel extends ResumeStatusData {
  const ResumeStatusDataModel({
    @required bool status,
    @required ResumeWithLanguageModel data,
    @required bool hasResume,
  }) : super(
          status: status,
          data: data,
          hasResume: hasResume,
        );

  factory ResumeStatusDataModel.fromJson(Map<String, dynamic> json) =>
      ResumeStatusDataModel(
        status: json["status"] as bool,
        data: json["data"] == null
            ? null
            : ResumeWithLanguageModel.fromJson(
                json["data"] as Map<String, dynamic>),
        hasResume: json["has_resume"] as bool,
      );
}
