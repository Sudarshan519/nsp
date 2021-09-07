import 'dart:convert';
import 'dart:io';

import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/auth/data/app_constant/constant.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/auth/data/model/wallet_user_model.dart';
import 'package:wallet_app/handlers/session_handler.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';

class APIResponseHandler {
  static Future<Type> handle<Type>({
    required int httpStatusCode,
    required Type Function() onSuccess,
    required Type Function() retryFunction,
    required Type Function() other,
  }) async {
    switch (httpStatusCode) {
      //200
      case HttpStatus.ok:
        return onSuccess();

      //401
      case HttpStatus.unauthorized:
        final auth = getIt<AuthLocalDataSource>();
        final user = auth.getWalletUser();

        final headers = {
          'Accept': 'application/json; charset=utf-8',
          "Content-Type": 'application/json; charset=utf-8',
        };

        final res = await http.post(
          Uri.parse(_getUrl()),
          headers: headers,
          body: json.encode({'refresh': user.refreshToken}),
        );

        if (res.statusCode == 200) {
          //todo parse accesstoken
          final accessToken = json.decode(res.body)['access'] as String;
          getIt<AuthLocalDataSource>().save(WalletUserModel.fromLocalStorage(
            user.toJSON()..['access_token'] = accessToken,
          ));
          return retryFunction();
        } else {
          SessionHandler.logout();
          throw const ServerException(message: AppConstants.sessionExpired);
        }

      default:
        return other();
    }
  }
}

String _getUrl() {
  final config = getIt<ConfigReader>();
  final end = AuthApiEndpoints.refreshToken;
  final url = "${config.baseURL}${config.apiPath}$end";
  return url;
}
