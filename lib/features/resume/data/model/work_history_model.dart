import 'package:flutter/foundation.dart';

import '../../domain/entities/work_history.dart';

class WorkHistoryModel extends WorkHistory {
  const WorkHistoryModel({
    @required int id,
    @required int jobSeekerId,
    @required String companyName,
    @required String companyType,
    @required String startYear,
    @required String startMonth,
    @required String endYear,
    @required String endMonth,
    @required String description,
    @required String language,
    @required String createdAt,
    @required String updatedAt,
  }) : super(
          id: id,
          jobSeekerId: jobSeekerId,
          companyName: companyName,
          companyType: companyType,
          startYear: startYear,
          startMonth: startMonth,
          endYear: endYear,
          endMonth: endMonth,
          description: description,
          language: language,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory WorkHistoryModel.fromJson(Map<String, dynamic> json) =>
      WorkHistoryModel(
        id: json["id"] as int,
        jobSeekerId: json["job_seeker_id"] as int,
        companyName: json["company_name"] as String,
        companyType: json["company_type"] as String,
        startYear: json["start_year"] as String,
        startMonth: json["start_month"] as String,
        endYear: json["end_year"] as String,
        endMonth: json["end_month"] as String,
        description: json["description"] as String,
        language: json["language"] as String,
        createdAt: json["created_at"] as String,
        updatedAt: json["updated_at"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "job_seeker_id": jobSeekerId,
        "company_name": companyName,
        "company_type": companyType,
        "start_year": startYear,
        "start_month": startMonth,
        "end_year": endYear,
        "end_month": endMonth,
        "description": description,
        "language": language,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

extension WorkHistoryExt on WorkHistory {
  WorkHistoryModel toWorkHistoryModel() => WorkHistoryModel(
        id: id,
        jobSeekerId: jobSeekerId,
        companyName: companyName,
        companyType: companyType,
        startYear: startYear,
        startMonth: startMonth,
        endYear: endYear,
        endMonth: endMonth,
        description: description,
        language: language,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
