import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_preference.dart';
import 'package:wallet_app/features/news/domain/repository/news_repository.dart';

@lazySingleton
class GetNewsPreferences
    implements Usecase<ApiFailure, List<NewsPreference>, NoParams> {
  final NewsRepositoryProtocol repository;

  GetNewsPreferences({
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, List<NewsPreference>>> call(NoParams params) async {
    return repository.getPreferenceList();
  }

  Future savePreferences({
    required List<NewsPreference> preference,
  }) {
    return repository.saveNewsPreferences(preference: preference);
  }
}
