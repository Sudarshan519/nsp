import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/utils/config_reader.dart';

abstract class Logger {
  Future log({
    required String className,
    required String functionName,
    required String errorText,
    required String errorMessage,
  });
}

@LazySingleton(as: Logger)
class LoggerImpl implements Logger {
  final http.Client client;
  final ConfigReader config;

  LoggerImpl({
    required this.client,
    required this.config,
  });

  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  @override
  Future log({
    required String className,
    required String functionName,
    required String errorText,
    required String errorMessage,
  }) async {
    final url = '${config.baseURL}${config.apiPath}/api_error_log/save';

    final params = {
      "error_message": errorText,
      "function_name": "$className -> $functionName",
      "log": errorMessage
    };

    try {
      await client.post(
        Uri.parse(url),
        headers: _headers,
        body: json.encode(params),
      );
    } catch (ex) {
      debugPrint(ex.toString());
    }
  }
}
