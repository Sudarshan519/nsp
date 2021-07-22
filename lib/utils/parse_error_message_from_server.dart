import 'dart:convert';

import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/utils/constant.dart';

final logger = getIt<Logger>();

String? errorMessageFromServer(String message) {
  try {
// convert the response body to a json map
    final data = json.decode(message) as Map<String, dynamic>;

    if (data['error'] is String?) {
      final err = data['error'] as String?;
      if (err != null && err.isNotEmpty) {
        return err;
      }
      return AppConstants.someThingWentWrong;
    }

    // search for a error key which is another json object
    final errorJson = data['error'] as Map<String, dynamic>;

    // get first key of the json error
    final errorKey = errorJson.keys.toList()[0];

    // get first error List
    final actualError = errorJson[errorKey] as List;

    return actualError[0] as String;
  } catch (ex) {
    logger.log(
      className: "Parse Message From Server",
      functionName: "errorMessageFromServer()",
      errorText: "Error on parsing message from server",
      errorMessage: ex.toString(),
    );

    return null;
  }
}

String? errorMessageFromServerWithError(String message) {
  try {
// convert the response body to a json map
    final data = json.decode(message) as Map<String, dynamic>;
    // search for a error key which is another json object
    if (data['error'] is String?) {
      final err = data['error'] as String?;
      if (err != null && err.isNotEmpty) {
        return err;
      }
    }
    return AppConstants.someThingWentWrong;
  } catch (ex) {
    logger.log(
      className: "Parse Message From Server",
      functionName: "errorMessageFromServerWithError()",
      errorText: "Error on parsing message from server",
      errorMessage: ex.toString(),
    );
    return null;
  }
}

String? errorMessageFromServerWithMessage(String message) {
  try {
// convert the response body to a json map
    final data = json.decode(message) as Map<String, dynamic>;
    // search for a error key which is another json object
    return data["message"] as String;
  } catch (ex) {
    logger.log(
      className: "Parse Message From Server",
      functionName: "errorMessageFromServerWithError()",
      errorText: "Error on parsing message from server",
      errorMessage: ex.toString(),
    );
    return null;
  }
}
