import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/news/data/app_constant/constant.dart';
import 'package:wallet_app/features/news/data/datasource/news_local_data_source.dart';
import 'package:wallet_app/features/news/data/datasource/news_remote_data_source.dart';
import 'package:wallet_app/features/news/data/model/news_item_model.dart';
import 'package:wallet_app/features/news/domain/entity/news.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
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
  Future<Either<ApiFailure, News>> getNewsForYou({
    @required String page,
  }) async {
    return _getNews(request: () {
      return remoteDataSource.getNewsForYou(
        page: page,
        limit: NewsConstant.limit,
      );
    });
  }

  @override
  Future<Either<ApiFailure, News>> getLatestNews({
    @required String page,
  }) async {
    return _getNews(request: () {
      return remoteDataSource.getLatestNews(
        page: page,
        limit: NewsConstant.limit,
      );
    });
  }

  Future<Either<ApiFailure, News>> _getNews(
      {@required Future<News> Function() request}) async {
    try {
      final news = await request();
      // localDataSource.saveNews(news: news);
      return Right(news);
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    } catch (ex) {
      return Left(ApiFailure.serverError(message: ex.toString()));
    }
  }

  @override
  Future<List<NewsItemModel>> getFavouriteNews() async {
    try {
      return await localDataSource.getFavouriteNews();
    } catch (ex) {
      return [];
    }
  }

  @override
  Future saveFavouriteNews({@required NewsItem item}) async {
    await localDataSource.saveFavouriteNews(news: NewsItemModel.fromNewsItem(item));
  }
}
