import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_genre.dart';
import 'package:wallet_app/features/news/domain/repository/news_repository.dart';

@lazySingleton
class GetNewsGenre implements Usecase<ApiFailure, List<Genre>, NoParams> {
  final NewsRepositoryProtocol repository;

  GetNewsGenre({
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, List<Genre>>> call(NoParams params) async {
    return repository.getGenreList();
  }

  Future saveGenre({
    required List<Genre> genre,
  }) {
    return repository.saveGenreList(genre: genre);
  }
}
