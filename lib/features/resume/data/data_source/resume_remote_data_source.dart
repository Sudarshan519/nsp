import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
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
    @required String lang,
  });

  Future<Unit> updateResume({
    @required String lang,
    @required Map<String, dynamic> body,
  });
}

@LazySingleton(as: ResumeRemoteDataSource)
class ResumeRemoteDataSourceImpl implements ResumeRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;

  final _headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  ResumeRemoteDataSourceImpl({
    @required this.client,
    @required this.config,
    @required this.auth,
  })  : assert(client != null),
        assert(config != null),
        assert(auth != null);

  @override
  Future<Resume> getResumeData() async {
    http.Response response;
    final url =
        "${config.baseURL}${config.apiPath}${ResumeApiEndpoints.getResume}";
    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken.isEmpty) {
      //TODO: route user to login page as the user does not have uuid
    }

    _headers["Authorization"] = "Bearer $accessToken";

    try {
      response = await client.get(
        url,
        headers: _headers,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    if (response.statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      final resumeDataArray = resumeModelFromJson(responseBody);

      return Resume(
        userDetail: resumeDataArray.first.userDetail,
        resumeData: resumeDataArray.last.resumeData,
      );
    } else {
      throw ServerException(
          message: errorMessageFromServerWithMessage(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<String> downloadPdf({
    @required String lang,
  }) async {
    http.Response response;

    final url =
        "${config.resumeBaseUrl}${ResumeApiEndpoints.downloadResume}$lang";
    final uuid = (await auth.getUserDetail())?.uuid ?? "";

    if (uuid.isEmpty) {
      //TODO: route user to login page as the user does not have uuid
    }

    _headers["Authorization"] = "Bearer $uuid";

    try {
      response = await client.get(
        url,
        headers: _headers,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      if (responseJson["status"] == false) {
        throw ServerException(
            message: errorMessageFromServerWithMessage(response.body) ??
                AppConstants.someThingWentWrong);
      }
      return responseJson["download_link"] as String;
    } else {
      throw ServerException(
          message: errorMessageFromServerWithMessage(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<Unit> updateResume({
    @required String lang,
    @required Map<String, dynamic> body,
  }) async {
    http.Response response;

    final url =
        "${config.resumeBaseUrl}${ResumeApiEndpoints.updateProfile}$lang";
    final uuid = (await auth.getUserDetail())?.uuid ?? "";

    if (uuid.isEmpty) {
      //TODO: route user to login page as the user does not have uuid
    }

    _headers["Authorization"] = "Bearer $uuid";

    try {
      response = await client.post(
        url,
        headers: _headers,
        body: json.encode(body),
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      if (responseJson["status"] == false) {
        throw ServerException(
            message: errorMessageFromServerWithMessage(response.body) ??
                AppConstants.someThingWentWrong);
      }
      return unit;
    } else {
      throw ServerException(
          message: errorMessageFromServerWithMessage(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
