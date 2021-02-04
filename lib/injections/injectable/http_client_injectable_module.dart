import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class HttpClientInjectableModule {
  // @LazySingleton(as: http.Client)
  http.Client get client => http.Client();
}
