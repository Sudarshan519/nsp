import 'package:flutter/foundation.dart';

class ServerException implements Exception {
  final String message;

  const ServerException({
    @required this.message,
  }) : assert(message != null);
}

class CacheException implements Exception {}
