import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/repository/news_repository.dart';

@lazySingleton
class GetLatestNews
    implements UsecaseStream<ApiFailure, List<NewsItem>, NoParams> {
  final NewsRepositoryProtocol repository;
  final NetworkInfo networkInfo;

  int _page = 1;
  List<NewsItem> _news;

  GetLatestNews({
    @required this.repository,
    @required this.networkInfo,
  });

  @override
  Stream<Either<ApiFailure, List<NewsItem>>> call(NoParams params) async* {
    if (await networkInfo.isConnected) {
      final remoteData = await repository.getLatestNews(page: "$_page");
      yield* remoteData.fold(
        (failure) async* {
          yield Left(failure);
        },
        (news) async* {
          _page = int.parse(news.page) + 1;
          if (_news == null) {
            _news = news.data;
          } else {
            _news.addAll(news.data);
          }
          yield Right(_news);
        },
      );
    } else {
      yield const Left(ApiFailure.noInternetConnection());
    }
  }

  void resetPage() {
    _page = 1;
  }
}
