import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:http/http.dart' as http;

//cores

class MockHttpClient extends Mock implements http.Client {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

class MockConfigReader implements ConfigReader {
  @override
  String get apiPath => "";

  @override
  String get baseURL => "";

  @override
  Future<void> initialize() {
    return Future.value(1);
  }

  @override
  bool get isDebugApp => true;
}

// AUTH MOCK
class MockAuthRemoteDataSourceProtocol extends Mock
    implements AuthRemoteDataSourceProtocol {}

class MockAuthLocalDataSourceProtocol extends Mock
    implements AuthLocalDataSourceProtocol {}
