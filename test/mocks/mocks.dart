import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:wallet_app/features/home/data/datasource/home_remote_data_source.dart';
import 'package:wallet_app/features/home/domain/repositories/home_repository.dart';
import 'package:wallet_app/features/home/domain/usecases/get_home_page_data.dart';
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
  String get resumeBaseUrl => "";

  @override
  Future<void> initialize() {
    return Future.value();
  }

  @override
  bool get isDebugApp => true;
}

// AUTH MOCK
class MockAuthRemoteDataSourceProtocol extends Mock
    implements AuthRemoteDataSource {}

class MockAuthLocalDataSourceProtocol extends Mock
    implements AuthLocalDataSource {}

class MockGoogleSignIn extends Mock implements GoogleSignIn {}

// Home Mock
class MockHomePageRemoteDataSource extends Mock
    implements HomePageRemoteDataSource {}

class MockHomeReporisitory extends Mock implements HomeReporisitory {}

class MockGetHomePageData extends Mock implements GetHomePageData {}
