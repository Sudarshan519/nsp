import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/coupon/data/constants/constant.dart';
import 'package:wallet_app/features/coupon/data/model/coupon_code_model.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class CouponRemoteDataSource {
  Future<List<CouponCodeModel>> getCoupons();

  Future<CouponCodeModel> verifyCoupon({
    required String couponCode,
    required String productType,
    required int productId,
  });

  Future<CouponCodeModel> applyCoupon({
    required String couponCode,
  });

  Future<Unit> redeemCoupon({
    required String couponCode,
  });
}

@LazySingleton(as: CouponRemoteDataSource)
class CouponRemoteDataSourceImpl implements CouponRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  CouponRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  @override
  Future<List<CouponCodeModel>> getCoupons() async {
    final url =
        "${config.baseURL}${config.apiPath}${CouponEndpoints.couponList}";

    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "CouponRemoteDataSource",
        functionName: "getCoupons()",
        errorText: "Error fetching Coupons from API",
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
        final map = json.decode(responseBody) as Map<String, dynamic>;
        final couponCodes = map['coupon_codes'];
        if (couponCodes == null) {
          logger.log(
            className: "CouponRemoteDataSource",
            functionName: "getCoupons()",
            errorText: "coupon_codes is null",
            errorMessage: "coupon_codes is null",
          );
          return [];
        }
        return List<CouponCodeModel>.from(
          (couponCodes as Iterable).map(
            (x) => CouponCodeModel.fromJson(x as Map<String, dynamic>),
          ),
        );
      } catch (ex) {
        logger.log(
          className: "CouponRemoteDataSource",
          functionName: "getCoupons()",
          errorText: "Error casting from json to coupon list",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "CouponRemoteDataSource",
        functionName: "getCoupons()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
        message: errorMessageFromServer(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }

  @override
  Future<CouponCodeModel> verifyCoupon({
    required String couponCode,
    required String productType,
    required int productId,
  }) async {
    final params = {
      "coupon_code": couponCode,
      "product_type": productType,
      "product_id": productId,
    };

    final url =
        "${config.baseURL}${config.apiPath}${CouponEndpoints.couponVerify}";

    http.Response response;

    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken?.isEmpty ?? true) {
      //TODO: user access token is empty we have to redirect to login page.
    }

    _headers["Authorization"] = "Bearer $accessToken";

    try {
      response = await client.post(Uri.parse(url),
          headers: _headers, body: json.encode(params));
    } catch (ex) {
      logger.log(
        className: "CouponRemoteDataSource",
        functionName: "verifyCoupon()",
        errorText: "Error verify Coupons from API",
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
        final map = json.decode(responseBody) as Map<String, dynamic>;
        final couponCode = map['coupon_code'] as Map<String, dynamic>;
        return CouponCodeModel.fromJson(couponCode);
      } catch (ex) {
        logger.log(
          className: "CouponRemoteDataSource",
          functionName: "getCoupons()",
          errorText: "Error casting from json to coupon list",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "CouponRemoteDataSource",
        functionName: "getCoupons()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
        message: errorMessageFromServerWithError(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }

  @override
  Future<CouponCodeModel> applyCoupon({
    required String couponCode,
  }) async {
    final params = {
      "coupon_code": couponCode,
    };

    final url =
        "${config.baseURL}${config.apiPath}${CouponEndpoints.applyCoupon}";

    http.Response response;

    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken?.isEmpty ?? true) {
      //TODO: user access token is empty we have to redirect to login page.
    }

    _headers["Authorization"] = "Bearer $accessToken";

    try {
      response = await client.post(Uri.parse(url),
          headers: _headers, body: json.encode(params));
    } catch (ex) {
      logger.log(
        className: "CouponRemoteDataSource",
        functionName: "applyCoupon()",
        errorText: "Error verify Coupons from API",
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
        final map = json.decode(responseBody) as Map<String, dynamic>;
        final couponCode = map['coupon_code'] as Map<String, dynamic>;
        return CouponCodeModel.fromJson(couponCode);
      } catch (ex) {
        logger.log(
          className: "CouponRemoteDataSource",
          functionName: "applyCoupon()",
          errorText: "Error casting from json to coupon list",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "CouponRemoteDataSource",
        functionName: "applyCoupon()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
        message: errorMessageFromServerWithError(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }

  @override
  Future<Unit> redeemCoupon({
    required String couponCode,
  }) async {
    final params = {
      "coupon_code": couponCode,
    };

    final url =
        "${config.baseURL}${config.apiPath}${CouponEndpoints.couponVerify}";

    http.Response response;

    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken?.isEmpty ?? true) {
      //TODO: user access token is empty we have to redirect to login page.
    }

    _headers["Authorization"] = "Bearer $accessToken";

    try {
      response = await client.post(Uri.parse(url),
          headers: _headers, body: json.encode(params));
    } catch (ex) {
      logger.log(
        className: "CouponRemoteDataSource",
        functionName: "redeemCoupon()",
        errorText: "Error verify Coupons from API",
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
        className: "CouponRemoteDataSource",
        functionName: "redeemCoupon()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
        message: errorMessageFromServerWithError(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }
}
