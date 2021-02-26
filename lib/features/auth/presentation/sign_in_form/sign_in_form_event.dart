part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String email) = _EmailChanged;
  const factory SignInFormEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      _SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      _SignInWithGooglePressed;
  const factory SignInFormEvent.signInWithFacebookPressed() =
      _SignInWithFacebookPressed;
  const factory SignInFormEvent.signInWithApplePressed() =
      _SignInWithApplePressed;
  const factory SignInFormEvent.signUpPressed() = _SignUpPressed;
  const factory SignInFormEvent.fetchRefreshToken() = _FetchRefreshToken;
  const factory SignInFormEvent.signInWithBioMetricInfo() =
      _SignInWithBioMetricInfo;
}
