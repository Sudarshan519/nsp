import 'package:equatable/equatable.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';

import 'resume_with_language.dart';

class Resume extends Equatable {
  const Resume({
    this.userDetail,
    this.resumeData,
  });

  final UserDetail userDetail;
  final ResumeStatusData resumeData;

  @override
  List<Object> get props => [
        userDetail,
        resumeData,
      ];
}

class ResumeStatusData extends Equatable {
  const ResumeStatusData({
    this.status,
    this.data,
    this.hasResume,
  });

  final bool status;
  final ResumeWithLanguage data;
  final bool hasResume;

  @override
  List<Object> get props => [
        status,
        data,
        hasResume,
      ];
}
