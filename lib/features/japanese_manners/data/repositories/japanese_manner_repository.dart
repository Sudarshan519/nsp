import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_categories.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_list.dart';
import 'package:wallet_app/features/japanese_manners/domain/repositories/japanese_manner_repository.dart';
import 'package:wallet_app/utils/constant.dart';

@LazySingleton(as: JapaneseMannerRepository)
class JapaneseMannerRepositoryImpl implements JapaneseMannerRepository {
  final JapaneseMannersRemoteDataSource remoteDataSource;
  JapaneseMannerRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, JapaneseMannerList>> getJapaneseManner({
    required JapaneseMannerCategory category,
  }) async {
    try {
      final categoryId = category.id;
      if (categoryId != null) {
        return Right(
          await remoteDataSource.getJapaneseManners(
            id: categoryId,
          ),
        );
      } else {
        debugPrint("Category Id is null");
        return const Left(
            ApiFailure.serverError(message: AppConstants.someThingWentWrong));
      }
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<JapaneseMannerCategory>>>
      getJapaneseMannerCategories() async {
    try {
      return Right(
        await remoteDataSource.getJapaneseMannerCategories(),
      );
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
