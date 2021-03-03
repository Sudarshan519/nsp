part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required String emailAddress,
    @required String password,
    @required bool isSubmitting,
    @required bool isPasswordVisible,
    @required bool bioMetricLogin,
    @required Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: '',
        password: '',
        isSubmitting: false,
        bioMetricLogin: false,
        isPasswordVisible: false,
        authFailureOrSuccessOption: none(),
      );
}
