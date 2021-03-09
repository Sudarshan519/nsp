import 'package:flutter/foundation.dart';

import '../../domain/entities/academic_history.dart';

class AcademicHistoryModel extends AcademicHistory {
  const AcademicHistoryModel({
    @required int id,
    @required int jobSeekerId,
    @required String institute,
    @required String majorSubject,
    @required String startYear,
    @required String startMonth,
    @required String completionYear,
    @required String completionMonth,
    @required String language,
    @required String createdAt,
    @required String updatedAt,
  }) : super(
          id: id,
          jobSeekerId: jobSeekerId,
          institute: institute,
          majorSubject: majorSubject,
          startYear: startYear,
          startMonth: startMonth,
          completionYear: completionYear,
          completionMonth: completionMonth,
          language: language,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory AcademicHistoryModel.fromJson(Map<String, dynamic> json) =>
      AcademicHistoryModel(
        id: json["id"] as int,
        jobSeekerId: json["job_seeker_id"] as int,
        institute: json["institute"] as String,
        majorSubject: json["major_subject"] as String,
        startYear: json["start_year"] as String,
        startMonth: json["start_month"] as String,
        completionYear: json["completion_year"] as String,
        completionMonth: json["completion_month"] as String,
        language: json["language"] as String,
        createdAt: json["created_at"] as String,
        updatedAt: json["updated_at"] as String,
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> params = {};

    if (institute != null) {
      params["insutitute"] = institute;
    }

    if (startYear != null) {
      params["start_year"] = startYear;
    }

    if (startMonth != null) {
      params["start_month"] = startMonth;
    }

    if (completionYear != null) {
      params["completion_year"] = completionYear;
    }

    if (completionMonth != null) {
      params["completion_month"] = completionMonth;
    }

    return params;
  }
}

extension AcademicHistoryExt on AcademicHistory {
  AcademicHistoryModel toAcademicHistoryModel() => AcademicHistoryModel(
        id: id,
        jobSeekerId: jobSeekerId,
        institute: institute,
        majorSubject: majorSubject,
        startYear: startYear,
        startMonth: startMonth,
        completionYear: completionYear,
        completionMonth: completionMonth,
        language: language,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
