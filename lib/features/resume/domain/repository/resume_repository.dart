import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/resume/data/app_constant/constant.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_model.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';

abstract class ResumeRepository {
  Future<Either<ApiFailure, Resume>> getResumeData();

  Future<Either<ApiFailure, Unit>> updatePersonalInfo({
    required String lang,
    required PersonalInfo data,
  });

  Future<Either<ApiFailure, Unit>> updateKycInfo({
    required UserDetail data,
  });

  Future<Either<ApiFailure, Unit>> updateKycDoc({
    required UserDetail data,
  });

  Future<Either<ApiFailure, Unit>> updateAddress({
    required String lang,
    required PersonalInfo data,
  });

  Future<Either<ApiFailure, Unit>> updateOtherInfo({
    required String lang,
    required PersonalInfo data,
  });

  Future<Either<ApiFailure, Unit>> updateAcademic({
    required String lang,
    required AcademicHistory data,
  });

  Future<Either<ApiFailure, Unit>> updateWork({
    required String lang,
    required WorkHistory data,
  });

  Future<Either<ApiFailure, Unit>> updateQualification({
    required String lang,
    required QualificationHistory data,
  });

  Future<Either<ApiFailure, Unit>> updateResumeImage({
    required String lang,
    required PersonalInfo data,
  });

  Future<Either<ApiFailure, String>> getResumePdfLink({
    required String lang,
  });
  Future<Either<ApiFailure, Unit>> deleteResumeValue({
    required ResumeType type,
    required int id,
  });
}
