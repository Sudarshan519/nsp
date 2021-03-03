import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/database/news_provider.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';

abstract class NewsLocalDataSourceProtocol {
  /// Return [NewsModel] From Database if available.
  ///
  /// Throws [CacheException] for all error codes.
  ///
  Future<NewsModel> getNews();
  Future saveNews({@required NewsModel news});
}

@LazySingleton(as: NewsLocalDataSourceProtocol)
class NewsLocalDataSource implements NewsLocalDataSourceProtocol {
  final NewsLocalProvider localProvider;

  NewsLocalDataSource({
    @required this.localProvider,
  });

  @override
  Future<NewsModel> getNews() async {
    // final news = await localProvider.getNews();
    // if (news != null) {
    //   return news;
    // }
    throw CacheException();
  }

  @override
  Future saveNews({NewsModel news}) async {
    if (news != null && news.data != null && news.source != null) {
      await localProvider.insert(news);
    }
  }
}
