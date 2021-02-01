import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/repository/news_repository.dart';

class GetNews implements Usecase<ApiFailure, List<NewsItem>, NoParams> {
  final NewsRepositoryProtocol repository;
  final NetworkInfoProtocol networkInfo;

  int _page = 1;
  List<NewsItem> _news;

  GetNews({
    @required this.repository,
    @required this.networkInfo,
  });

  @override
  Stream<Either<ApiFailure, List<NewsItem>>> call(NoParams params) async* {
    if (_news == null) {
      final localData = await repository.getNewsFromLocalStorage();
      yield* localData.fold(
        (failure) async* {},
        (news) async* {
          yield Right(news.data);
        },
      );
    }

    if (await networkInfo.isConnected) {
      final remoteData = await repository.getNewsFromRemote(page: "_page");
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
}
