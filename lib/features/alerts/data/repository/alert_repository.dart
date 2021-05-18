import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/alerts/data/constants/constant.dart';
import 'package:wallet_app/features/alerts/data/data_source/alerts_remote_data_source.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/repositories/alert_repository.dart';

@LazySingleton(as: AlertRepository)
class AlertRepositoryImpl implements AlertRepository {
  final AlertRemoteDataSource dataSource;

  AlertRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<ApiFailure, List<Alert>>> getAlerts({
    required int limit,
  }) {
    return _getAlerts(request: () {
      return dataSource.getAlerts(params: _getParams(limit: limit));
    });
  }

  @override
  Future<Either<ApiFailure, List<Alert>>> getEarthquaked({
    required int limit,
  }) {
    return _getAlerts(request: () {
      return dataSource.getEarthquakes(params: _getParams(limit: limit));
    });
  }

  @override
  Future<Either<ApiFailure, List<Alert>>> getVolcanoes({
    required int limit,
  }) {
    return _getAlerts(request: () {
      return dataSource.getVolcanoes(params: _getParams(limit: limit));
    });
  }

  Map<String, String> _getParams({
    required int limit,
  }) {
    return {
      "lang": AlertAppConstant.lang,
      "limit": "$limit",
      "from": AlertAppConstant.from,
      "to": AlertAppConstant.to,
      "client-name": AlertAppConstant.clientName,
      "client-token": AlertAppConstant.clientToken,
    };
  }

  Future<Either<ApiFailure, List<Alert>>> _getAlerts({
    required Future<List<Alert>> Function() request,
  }) async {
    try {
      return Right(await request());
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
