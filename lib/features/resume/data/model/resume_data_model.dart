import 'package:flutter/foundation.dart';

import '../../domain/entities/resume_data.dart';
import 'academic_history_model.dart';
import 'personal_info_model.dart';
import 'qualification_history_model.dart';
import 'resume_options_model.dart';
import 'work_history_model.dart';

class ResumeDataModel extends ResumeData {
  const ResumeDataModel({
    @required PersonalInfoModel personalInfo,
    @required int personalInfoCompletionRate,
    @required List<AcademicHistoryModel> academicHistory,
    @required int academicsCompletionRate,
    @required List<WorkHistoryModel> workHistory,
    @required int worksCompletionRate,
    @required List<QualificationHistoryModel> qualificationHistory,
    @required int qualificationCompletionRate,
    @required ResumeOptionsModel options,
  }) : super(
          personalInfo: personalInfo,
          personalInfoCompletionRate: personalInfoCompletionRate,
          academicHistory: academicHistory,
          academicsCompletionRate: academicsCompletionRate,
          workHistory: workHistory,
          worksCompletionRate: worksCompletionRate,
          qualificationHistory: qualificationHistory,
          qualificationCompletionRate: qualificationCompletionRate,
          options: options,
        );

  factory ResumeDataModel.fromJson(Map<String, dynamic> json) =>
      ResumeDataModel(
        personalInfo: json["personal_info"] == null
            ? null
            : PersonalInfoModel.fromJson(
                json["personal_info"] as Map<String, dynamic>),
        personalInfoCompletionRate:
            json["personal_info_completion_rate"] == null
                ? null
                : json["personal_info_completion_rate"] as int,
        academicHistory: json["academic_history"] == null
            ? null
            : List<AcademicHistoryModel>.from(
                (json["academic_history"] as Iterable).map((x) =>
                    AcademicHistoryModel.fromJson(x as Map<String, dynamic>))),
        academicsCompletionRate: json["academics_completion_rate"] == null
            ? null
            : json["academics_completion_rate"] as int,
        workHistory: json["work_history"] == null
            ? null
            : List<WorkHistoryModel>.from((json["work_history"] as Iterable)
                .map((x) =>
                    WorkHistoryModel.fromJson(x as Map<String, dynamic>))),
        worksCompletionRate: json["works_completion_rate"] == null
            ? null
            : json["works_completion_rate"] as int,
        qualificationHistory: json["qualification_history"] == null
            ? null
            : List<QualificationHistoryModel>.from(
                (json["qualification_history"] as Iterable).map((x) =>
                    QualificationHistoryModel.fromJson(
                        x as Map<String, dynamic>))),
        qualificationCompletionRate:
            json["qualification_completion_rate"] == null
                ? null
                : json["qualification_completion_rate"] as int,
        options: json["options"] == null
            ? null
            : ResumeOptionsModel.fromJson(
                json["options"] as Map<String, dynamic>),
      );
}

extension ResumeDataExt on ResumeData {
  ResumeDataModel toResumeDataModel() => ResumeDataModel(
        personalInfo: personalInfo.toPersonalInfoModel(),
        personalInfoCompletionRate: personalInfoCompletionRate,
        academicHistory:
            academicHistory.map((a) => a.toAcademicHistoryModel()).toList(),
        academicsCompletionRate: academicsCompletionRate,
        workHistory:
            workHistory.map((work) => work.toWorkHistoryModel()).toList(),
        worksCompletionRate: worksCompletionRate,
        qualificationHistory: qualificationHistory
            .map((qualification) => qualification.toQualificationHistoryModel())
            .toList(),
        qualificationCompletionRate: qualificationCompletionRate,
        options: options.toResumeOptionsModel(),
      );
}
