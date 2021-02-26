part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    @required String firstName,
    @required String lastName,
    @required String emailAddress,
    @required String password,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignUpFormState.initial() => SignUpFormState(
        firstName: '',
        lastName: '',
        emailAddress: '',
        password: '',
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
