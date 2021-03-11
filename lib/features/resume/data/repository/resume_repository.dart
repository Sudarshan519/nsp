import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/data/data_source/resume_remote_data_source.dart';
import 'package:wallet_app/features/resume/data/model/academic_history_model.dart';
import 'package:wallet_app/features/resume/data/model/personal_info_model.dart';
import 'package:wallet_app/features/resume/data/model/qualification_history_model.dart';
import 'package:wallet_app/features/resume/data/model/work_history_model.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@LazySingleton(as: ResumeRepository)
class ResumeRepositoryImpl implements ResumeRepository {
  final ResumeRemoteDataSource dataSource;

  ResumeRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<ApiFailure, Unit>> updatePersonalInfo({
    @required PersonalInfo data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          body: data.toPersonalInfoModel().toJson()));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateAddress({
    @required PersonalInfo data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          body: data.toPersonalInfoModel().toCurrentAddressJson()));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateOtherInfo({
    @required PersonalInfo data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          body: data.toPersonalInfoModel().toOtherJson()));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateAcademic({
    @required AcademicHistory data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          body: data.toAcademicHistoryModel().toJson()));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateWork({
    @required WorkHistory data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          body: data.toWorkHistoryModel().toJson()));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateQualification({
    @required QualificationHistory data,
  }) async {
    try {
      return Right(await dataSource.updateResume(
          body: data.toQualificationHistoryModel().toJson()));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
