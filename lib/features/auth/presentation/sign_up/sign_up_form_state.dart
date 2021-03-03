part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    @required String firstName,
    @required String lastName,
    @required String emailAddress,
    @required String password,
    @required String confirmPassword,
    @required bool isPasswordVisible,
    @required bool isConfirmPasswordVisible,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignUpFormState.initial() => SignUpFormState(
        firstName: '',
        lastName: '',
        emailAddress: '',
        password: '',
        confirmPassword: '',
        isPasswordVisible: false,
        isConfirmPasswordVisible: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
