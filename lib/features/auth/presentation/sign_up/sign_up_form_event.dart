part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.changeFirstName(String name) = _ChangeFirstName;
  const factory SignUpFormEvent.changeLastName(String name) = _ChangeLastName;
  const factory SignUpFormEvent.changeEmail(String email) = _ChangeEmail;
  const factory SignUpFormEvent.changePassword(String password) =
      _ChangePassword;
  const factory SignUpFormEvent.showPassword() = _ShowPassword;
  const factory SignUpFormEvent.changeConfirmPassword(String password) =
      _ChangeConfirmPassword;
  const factory SignUpFormEvent.showConfirmPassword() = _ShowConfirmPassword;
  const factory SignUpFormEvent.signUpWithEmailPasswordAndOtherPressed() =
      _SignUpWithEmailPasswordAndOtherPressed;
  const factory SignUpFormEvent.signUpWithGooglePressed() =
      _SignUpWithGooglePressed;
  const factory SignUpFormEvent.signUpWithFacebookPressed() =
      _SignUpWithFacebookPressed;
  const factory SignUpFormEvent.signUpWithApplePressed() =
      _SignUpWithApplePressed;
}
