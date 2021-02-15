import 'package:equatable/equatable.dart';

import 'academic_history.dart';
import 'personal_info.dart';
import 'qualification_history.dart';
import 'resume_options.dart';
import 'work_history.dart';

class ResumeData extends Equatable {
  const ResumeData({
    this.personalInfo,
    this.personalInfoCompletionRate,
    this.academicHistory,
    this.academicsCompletionRate,
    this.workHistory,
    this.worksCompletionRate,
    this.qualificationHistory,
    this.qualificationCompletionRate,
    this.options,
  });

  final PersonalInfo personalInfo;
  final double personalInfoCompletionRate;
  final List<AcademicHistory> academicHistory;
  final double academicsCompletionRate;
  final List<WorkHistory> workHistory;
  final double worksCompletionRate;
  final List<QualificationHistory> qualificationHistory;
  final double qualificationCompletionRate;
  final ResumeOptions options;

  @override
  List<Object> get props => [
        personalInfo,
        personalInfoCompletionRate,
        academicHistory,
        academicsCompletionRate,
        workHistory,
        worksCompletionRate,
        qualificationHistory,
        qualificationCompletionRate,
        options,
      ];
}
