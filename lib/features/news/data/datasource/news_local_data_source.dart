import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/database/news_provider.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/news/data/model/news_item_model.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';

abstract class NewsLocalDataSourceProtocol {
  /// Return [NewsModel] From Database if available.
  ///
  /// Throws [CacheException] for all error codes.
  ///
  Future<NewsModel> getNewsForYou();

  /// Return [NewsModel] From Database if available.
  ///
  /// Throws [CacheException] for all error codes.
  ///
  Future<List<NewsItemModel>> getFavouriteNews();

  Future saveNews({@required NewsModel news});
  Future saveFavouriteNews({@required NewsItemModel news});
}

@LazySingleton(as: NewsLocalDataSourceProtocol)
class NewsLocalDataSource implements NewsLocalDataSourceProtocol {
  final NewsLocalProvider localProvider;

  NewsLocalDataSource({
    @required this.localProvider,
  });

  @override
  Future<NewsModel> getNewsForYou() async {
    // final news = await localProvider.getNews();
    // if (news != null) {
    //   return news;
    // }
    throw CacheException();
  }

  @override
  Future<List<NewsItemModel>> getFavouriteNews() async {
    final news = await localProvider.getFavouriteNews();
    if (news != null) {
      return news;
    }
    return [];
  }

  @override
  Future saveNews({NewsModel news}) async {
    if (news != null && news.data != null && news.source != null) {
      await localProvider.insertNewsForYou(news);
    }
  }

  @override
  Future saveFavouriteNews({@required NewsItemModel news}) async {
    if (news != null) {
      await localProvider.insertFavouriteNews(news);
    }
  }
}
