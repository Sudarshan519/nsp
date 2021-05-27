import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

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

  LoggerImpl({
    required this.client,
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
    const url = 'https://nspdev.truestreamz.com/api/v1/api_error_log/save';

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
