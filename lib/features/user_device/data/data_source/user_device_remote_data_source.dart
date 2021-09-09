import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/user_device/data/app_constant/constant.dart';
import 'package:wallet_app/features/user_device/data/model/user_device_model.dart';
import 'package:wallet_app/handlers/api_response_handler.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';

abstract class UserDeviceRemoteDataSource {
  Future<List<UserDeviceModel>> getUserDevices();
  Future<Unit> deleteDevice(int id);
}

@LazySingleton(as: UserDeviceRemoteDataSource)
class UserDeviceRemoteDataSourceImpl implements UserDeviceRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  UserDeviceRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.logger,
  });

  @override
  Future<Unit> deleteDevice(int id) async {
    final url =
        "${config.baseURL}${config.apiPath}${UserDeviceConstant.userDevicesDelete}/$id";
    final accessToken =
        getIt<AuthLocalDataSource>().getWalletUser().accessToken;

    _headers["Authorization"] = "Bearer $accessToken";
    try {
      final response = await client.delete(Uri.parse(url), headers: _headers);
      return APIResponseHandler.handle<Unit>(
          httpStatusCode: response.statusCode,
          onSuccess: () {
            return unit;
          },
          retryFunction: () => deleteDevice(id),
          other: () {
            logger.log(
              className: "UserDeviceRemoteDataSource",
              functionName: "deleteDevice()",
              errorText: "Error on API status code: ${response.statusCode}",
              errorMessage: response.body,
            );
            throw const ServerException(
                message: AppConstants.someThingWentWrong);
          });
    } catch (e) {
      logger.log(
        className: "UserDeviceRemoteDataSource",
        functionName: "deleteDevice()",
        errorText: "Error deleting user device with id $id",
        errorMessage: e.toString(),
      );
      throw const ServerException(message: AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<List<UserDeviceModel>> getUserDevices() async {
    final url =
        "${config.baseURL}${config.apiPath}${UserDeviceConstant.userDevices}";
    final accessToken =
        getIt<AuthLocalDataSource>().getWalletUser().accessToken;

    _headers["Authorization"] = "Bearer $accessToken";
    try {
      final response = await client.get(Uri.parse(url), headers: _headers);
      return APIResponseHandler.handle<List<UserDeviceModel>>(
          httpStatusCode: response.statusCode,
          onSuccess: () {
            final responseBody = utf8.decode(response.bodyBytes);
            final jsonBody = json.decode(responseBody) as Map<String, dynamic>;

            final data = jsonBody['user_devices'];
            return List<UserDeviceModel>.from((data as Iterable).map(
                (x) => UserDeviceModel.fromJson(x as Map<String, dynamic>)));
          },
          retryFunction: () => getUserDevices(),
          other: () {
            logger.log(
              className: "UserDeviceRemoteDataSource",
              functionName: "getUserDevices()",
              errorText: "Error on API status code: ${response.statusCode}",
              errorMessage: response.body,
            );
            throw const ServerException(
                message: AppConstants.someThingWentWrong);
          });
    } catch (e) {
      logger.log(
        className: "UserDeviceRemoteDataSource",
        functionName: "getUserDevices()",
        errorText: "Error getting user devices",
        errorMessage: e.toString(),
      );
      throw const ServerException(message: AppConstants.someThingWentWrong);
    }
  }
}
