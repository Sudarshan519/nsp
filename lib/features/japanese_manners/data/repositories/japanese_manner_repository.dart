import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart';
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_categories_model.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_categories.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_list.dart';
import 'package:wallet_app/features/japanese_manners/domain/repositories/japanese_manner_repository.dart';

@LazySingleton(as: JapaneseMannerRepository)
class JapaneseMannerRepositoryImpl implements JapaneseMannerRepository {
  final JapaneseMannersRemoteDataSource remoteDataSource;
  final Logger logger;
  JapaneseMannerRepositoryImpl({
    required this.remoteDataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, JapaneseMannerList>> getJapaneseManner({
    required JapaneseMannerCategory category,
    required String page,
  }) async {
    try {
      return Right(
        await remoteDataSource.getJapaneseManners(
          id: category.id ?? 0,
          page: page,
        ),
      );
    } on ServerException catch (ex) {
      logger.log(
        className: "JapaneseMannerRepository",
        functionName: "getJapaneseManner()",
        errorText: "Error on getting Japanese Manners from remote",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<JapaneseMannerCategory>>>
      getJapaneseMannerCategories() async {
    try {
      final categories = await remoteDataSource.getJapaneseMannerCategories();
      categories.insert(
        0,
        const JapaneseMannerCategoryModel(
          id: null,
          categoryName: "All",
        ),
      );
      return Right(
        categories,
      );
    } on ServerException catch (ex) {
      logger.log(
        className: "JapaneseMannerRepository",
        functionName: "getJapaneseMannerCategories()",
        errorText: "Error on getting Japanese Manners Categories from remote",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, JapaneseManner>> getJapaneseMannerDetail(
      int id) async {
    try {
      final result = await remoteDataSource.getJapaneseMannerDetail(id);

      return Right(result);
    } on ServerException catch (ex) {
      logger.log(
        className: "JapaneseMannerRepository",
        functionName: "getJapaneseMannerCategories()",
        errorText: "Error on getting Japanese Manners Categories from remote",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
