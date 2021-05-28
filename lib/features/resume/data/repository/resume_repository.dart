import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/model/user_detail_model.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/resume/data/data_source/resume_remote_data_source.dart';
import 'package:wallet_app/features/resume/data/model/academic_history_model.dart';
import 'package:wallet_app/features/resume/data/model/personal_info_model.dart';
import 'package:wallet_app/features/resume/data/model/qualification_history_model.dart';
import 'package:wallet_app/features/resume/data/model/work_history_model.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_model.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@LazySingleton(as: ResumeRepository)
class ResumeRepositoryImpl implements ResumeRepository {
  final ResumeRemoteDataSource dataSource;
  final Logger logger;

  ResumeRepositoryImpl({
    required this.dataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, Resume>> getResumeData() async {
    try {
      return Right(await dataSource.getResumeData());
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "getResumeData()",
        errorText: "Error on getting resume data from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updatePersonalInfo({
    required String lang,
    required PersonalInfo data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
        lang: lang,
        body: data.toPersonalInfoModel().toJson(),
      ));
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "updatePersonalInfo()",
        errorText: "Error on updating personal info from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateAddress({
    required String lang,
    required PersonalInfo data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          lang: lang, body: data.toPersonalInfoModel().toCurrentAddressJson()));
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "updateAddress()",
        errorText: "Error on updating address from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateOtherInfo({
    required String lang,
    required PersonalInfo data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          lang: lang, body: data.toPersonalInfoModel().toOtherJson()));
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "updateOtherInfo()",
        errorText: "Error on updating other info from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateAcademic({
    required String lang,
    required AcademicHistory data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          lang: lang, body: data.toAcademicHistoryModel().toJson()));
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "updateAcademic()",
        errorText: "Error on updating academic info from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateWork({
    required String lang,
    required WorkHistory data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          lang: lang, body: data.toWorkHistoryModel().toJson()));
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "updateWork()",
        errorText: "Error on updating work info from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateQualification({
    required String lang,
    required QualificationHistory data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          lang: lang, body: data.toQualificationHistoryModel().toJson()));
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "updateQualification()",
        errorText: "Error on updating qualification from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateResumeImage({
    required String lang,
    required PersonalInfo data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          lang: lang, body: data.toPersonalInfoModel().toImageJson()));
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "updateResumeImage()",
        errorText: "Error on updating reume image from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, String>> getResumePdfLink({
    required String lang,
  }) async {
    try {
      return Right(await dataSource.downloadPdf(
        lang: lang,
      ));
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "getResumePdfLink()",
        errorText: "Error on getting reume pdf link from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  // KYC PART
  @override
  Future<Either<ApiFailure, Unit>> updateKycInfo({
    required UserDetail data,
  }) async {
    try {
      return Right(
        await dataSource.updateKyc(
          body: data.toUserDetailModel().toPersonalDetailJson(),
        ),
      );
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "updateKycInfo()",
        errorText: "Error on updating KYC info from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateKycDoc({
    required UserDetail data,
  }) async {
    try {
      return Right(
        await dataSource.updateKyc(
          body: data.toUserDetailModel().toDocumentDetailJson(),
        ),
      );
    } on ServerException catch (ex) {
      logger.log(
        className: "ResumeRepository",
        functionName: "updateKycDoc()",
        errorText: "Error on updating KYC Doc from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
