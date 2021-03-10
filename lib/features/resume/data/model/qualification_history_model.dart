import 'package:flutter/foundation.dart';

import '../../domain/entities/qualification_history.dart';

class QualificationHistoryModel extends QualificationHistory {
  const QualificationHistoryModel({
    @required int id,
    @required int jobSeekerId,
    @required String qualificationName,
    @required String certifiedYear,
    @required String certifiedMonth,
    @required String language,
    @required String createdAt,
    @required String updatedAt,
    @required String institute,
    @required String startYear,
    @required String endYear,
  }) : super(
          id: id,
          jobSeekerId: jobSeekerId,
          qualificationName: qualificationName,
          certifiedYear: certifiedYear,
          certifiedMonth: certifiedMonth,
          language: language,
          createdAt: createdAt,
          updatedAt: updatedAt,
          startYear: startYear,
          endYear: endYear,
          institute: institute,
        );

  factory QualificationHistoryModel.fromJson(Map<String, dynamic> json) =>
      QualificationHistoryModel(
        id: json["id"] as int,
        jobSeekerId: json["job_seeker_id"] as int,
        qualificationName: json["qualification_name"] as String,
        certifiedYear: json["certified_year"] as String,
        certifiedMonth: json["certified_month"] as String,
        language: json["language"] as String,
        createdAt: json["created_at"] as String,
        updatedAt: json["updated_at"] as String,
        startYear: json["start_year"] as String,
        endYear: json["end_year"] as String,
        institute: json["institute"] as String,
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> params = {};

    if (qualificationName != null) {
      params["qualification_name"] = qualificationName;
    }

    if (certifiedYear != null) {
      params["certified_year"] = certifiedYear;
    }

    if (certifiedMonth != null) {
      params["certified_month"] = certifiedMonth;
    }

    final Map<String, dynamic> parent = {};

    parent["qualification"] = [params];

    return parent;
  }
}

extension QualificationHistoryExt on QualificationHistory {
  QualificationHistoryModel toQualificationHistoryModel() =>
      QualificationHistoryModel(
        id: id,
        jobSeekerId: jobSeekerId,
        qualificationName: qualificationName,
        certifiedYear: certifiedYear,
        certifiedMonth: certifiedMonth,
        language: language,
        createdAt: createdAt,
        updatedAt: updatedAt,
        startYear: startYear,
        endYear: endYear,
        institute: institute,
      );
}
