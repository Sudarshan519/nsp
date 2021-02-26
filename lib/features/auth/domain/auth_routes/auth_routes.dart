import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_routes.freezed.dart';

@freezed
abstract class AuthRoutes with _$AuthRoutes {
  const factory AuthRoutes.showHomeScreen() = ShowHomeScreen;
  const factory AuthRoutes.showSignUpScreen() = ShowSignUpScreen;
  const factory AuthRoutes.showSignInScreen() = ShowSignInScreen;
  const factory AuthRoutes.showEmailVerificationScreen(String email) =
      ShowEmailVerificationScreen;
}
