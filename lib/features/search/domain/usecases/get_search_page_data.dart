import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/search/data/model/search_data_model.dart';
import 'package:wallet_app/features/search/domain/repositories/search_repository.dart';

@lazySingleton
class GetSearchPageData
    extends Usecase<ApiFailure, List<SearchDataModel>, String> {
  final SearchRepository repository;
  final NetworkInfo networkInfo;

  GetSearchPageData({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<SearchDataModel>>> call(
      String searchText) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    } else {
      return repository.getSearchPageData(searchText);
    }
  }
}

// class SearchParam {
//   SearchParam({
//     required this.searchPage,
//   });

//   final String searchPage;
// }
