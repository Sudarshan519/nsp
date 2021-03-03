import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/news/data/app_constant/constant.dart';
import 'package:wallet_app/features/news/data/datasource/news_local_data_source.dart';
import 'package:wallet_app/features/news/data/datasource/news_remote_data_source.dart';
import 'package:wallet_app/features/news/domain/entity/news.dart';
import 'package:wallet_app/features/news/domain/repository/news_repository.dart';

@LazySingleton(as: NewsRepositoryProtocol)
class NewsRepository implements NewsRepositoryProtocol {
  final NewsRemoteDataSourceProtocol remoteDataSource;
  final NewsLocalDataSourceProtocol localDataSource;

  NewsRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
  })  : assert(localDataSource != null),
        assert(remoteDataSource != null);

  @override
  Future<Either<ApiFailure, News>> getNewsFromLocalStorage() async {
    try {
      final news = await localDataSource.getNews();
      if (news != null) {
        return Right(news);
      }
      return const Left(ApiFailure.serverError(message: ""));
    } catch (ex) {
      return const Left(ApiFailure.serverError(message: ""));
    }
  }

  @override
  Future<Either<ApiFailure, News>> getNewsFromRemote({
    @required String page,
  }) async {
    try {
      final news = await remoteDataSource.getNews(
        page: page,
        limit: NewsConstant.limit,
      );
      localDataSource.saveNews(news: news);
      return Right(news);
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    } catch (ex) {
      return Left(ApiFailure.serverError(message: ex.toString()));
    }
  }
}
