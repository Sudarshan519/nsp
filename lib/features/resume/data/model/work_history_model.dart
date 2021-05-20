import '../../domain/entities/work_history.dart';

class WorkHistoryModel extends WorkHistory {
  const WorkHistoryModel({
    required int? id,
    required int? jobSeekerId,
    required String? companyName,
    required String? companyType,
    required String? startYear,
    required String? startMonth,
    required String? endYear,
    required String? endMonth,
    required String? description,
    required String? language,
    required String? purposeOfResign,
    required String? createdAt,
    required String? updatedAt,
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
          purposeOfResign: purposeOfResign,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory WorkHistoryModel.fromJson(Map<String, dynamic> json) =>
      WorkHistoryModel(
        id: json["id"] as int?,
        jobSeekerId: json["job_seeker_id"] as int?,
        companyName: json["company_name"] as String?,
        companyType: json["company_type"] as String?,
        startYear: json["start_year"] as String?,
        startMonth: json["start_month"] as String?,
        endYear: json["end_year"] as String?,
        endMonth: json["end_month"] as String?,
        description: json["description"] as String?,
        purposeOfResign: json["purpose_of_resign"] as String?,
        language: json["language"] as String?,
        createdAt: json["created_at"] as String?,
        updatedAt: json["updated_at"] as String?,
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> parent = {};
    final Map<String, dynamic> params = {};

    if (id != null) {
      params["id"] = id;
    }

    if (companyName != null) {
      params["company_name"] = companyName;
    }

    if (companyType != null) {
      params["company_type"] = companyType;
    }

    if (startYear != null) {
      params["start_year"] = startYear;
    }

    if (startMonth != null) {
      params["start_month"] = startMonth;
    }

    if (endYear != null) {
      params["end_year"] = endYear;
    }

    if (endMonth != null) {
      params["end_month"] = endMonth;
    }

    if (purposeOfResign != null) {
      params["purpose_of_resign"] = purposeOfResign;
    }

    parent["experience"] = [params];

    return parent;
  }
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
        purposeOfResign: purposeOfResign,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
