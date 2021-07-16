import 'dart:convert';
import 'dart:io';

import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/ads/data/constants/constant.dart';
import 'package:wallet_app/features/ads/data/models/ad_model.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/coupon/data/model/coupon_code_model.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class AdsRemoteDataSource {
  Future<AdsModel> getAds();
}

@LazySingleton(as: AdsRemoteDataSource)
class AdsRemoteDataSourceImpl implements AdsRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  AdsRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  @override
  Future<AdsModel> getAds() async {
    final platform = Platform.isAndroid ? AdPlatform.ANDROID : AdPlatform.IOS;
    final url =
        "${config.baseURL}${config.apiPath}${AdsApiEndpoints.getAds}$platform";

    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "AdsRemoteDataSource",
        functionName: "getAds()",
        errorText: "Error fetching ads from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      try {
        final jsonData = json.decode(responseBody) as Map<String, dynamic>;

        final ads = AdsModel.fromJson(jsonData);
        return ads;
      } catch (ex) {
        logger.log(
     className: "AdsRemoteDataSource",
        functionName: "getAds()",
          errorText: "Error casting from json to ads",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
         className: "AdsRemoteDataSource",
        functionName: "getAds()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
        message: errorMessageFromServer(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }
}
