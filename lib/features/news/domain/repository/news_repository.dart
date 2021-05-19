import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/news/domain/entity/news.dart';
import 'package:wallet_app/features/news/domain/entity/news_genre.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/entity/news_preference.dart';

abstract class NewsRepositoryProtocol {
  Future<Either<ApiFailure, News>> getNewsForYou({
    required String page,
  });

  Future<Either<ApiFailure, News>> getLatestNews({
    required String page,
  });

  Future<List<NewsItem>> getFavouriteNews();
  Future saveFavouriteNews({
    required NewsItem item,
  });

  Future<Either<ApiFailure, List<Genre>>> getGenreList();
  Future<Either<ApiFailure, List<NewsPreference>>> getPreferenceList();
  Future saveGenreList({
    required List<Genre> genre,
  });
  Future saveNewsPreferences({
    required List<NewsPreference> preference,
  });
}
