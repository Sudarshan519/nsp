import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/home/data/app_constant/constant.dart';
import 'package:wallet_app/features/home/data/model/home_data_model.dart';
import 'package:wallet_app/features/home/data/model/home_response_model.dart';
import 'package:wallet_app/features/home/data/model/user_detail_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class HomePageRemoteDataSource {
  /// Calls the https://base_url/home_api/ endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<HomeResponseModel> getHomePageData();
}

@LazySingleton(as: HomePageRemoteDataSource)
class HomePageRemoteDataSourceImpl implements HomePageRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;

  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  HomePageRemoteDataSourceImpl({
    @required this.client,
    @required this.config,
    @required this.auth,
  })  : assert(client != null),
        assert(config != null),
        assert(auth != null);

  @override
  Future<HomeResponseModel> getHomePageData() async {
    final url = "${config.baseURL}${config.apiPath}${HomeApiEndpoints.getHome}";
    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken.isEmpty) {
      //TODO: user access token is empty we have to redirect to login page.
    }

    _headers["Authorization"] = "Bearer $accessToken";

    http.Response response;

    try {
      response = await client.get(url, headers: _headers);
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final homeResponse = homeResponseModelFromJson(response.body);
      final userDetails = homeResponse.first.userDetail as UserDetailModel;
      final homeData = homeResponse.last.homeData as List<HomeDataModel>;

      return HomeResponseModel(userDetail: userDetails, homeData: homeData);
    } else {
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
