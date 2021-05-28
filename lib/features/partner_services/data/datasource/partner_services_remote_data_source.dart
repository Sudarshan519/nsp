import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/partner_services/data/app_constant/constant.dart';
import 'package:wallet_app/features/partner_services/data/model/service_list_model.dart';
import 'package:wallet_app/features/partner_services/data/model/services_categories_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class PartnerServicesRemoteDataSource {
  Future<PartnerServicesListModel> getPartnerServices({
    required String name,
  });
  Future<List<ServicesCategoryModel>> getJapaneseMannerCategories();
}

@LazySingleton(as: PartnerServicesRemoteDataSource)
class PartnerServicesRemoteDataSourceImpl
    implements PartnerServicesRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final Logger logger;
  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  PartnerServicesRemoteDataSourceImpl(
      {required this.client, required this.config, required this.logger});

  @override
  Future<PartnerServicesListModel> getPartnerServices({
    required String name,
  }) async {
    final url =
        "${config.baseURL}${config.apiPath}${PartnerServicesApiEndpoints.getPartnerServicesViaName}$name";
    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "PartnerServicesRemoteDataSource",
        functionName: "getPartnerServices()",
        errorText: "Error on getting partner services from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      return partnerServiceListFromJson(responseBody);
    } else {
      logger.log(
          className: "PartnerServicesRemoteDataSource",
          functionName: "getPartnerServices()",
          errorText: "Error on API status code: $statusCode",
          errorMessage: response.body);
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<List<ServicesCategoryModel>> getJapaneseMannerCategories() async {
    final url =
        "${config.baseURL}${config.apiPath}${PartnerServicesApiEndpoints.getPartnerServicesCategories}";
    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "PartnerServicesRemoteDataSource",
        functionName: "getJapaneseMannerCategories()",
        errorText: "Error on getting Japanese Manner Categories from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      final jsonMap = json.decode(responseBody) as Map<String, dynamic>;
      if ((jsonMap["status"] as bool) == true) {
        return List<ServicesCategoryModel>.from(
          (jsonMap["categories"] as Iterable).map(
            (x) => ServicesCategoryModel.fromJson(x as Map<String, dynamic>),
          ),
        );
      } else {
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
          className: "PartnerServicesRemoteDataSource",
          functionName: "getJapaneseMannerCategories()",
          errorText: "Error on API status code: $statusCode",
          errorMessage: response.body);

      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
