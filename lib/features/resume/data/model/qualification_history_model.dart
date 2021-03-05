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
  }) : super(
          id: id,
          jobSeekerId: jobSeekerId,
          qualificationName: qualificationName,
          certifiedYear: certifiedYear,
          certifiedMonth: certifiedMonth,
          language: language,
          createdAt: createdAt,
          updatedAt: updatedAt,
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
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "job_seeker_id": jobSeekerId,
        "qualification_name": qualificationName,
        "certified_year": certifiedYear,
        "certified_month": certifiedMonth,
        "language": language,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
