import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/geo_location/geo_location.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/partner_services/data/model/service_subscription_model.dart';
import 'package:wallet_app/features/utility_payments/data/constants/constant.dart';
import 'package:wallet_app/features/utility_payments/data/models/nea_customer_info.dart';
import 'package:wallet_app/features/utility_payments/data/models/nea_office_model.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/nea_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/nea_office.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/electicity/enquiry_nea.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class UtilityPaymentDataSource {
  Future<Unit> topupBalance({
    required String productId,
    required String amount,
    required String number,
    required String type,
    required String coupon,
  });

  Future<ServiceSubscriptionModel> getSubscriptionDetailForPartnerService({
    required String subscriptionId,
  });

  Future<Unit> paymentForPackagesPurchase({
    required List<SubscriptionInvoiceModel> invoice,
    required String coupon,
    required int productId,
  });
  Future<List<NEAOfficeModel>> getNeaOffices();
  Future<Unit> payNea(NeaCustomerInfo customerData);
  Future<NeaCustomerInfo> enquiryNea(EnquiryNeaParams params);
}

@LazySingleton(as: UtilityPaymentDataSource)
class UtilityPaymentDataSourceImpl implements UtilityPaymentDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  UtilityPaymentDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  final _header = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  @override
  Future<Unit> topupBalance({
    required String productId,
    required String amount,
    required String number,
    required String type,
    required String coupon,
  }) async {
    final url =
        "${config.baseURL}${config.apiPath}${UtilityPaymentsApiEndpoints.topup}$type";

    final accessToken = auth.getWalletUser().accessToken;

    _header["Authorization"] = "Bearer $accessToken";

    http.Response response;

    final params = {
      "product_id": int.parse(productId),
      "phone_number": number,
      "amount": amount,
      "gps": getIt<GeoLocationManager>().gps,
    };

    if (coupon.isNotEmpty) {
      params['coupon_code'] = coupon;
    }

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: json.encode(params),
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200 || statusCode == 201) {
      return unit;
    } else {
      logger.log(
        className: "UtilityPaymentDataSource",
        functionName: "topupBalance() | $type",
        errorText: "Status code: $statusCode",
        errorMessage: response.body,
      );

      throw ServerException(
        message: errorMessageFromServer(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }

  @override
  Future<ServiceSubscriptionModel> getSubscriptionDetailForPartnerService({
    required String subscriptionId,
  }) async {
    final url =
        "${config.baseURL}${config.apiPath}${UtilityPaymentsApiEndpoints.getMiraiSubscription}";

    http.Response response;

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: json.encode({'subscription_id': subscriptionId}),
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200) {
      try {
        return serviceSubscriptionModelFromJson(response.body);
      } catch (ex) {
        logger.log(
          className: "UtilityPaymentDataSource",
          functionName: "getMirailifeSubscriptionDetail() | $subscriptionId",
          errorText: "Error on parsing",
          errorMessage: ex.toString(),
        );
        throw const ServerException(
          message: AppConstants.someThingWentWrong,
        );
      }
    } else if (statusCode == 404) {
      logger.log(
        className: "UtilityPaymentDataSource",
        functionName: "getMirailifeSubscriptionDetail() | $subscriptionId",
        errorText: "Status code: $statusCode",
        errorMessage: response.body,
      );
      throw const ServerException(
        message: "Subscription id did not match. Please try again.",
      );
    } else {
      logger.log(
        className: "UtilityPaymentDataSource",
        functionName: "getMirailifeSubscriptionDetail() | $subscriptionId",
        errorText: "Status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
        message: errorMessageFromServer(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }

  @override
  Future<Unit> paymentForPackagesPurchase({
    required List<SubscriptionInvoiceModel> invoice,
    required String coupon,
    required int productId,
  }) async {
    final url =
        "${config.baseURL}${config.apiPath}${UtilityPaymentsApiEndpoints.payMiraiSubscription}";

    final accessToken = auth.getWalletUser().accessToken;

    _header["Authorization"] = "Bearer $accessToken";

    http.Response response;

    final params = {
      'product_id': productId,
      "invoices": invoice.map((invoice) => invoice.toJson()).toList(),
      "gps": getIt<GeoLocationManager>().gps,
    };

    if (coupon.isNotEmpty) {
      params['coupon'] = coupon;
    }

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: json.encode(params),
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200 || statusCode == 201) {
      return unit;
    } else {
      logger.log(
        className: "UtilityPaymentDataSource",
        functionName: "paymentForPackages()",
        errorText: "Status code: $statusCode",
        errorMessage: response.body,
      );

      throw ServerException(
        message: errorMessageFromServerWithError(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }

  @override
  Future<List<NEAOfficeModel>> getNeaOffices() async {
    final url =
        "${config.baseURL}${config.apiPath}${UtilityPaymentsApiEndpoints.neaOffices}";
    final accessToken = auth.getWalletUser().accessToken;

    _header["Authorization"] = "Bearer $accessToken";

    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _header,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200) {
      try {
        final jsonBody = json.decode(response.body) as Map<String, dynamic>;

        final data = jsonBody['data'];
        return List<NEAOfficeModel>.from((data as Iterable)
            .map((x) => NEAOfficeModel.fromJson(x as Map<String, dynamic>)));
      } catch (ex) {
        logger.log(
          className: "UtilityPaymentDataSource",
          functionName: "getNeaOffices()",
          errorText: "Error on getting nea offices",
          errorMessage: ex.toString(),
        );
        throw const ServerException(
          message: AppConstants.someThingWentWrong,
        );
      }
    } else if (statusCode == 404) {
      logger.log(
        className: "UtilityPaymentDataSource",
        functionName: "getNeaOffices() ",
        errorText: "Status code: $statusCode",
        errorMessage: response.body,
      );
      throw const ServerException(
        message: "Subscription id did not match. Please try again.",
      );
    } else {
      logger.log(
        className: "UtilityPaymentDataSource",
        functionName: "getNeaOffices()",
        errorText: "Status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
        message: errorMessageFromServer(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }

  @override
  Future<NeaCustomerInfo> enquiryNea(EnquiryNeaParams params) async {
    final url =
        "${config.baseURL}${config.apiPath}${UtilityPaymentsApiEndpoints.neaDetail}";
    final accessToken = auth.getWalletUser().accessToken;

    _header["Authorization"] = "Bearer $accessToken";
    final body = json.encode(params.toJson());

    http.Response response;

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: body,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200) {
      try {
        return neaCustomerInfoFromJson(response.body);
      } catch (ex) {
        logger.log(
          className: "UtilityPaymentDataSource",
          functionName: "getNeaOffices()",
          errorText: "Error on getting nea offices",
          errorMessage: ex.toString(),
        );
        throw const ServerException(
          message: AppConstants.someThingWentWrong,
        );
      }
    } else {
      logger.log(
        className: "UtilityPaymentDataSource",
        functionName: "getNeaOffices()",
        errorText: "Status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
        message: errorMessageFromServer(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }

  @override
  Future<Unit> payNea(NeaCustomerInfo customerData) async {
    final url =
        "${config.baseURL}${config.apiPath}${UtilityPaymentsApiEndpoints.neaDetail}";
    final accessToken = auth.getWalletUser().accessToken;

    _header["Authorization"] = "Bearer $accessToken";
    final body = json.encode({
      'office_code': customerData.officeCode,
      'account': customerData.account,
      'customer_id': customerData.customerId,
      'product_id': customerData.productId,
    });

    http.Response response;

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: body,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200) {
      return unit;
    } else {
      logger.log(
        className: "UtilityPaymentDataSource",
        functionName: "payNea()",
        errorText: "Status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
        message: errorMessageFromServer(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }
}
