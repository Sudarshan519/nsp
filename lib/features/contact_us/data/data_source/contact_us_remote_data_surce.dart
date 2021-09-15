import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/features/contact_us/data/constant/constants.dart';
import 'package:wallet_app/features/contact_us/domain/use_case/contact_us.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class ContactUsRemoteDataSource {
  Future<Unit> contactUs(ContactUsParams params);
}

@LazySingleton(as: ContactUsRemoteDataSource)
class ContactUsRemoteDataSourceImpl implements ContactUsRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  ContactUsRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  @override
  Future<Unit> contactUs(ContactUsParams params) async {
    final url =
        "${config.baseURL}${config.apiPath}${ContactAPIEndPoint.contactUs}";

    http.Response response;
    final body = json.encode({
      'name': params.name,
      'email': params.email,
      'message': params.message,
    });

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _headers,
        body: body,
      );
    } catch (ex) {
      logger.log(
        className: "ContactUsRemoteDataSource",
        functionName: "contactUs()",
        errorText: "Error sending contact us data to API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      return unit;
    } else {
      logger.log(
        className: "ContactUsRemoteDataSource",
        functionName: "contactUs()",
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
