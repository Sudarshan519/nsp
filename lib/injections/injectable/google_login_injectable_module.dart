import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

@module
abstract class GoogleLoginInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
        scopes: [
          'email',
        ],
      );
}
