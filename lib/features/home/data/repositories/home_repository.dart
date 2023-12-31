import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/home/data/datasource/home_remote_data_source.dart';
import 'package:wallet_app/features/home/data/model/home_response_model.dart';
import 'package:wallet_app/features/home/domain/repositories/home_repository.dart';

@LazySingleton(as: HomeReporisitory)
class HomeRepositoryImpl implements HomeReporisitory {
  final HomePageRemoteDataSource remoteDataSource;
  Logger logger;

  HomeRepositoryImpl({
    required this.remoteDataSource,
    required this.logger,
  });

  @override
  Stream<Either<ApiFailure, HomeResponseModel>> getHomePageData() async* {
    //TODO: add a network option to show user that internet is down
    // TODO: also add a local data source to fetch and store the data
    try {
      yield Right(await remoteDataSource.getHomePageData());
    } on ServerException catch (ex) {
      logger.log(
        className: "HomeReporisitory",
        functionName: "getHomePageData()",
        errorText: "Error gettig home page data from remote",
        errorMessage: ex.toString(),
      );
      yield Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
