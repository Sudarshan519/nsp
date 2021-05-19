import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/repository/news_repository.dart';

@lazySingleton
class GetFavouriteNews
    implements Usecase<ApiFailure, List<NewsItem>, NoParams> {
  final NewsRepositoryProtocol repository;

  GetFavouriteNews({
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, List<NewsItem>>> call(NoParams params) async {
    return Right(await repository.getFavouriteNews());
  }

  Future saveNews({
    required NewsItem item,
  }) {
    return repository.saveFavouriteNews(item: item);
  }
}
