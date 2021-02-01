import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';

abstract class NewsLocalDataSourceProtocol {
  /// Return [NewsModel] From Database if available.
  ///
  /// Throws [CacheException] for all error codes.
  ///
  Future<NewsModel> getNews();
  void saveNews({@required NewsModel news});
}
