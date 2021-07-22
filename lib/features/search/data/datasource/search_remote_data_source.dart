import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/search/data/app_constant/constant.dart';
import 'package:wallet_app/features/search/data/model/search_data_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class SearchPageRemoteDataSource {
  /// Calls the https://base_url/home_api/ endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<List<SearchDataModel>> getSearchPageData(String searchText);
}

@LazySingleton(as: SearchPageRemoteDataSource)
class SearchPageRemoteDataSourceImpl implements SearchPageRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  SearchPageRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  @override
  Future<List<SearchDataModel>> getSearchPageData(String searchText) async {
    final url =
        "${config.baseURL}${config.apiPath}${SearchApiEndpoints.search}$searchText";
    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken?.isEmpty ?? true) {
      //TODO: user access token is empty we have to redirect to login page.
    }

    _headers["Authorization"] = "Bearer $accessToken";

    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "SearchPageRemoteDataSource",
        functionName: "getSearchPageData()",
        errorText: "Error fetching data for search page via API",
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
        final jsonVal = json.decode(responseBody);
        final searchResponse = List<SearchDataModel>.from((jsonVal as Iterable)
            .map((x) => SearchDataModel.fromJson(x as Map<String, dynamic>)));
        return searchResponse;
      } catch (ex) {
        logger.log(
          className: "SearchPageRemoteDataSource",
          functionName: "getSearchPageData()",
          errorText: "Error casting from json to SearchDataModel",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "SearchPageRemoteDataSource",
        functionName: "getSearchPageData()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
