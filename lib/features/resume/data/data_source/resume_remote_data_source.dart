import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/resume/data/app_constant/constant.dart';
import 'package:wallet_app/features/resume/data/model/resume_model.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class ResumeRemoteDataSource {
  Future<Resume> getResumeData();

  Future<String> downloadPdf({
    required String lang,
  });

  Future<Unit> updateResume({
    required String lang,
    required Map<String, dynamic> body,
  });

  Future<Unit> updateKyc({
    required Map<String, dynamic> body,
  });
  Future<Unit> deleteResumeValue({
    required ResumeType type,
    required int id,
  });
}

@LazySingleton(as: ResumeRemoteDataSource)
class ResumeRemoteDataSourceImpl implements ResumeRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  ResumeRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  @override
  Future<Unit> deleteResumeValue({
    required ResumeType type,
    required int id,
  }) async {
    http.Response response;
    final resumeType = type.toString().split('.').first;
    final url =
        "${config.baseURL}${config.apiPath}${ResumeApiEndpoints.deleteResumeData}$id/$resumeType";
    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken == null || accessToken.isEmpty) {
      //TODO: route user to login page as the user does not have access token
    }

    _headers["Authorization"] = "Bearer $accessToken";

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "ResumeRemoteDataSource",
        functionName: "deleteResumeValue()",
        errorText: "Error deleting $resumeType",
        errorMessage: ex.toString(),
      );

      throw ServerException(
        message: ex.toString(),
      );
    }

    if (response.statusCode == 200) {
      return unit;
    } else {
      logger.log(
        className: "ResumeRemoteDataSource",
        functionName: "deleteResumeValue()",
        errorText: "Error on API status code: ${response.statusCode}",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServerWithMessage(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<Resume> getResumeData() async {
    http.Response response;
    final url =
        "${config.baseURL}${config.apiPath}${ResumeApiEndpoints.getResume}";
    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken == null || accessToken.isEmpty) {
      //TODO: route user to login page as the user does not have access token
    }

    _headers["Authorization"] = "Bearer $accessToken";

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "ResumeRemoteDataSource",
        functionName: "getResumeData()",
        errorText: "Error on getting resume data from API",
        errorMessage: ex.toString(),
      );

      throw ServerException(
        message: ex.toString(),
      );
    }

    if (response.statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      try {
        return resumeFromJson(responseBody);
      } catch (ex) {
        logger.log(
          className: "ResumeRemoteDataSource",
          functionName: "getResumeData()",
          errorText: "Error casting from json to Resume",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "ResumeRemoteDataSource",
        functionName: "getResumeData()",
        errorText: "Error on API status code: ${response.statusCode}",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServerWithMessage(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<String> downloadPdf({
    required String lang,
  }) async {
    http.Response response;

    final url =
        "${config.resumeBaseUrl}${ResumeApiEndpoints.downloadResume}$lang";
    final uuid = (await auth.getUserDetail()).uuid ?? "";

    if (uuid.isEmpty) {
      //TODO: route user to login page as the user does not have uuid
    }

    _headers["Authorization"] = "Bearer $uuid";

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "ResumeRemoteDataSource",
        functionName: "downloadPdf()",
        errorText: "Error on downloading pdf from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      if (responseJson["status"] == false) {
        logger.log(
          className: "ResumeRemoteDataSource",
          functionName: "downloadPdf()",
          errorText: "Error on API status code: ${response.statusCode}",
          errorMessage: response.body,
        );
        throw ServerException(
            message: errorMessageFromServerWithMessage(response.body) ??
                AppConstants.someThingWentWrong);
      }
      return responseJson["download_link"] as String;
    } else {
      logger.log(
        className: "ResumeRemoteDataSource",
        functionName: "downloadPdf()",
        errorText: "Error on API status code: ${response.statusCode}",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServerWithMessage(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<Unit> updateResume({
    required String lang,
    required Map<String, dynamic> body,
  }) async {
    http.Response response;
    final url =
        "${config.baseURL}${config.apiPath}${ResumeApiEndpoints.updateProfile}$lang";
    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken == null || accessToken.isEmpty) {
      //TODO: route user to login page as the user does not have uuid
    }

    _headers["Authorization"] = "Bearer $accessToken";

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _headers,
        body: json.encode(body),
      );
    } catch (ex) {
      logger.log(
        className: "ResumeRemoteDataSource",
        functionName: "updateResume()",
        errorText: "Error on updating resume via API",
        errorMessage: ex.toString(),
      );

      throw ServerException(
        message: ex.toString(),
      );
    }

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      if (responseJson["status"] == false) {
        logger.log(
          className: "ResumeRemoteDataSource",
          functionName: "updateResume()",
          errorText: "Error on API status code: ${response.statusCode}",
          errorMessage: response.body,
        );
        throw ServerException(
            message: errorMessageFromServerWithMessage(response.body) ??
                AppConstants.someThingWentWrong);
      }
      return unit;
    } else {
      logger.log(
        className: "ResumeRemoteDataSource",
        functionName: "updateResume()",
        errorText: "Error on API status code: ${response.statusCode}",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<Unit> updateKyc({
    required Map<String, dynamic> body,
  }) async {
    body["is_kyc"] = true;
    return updateResume(lang: "en", body: body);
  }
}
