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
import 'package:wallet_app/features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart';
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
    required int page,
  }) {
    return _getAlerts(
      request: () {
        return dataSource.getAlerts(params: _getParams(page: page));
      },
    );
  }

  @override
  Future<Either<ApiFailure, List<Alert>>> getEarthquake({
    String? code,
    required int offset,
  }) {
    final params = _getParams(code: code, offset: offset);
    return _getAlerts(request: () {
      return dataSource.getEarthquakes(params: params);
    });
  }

  @override
  Future<Either<ApiFailure, List<Alert>>> getVolcanoes({
    String? code,
    required int offset,
  }) {
    final params = _getParams(code: code, offset: offset);
    return _getAlerts(request: () => dataSource.getVolcanoes(params: params));
  }

  Map<String, String> _getParams({int? page, int? offset, String? code}) {
    final Place? individualAlert =
        getIt<AuthLocalDataSource>().getAlertLocation();
    final List<Place> groupAlert =
        getIt<GetAlertLocationBloc>().otherPrefectures;
    final List<Place> datalist = groupAlert;

    final List<int> prefectureCodeList = [];
    final List<int> cityCodeList = [];
    final List<int> regionCodeList = [];
    final List<int> villageCodeList = [];

    for (final item in datalist) {
      if (item.prefectureCode != -1) {
        prefectureCodeList.add(item.prefectureCode);
      }
      if (item.cityCode != -1) cityCodeList.add(item.cityCode);
      if (item.regionCode != -1) regionCodeList.add(item.regionCode);
      if (item.villageCode != -1) villageCodeList.add(item.villageCode);
    }

    final params = {
      "lang": AlertAppConstant.lang,
      "limit": "10",
      if (offset != null) 'offset': '$offset',
      if (page != null) 'page': '$page',
      "from": AlertAppConstant.from,
      "to": AlertAppConstant.to,
      "client-name": AlertAppConstant.clientName,
      "client-token": AlertAppConstant.clientToken,
      if (code != null) 'code': code,
      if (prefectureCodeList.isNotEmpty)
        'prefectures': prefectureCodeList.toSet().toList().toString(),
      if (cityCodeList.isNotEmpty)
        'cities': cityCodeList.toSet().toList().toString(),
      if (regionCodeList.isNotEmpty)
        'regions': regionCodeList.toSet().toList().toString(),
      if (villageCodeList.isNotEmpty)
        'villages': villageCodeList.toSet().toList().toString(),
    };

    return params;
  }

  Future<Either<ApiFailure, List<Alert>>> _getAlerts({
    required Future<List<Alert>> Function() request,
  }) async {
    try {
      final result = await request();

      return Right(result);
    } on ServerException catch (ex) {
      logger.log(
        className: "AlertRepository",
        functionName: "_getAlerts()",
        errorText: "Error on getting alert",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<WeatherInfo>>> getWeather() async {
    ///Old params
    //  final params = {
    //   "client-name": AlertAppConstant.clientName,
    //   "client-token": AlertAppConstant.clientToken,
    //   'type': '2',
    //   'lang': 'en',
    // };
    try {
      final List<WeatherInfo> output = [];
      final individualAlert = getIt<AuthLocalDataSource>().getAlertLocation();
      final groupAlert = getIt<GetAlertLocationBloc>().otherPrefectures;
      // final datalist = [individualAlert, ...groupAlert];
      final datalist = groupAlert;

      //since there is no api to get details of multiple city/prefacture code at once,
      //we are hitting api request in a loop and returning the output as a single list

      for (final element in datalist) {
        final params = _getParams();
        params['type'] = '2';
        final res = await dataSource.getWeather(params: params);
        output.addAll(res);
      }
      return Right(output);
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

  ///This method not only gets place from GPS but also registers firebase token for alert notification
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
