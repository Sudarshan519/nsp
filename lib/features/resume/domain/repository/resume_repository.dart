import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';

abstract class ResumeRepository {
  Future<Either<ApiFailure, Unit>> updatePersonalInfo({
    @required PersonalInfo data,
  });

  Future<Either<ApiFailure, Unit>> updateAddress({
    @required PersonalInfo data,
  });

  Future<Either<ApiFailure, Unit>> updateOtherInfo({
    @required PersonalInfo data,
  });

  Future<Either<ApiFailure, Unit>> updateAcademic({
    @required AcademicHistory data,
  });

  Future<Either<ApiFailure, Unit>> updateWork({
    @required WorkHistory data,
  });

  Future<Either<ApiFailure, Unit>> updateQualification({
    @required QualificationHistory data,
  });

  Future<Either<ApiFailure, Unit>> updateResumeImage({
    @required PersonalInfo data,
  });

  Future<Either<ApiFailure, String>> getResumePdfLink();
}
