import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/app_update/data/constant/constants.dart';
import 'package:wallet_app/features/app_update/data/model/app_update_model.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/handlers/api_response_handler.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class AppUpdateRemoteDataSource {
  Future<AppUpdateModel> getUpdateData();
}

@LazySingleton(as: AppUpdateRemoteDataSource)
class AppUpdateRemoteDataSourceImpl implements AppUpdateRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  AppUpdateRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  @override
  Future<AppUpdateModel> getUpdateData() async {
    http.Response response;

    final url =
        "${config.baseURL}${config.apiPath}${AppUpdateConstants.versionCheck}";

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "AppUpdateRemoteDataSource",
        functionName: "getUpdateData()",
        errorText: "Error on getting app update details",
        errorMessage: ex.toString(),
      );

      throw ServerException(
        message: ex.toString(),
      );
    }
    return APIResponseHandler.handle<AppUpdateModel>(
        httpStatusCode: response.statusCode,
        onSuccess: () {
          final responseBody = utf8.decode(response.bodyBytes);
          try {
            return AppUpdateModel.fromJson(
                json.decode(responseBody) as Map<String, dynamic>);
          } catch (ex) {
            logger.log(
              className: "AppUpdateRemoteDataSource",
              functionName: "getUpdateData()",
              errorText: "Error casting from json to app update data",
              errorMessage: ex.toString(),
            );
            throw const ServerException(
                message: AppConstants.someThingWentWrong);
          }
        },
        retryFunction: () => getUpdateData(),
        other: () {
          logger.log(
            className: "AppUpdateRemoteDataSource",
            functionName: "getUpdateData()",
            errorText: "Error on API status code: ${response.statusCode}",
            errorMessage: response.body,
          );
          throw ServerException(
              message: errorMessageFromServerWithMessage(response.body) ??
                  AppConstants.someThingWentWrong);
        });
  }
}
