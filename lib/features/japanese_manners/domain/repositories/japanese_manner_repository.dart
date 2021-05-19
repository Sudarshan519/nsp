import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_categories.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_list.dart';

abstract class JapaneseMannerRepository {
  Future<Either<ApiFailure, JapaneseMannerList>> getJapaneseManner({
    required JapaneseMannerCategory category,
  });
  Future<Either<ApiFailure, List<JapaneseMannerCategory>>>
      getJapaneseMannerCategories();
}
