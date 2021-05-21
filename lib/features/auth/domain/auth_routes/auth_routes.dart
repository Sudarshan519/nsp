import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_routes.freezed.dart';

@freezed
class AuthRoutes with _$AuthRoutes {
  const factory AuthRoutes.showHomeScreen() = ShowHomeScreen;
  const factory AuthRoutes.showSignUpScreen() = ShowSignUpScreen;
  const factory AuthRoutes.showSignInScreen() = ShowSignInScreen;
  const factory AuthRoutes.showEmailVerificationScreen(String email) =
      ShowEmailVerificationScreen;
}
