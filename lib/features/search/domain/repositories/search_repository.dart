import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/home/data/model/home_data_model.dart';

@injectable
abstract class SearchRepository {
  Future<Either<ApiFailure, List<HomeDataModel>>> getSearchPageData(
      String searchText);
}
