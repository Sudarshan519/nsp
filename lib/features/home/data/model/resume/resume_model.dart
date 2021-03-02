import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/home/data/model/resume/personal_info_model.dart';
import 'package:wallet_app/features/home/data/model/resume/qualification_history_model.dart';
import 'package:wallet_app/features/home/data/model/resume/resume_options_model.dart';
import 'package:wallet_app/features/home/data/model/resume/work_history_model.dart';
import 'package:wallet_app/features/home/domain/entities/resume/resume.dart';

import 'academic_history_model.dart';

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
        personalInfo: PersonalInfoModel.fromJson(
            json["personal_info"] as Map<String, dynamic>),
        personalInfoCompletionRate:
            json["personal_info_completion_rate"] as int,
        academicHistory: List<AcademicHistoryModel>.from(
            (json["academic_history"] as Iterable).map((x) =>
                AcademicHistoryModel.fromJson(x as Map<String, dynamic>))),
        academicsCompletionRate: json["academics_completion_rate"] as int,
        workHistory: List<WorkHistoryModel>.from((json["work_history"]
                as Iterable)
            .map((x) => WorkHistoryModel.fromJson(x as Map<String, dynamic>))),
        worksCompletionRate: json["works_completion_rate"] as int,
        qualificationHistory: List<QualificationHistoryModel>.from(
            (json["qualification_history"] as Iterable).map((x) =>
                QualificationHistoryModel.fromJson(x as Map<String, dynamic>))),
        qualificationCompletionRate:
            json["qualification_completion_rate"] as int,
        options: ResumeOptionsModel.fromJson(
            json["options"] as Map<String, dynamic>),
      );

  // factory ResumeDataModel.fromJson(Map<String, dynamic> json) =>
  //     ResumeDataModel(
  //       personalInfo: PersonalInfoModel.fromJson(
  //           json["personal_info"] as Map<String, dynamic>),
  //       personalInfoCompletionRate:
  //           (json["personal_info_completion_rate"] as int).toDouble(),
  //       academicHistory: null,
  //       academicsCompletionRate: null,
  //       workHistory: null,
  //       worksCompletionRate: null,
  //       qualificationHistory: null,
  //       qualificationCompletionRate: null,
  //       options: null,
  //     );

  Map<String, dynamic> toJson() => {
        "personal_info": (personalInfo as PersonalInfoModel).toJson(),
        "personal_info_completion_rate": personalInfoCompletionRate,
        "academic_history": List<dynamic>.from(
            academicHistory.map((x) => (x as AcademicHistoryModel).toJson())),
        "academics_completion_rate": academicsCompletionRate,
        "work_history": List<dynamic>.from(
            workHistory.map((x) => (x as WorkHistoryModel).toJson())),
        "works_completion_rate": worksCompletionRate,
        "qualification_history": List<dynamic>.from(qualificationHistory
            .map((x) => (x as QualificationHistoryModel).toJson())),
        "qualification_completion_rate": qualificationCompletionRate,
        "options": (options as ResumeOptionsModel).toJson(),
      };
}
