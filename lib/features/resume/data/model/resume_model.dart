import 'package:flutter/foundation.dart';

import '../../domain/entities/resume.dart';
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

// {
    
//         "first_name": "Ram",
//         "last_name": "Shyam",
//         "furigana": "s",
//         "dob": "1995-11-21",
//         "age": "",
//         "gender": "Male",
//         "nationality": "Nepali",
//         "email": "shirajpngg@gmail.com",
//         "contact_number": "123213123",
//         "curr_postal_code": "3321",
//         "curr_prefecture": "Tokyo",
//         "curr_city": "Ikitsu",
//         "curr_address": "parents strreet",
//         "curr_phone": "0141216627",
//         "cont_postal_code": "Tok",
//         "cont_prefecture": "123",
//         "cont_city": "123",
//         "cont_address": "123",
//         "cont_phone": "0141216627",
//         "personal_info_completion_rate": personalInfoCompletionRate,
//         "academic_history": List<dynamic>.from(
//             academicHistory.map((x) => (x as AcademicHistoryModel).toJson())),
//         "academics_completion_rate": academicsCompletionRate,
//         "work_history": List<dynamic>.from(
//             workHistory.map((x) => (x as WorkHistoryModel).toJson())),
//         "works_completion_rate": worksCompletionRate,
//         "qualification_history": List<dynamic>.from(qualificationHistory
//             .map((x) => (x as QualificationHistoryModel).toJson())),
//         "qualification_completion_rate": qualificationCompletionRate,
//         "options": (options as ResumeOptionsModel).toJson(),
//       };
