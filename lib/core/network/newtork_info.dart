import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkInfoProtocol {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfoProtocol)
class NetworkInfo implements NetworkInfoProtocol {
  final DataConnectionChecker dataConnectionChecker;

  NetworkInfo({@required this.dataConnectionChecker});

  @override
  Future<bool> get isConnected => dataConnectionChecker.hasConnection;
}
