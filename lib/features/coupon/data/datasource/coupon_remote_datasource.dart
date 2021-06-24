import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/coupon/data/constants/constant.dart';
import 'package:wallet_app/features/coupon/data/model/coupon_code_model.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class CouponRemoteDataSource {
  Future<List<CouponCodeModel>> getCoupons();
}

@LazySingleton(as: CouponRemoteDataSource)
class CouponRemoteDataSourceImpl implements CouponRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  CouponRemoteDataSourceImpl({
    required this.client,
    required this.config,
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
}
