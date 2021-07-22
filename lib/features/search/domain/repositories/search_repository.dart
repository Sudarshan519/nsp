import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/search/data/model/search_data_model.dart';

abstract class SearchRepository {
  Future<Either<ApiFailure, List<SearchDataModel>>> getSearchPageData(
      String searchText);
}
