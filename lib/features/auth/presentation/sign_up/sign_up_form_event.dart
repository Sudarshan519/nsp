part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.changeFirstName(String name) = _ChangeFirstName;
  const factory SignUpFormEvent.changeLastName(String name) = _ChangeLastName;
  const factory SignUpFormEvent.changeEmail(String email) = _ChangeEmail;
  const factory SignUpFormEvent.changePassword(String password) =
      _ChangePassword;
  const factory SignUpFormEvent.signUpWithEmailPasswordAndOtherPressed() =
      _SignUpWithEmailPasswordAndOtherPressed;
}
