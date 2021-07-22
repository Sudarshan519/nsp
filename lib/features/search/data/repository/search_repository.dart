import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/search/data/datasource/search_remote_data_source.dart';
import 'package:wallet_app/features/search/data/model/search_data_model.dart';
import 'package:wallet_app/features/search/domain/repositories/search_repository.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final SearchPageRemoteDataSource dataSource;
  final Logger logger;

  SearchRepositoryImpl({
    required this.dataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, List<SearchDataModel>>> getSearchPageData(
      String searchText) async {
    try {
      return Right(await dataSource.getSearchPageData(searchText));
    } on ServerException catch (ex) {
      logger.log(
        className: "SearchRepository",
        functionName: "getSearchPageData()",
        errorText: "Error on getting search data from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
