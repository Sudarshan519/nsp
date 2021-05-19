import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/repository/news_repository.dart';

@lazySingleton
class GetLatestNews
    implements Usecase<ApiFailure, List<NewsItem>, GetLatestNewsParams> {
  final NewsRepositoryProtocol repository;
  final NetworkInfo networkInfo;

  GetLatestNews({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<NewsItem>>> call(
      GetLatestNewsParams params) async {
    if (await networkInfo.isConnected) {
      final remoteData = await repository.getLatestNews(page: params.page);
      return remoteData.fold(
        (failure) {
          return Left(failure);
        },
        (news) {
          return Right(news.data ?? []);
        },
      );
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetLatestNewsParams {
  final String page;

  GetLatestNewsParams({
    required this.page,
  });
}
