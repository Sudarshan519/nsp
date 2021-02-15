import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/home/domain/entities/resume/academic_history.dart';

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

  Map<String, dynamic> toJson() => {
        "id": id,
        "job_seeker_id": jobSeekerId,
        "institute": institute,
        "major_subject": majorSubject,
        "start_year": startYear,
        "start_month": startMonth,
        "completion_year": completionYear,
        "completion_month": completionMonth,
        "language": language,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
