import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/home/data/app_constant/constant.dart';
import 'package:wallet_app/features/home/data/model/home_data_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class HomePageRemoteDataSource {
  /// Calls the https://base_url/home_api/ endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<List<dynamic>> getHomePageData();
}

@LazySingleton(as: HomePageRemoteDataSource)
class HomePageRemoteDataSourceImpl implements HomePageRemoteDataSource {
  final http.Client client;
  final ConfigReader config;

  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  HomePageRemoteDataSourceImpl({
    @required this.client,
    @required this.config,
  })  : assert(client != null),
        assert(config != null);

  @override
  Future<List> getHomePageData() async {
    final url = "${config.baseURL}${config.apiPath}${HomeApiEndpoints.getHome}";

    http.Response response;

    try {
      response = await client.get(url, headers: _headers);
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      return homeModelFromJson(response.body);
    } else {
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
