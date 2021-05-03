import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class ProfileRemoteDataSource {
  Future<Unit> postProfileUpdate({
    @required String accessToken,
    @required Map<String, dynamic> params,
  });
}

@LazySingleton(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final http.Client client;
  final ConfigReader config;

  ProfileRemoteDataSourceImpl({
    @required this.client,
    @required this.config,
  })  : assert(client != null),
        assert(config != null);

  @override
  Future<Unit> postProfileUpdate({
    @required String accessToken,
    @required Map<String, dynamic> params,
  }) async {
    final url = "${config.baseURL}${config.apiPath}some_url";

    final _headers = {
      'Accept': 'application/json; charset=utf-8',
      "Content-Type": 'application/json; charset=utf-8',
      'Authorization': "Bearer $accessToken",
    };

    http.Response response;

    try {
      response = await client.get(url, headers: _headers);
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      return unit;
    } else {
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
