import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/alerts/data/constants/constant.dart';
import 'package:wallet_app/features/alerts/data/data_source/alerts_remote_data_source.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/domain/entity/weather_info.dart';
import 'package:wallet_app/features/alerts/domain/repositories/alert_repository.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/injections/injection.dart';

@LazySingleton(as: AlertRepository)
class AlertRepositoryImpl implements AlertRepository {
  final AlertRemoteDataSource dataSource;
  final Logger logger;

  AlertRepositoryImpl({
    required this.dataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, List<Alert>>> getAlerts({
    required int limit,
  }) {
    return _getAlerts(request: () {
      final params = _getParams(limit: limit);
      final data = getIt<AuthLocalDataSource>().getAlertLocation();

      if (data != null) {
        params.addAll({
          if (data.regionCode != -1) 'region_code': data.regionCode.toString(),
          if (data.cityCode != -1) 'city_code': data.cityCode.toString(),
          if (data.prefectureCode != -1)
            'prefecture_code': data.prefectureCode.toString(),
          if (data.villageCode != -1)
            'village_code': data.villageCode.toString(),
        });
      }
      return dataSource.getAlerts(params: params);
    });
  }

  @override
  Future<Either<ApiFailure, List<Alert>>> getEarthquake(
      {required int limit, String? code}) {
    return _getAlerts(request: () {
      return dataSource.getEarthquakes(
          params: _getParams(limit: limit, code: code));
    });
  }

  @override
  Future<Either<ApiFailure, List<Alert>>> getVolcanoes(
      {required int limit, String? code}) {
    return _getAlerts(request: () {
      return dataSource.getVolcanoes(
          params: _getParams(limit: limit, code: code));
    });
  }

  Map<String, String> _getParams({required int limit, String? code}) {
    return {
      "lang": AlertAppConstant.lang,
      "limit": "$limit",
      "from": AlertAppConstant.from,
      "to": AlertAppConstant.to,
      "client-name": AlertAppConstant.clientName,
      "client-token": AlertAppConstant.clientToken,
      if (code != null) 'code': code
    };
  }

  Future<Either<ApiFailure, List<Alert>>> _getAlerts({
    required Future<List<Alert>> Function() request,
  }) async {
    try {
      return Right(await request());
    } on ServerException catch (ex) {
      logger.log(
        className: "AlertRepository",
        functionName: "getAlerts()",
        errorText: "Error on getting alerts",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<WeatherInfo>>> getWeather() async {
    try {
      return Right(await dataSource.getWeather());
    } on ServerException catch (ex) {
      logger.log(
        className: "AlertRepository",
        functionName: "getWeather()",
        errorText: "Error on getting weather",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, AlertPlaces>> getAlertPlaces() async {
    try {
      return Right(await dataSource.getAlertPlaces());
    } on ServerException catch (ex) {
      logger.log(
        className: "AlertRepository",
        functionName: "getAlertPlaces()",
        errorText: "Error on getting alert places",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Place>> getPlaceFromGPS() async {
    try {
      return Right(await dataSource.getPlaceFromGPS());
    } on ServerException catch (ex) {
      logger.log(
        className: "AlertRepository",
        functionName: "getPlaceFromGPS()",
        errorText: "Error on getting place from gps",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
