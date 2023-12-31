import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/auth_routes/auth_routes.dart';
import 'package:wallet_app/features/auth/domain/usecase/sign_in_with_apple.dart';
import 'package:wallet_app/features/auth/domain/usecase/sign_in_with_facebook.dart';
import 'package:wallet_app/features/auth/domain/usecase/sign_in_with_google.dart';
import 'package:wallet_app/features/auth/domain/usecase/sign_up_user.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final SignUpWithEmailPasswordAndUserDetail signUpWithEmailUsecase;
  final SignInWithApple signInWithApple;
  final SignInWithFacebook signInWithFacebook;
  final SignInWithGoogle signInWithGoogle;

  SignUpFormBloc({
    required this.signUpWithEmailUsecase,
    required this.signInWithApple,
    required this.signInWithFacebook,
    required this.signInWithGoogle,
  }) : super(SignUpFormState.initial());

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(
      changeFirstName: (e) async* {
        yield _mapChangeFirstNameToState(e);
      },
      changeLastName: (e) async* {
        yield _mapChangeLastNameToState(e);
      },
      changeEmail: (e) async* {
        yield _mapChangeEmailToState(e);
      },
      changePassword: (e) async* {
        yield _mapChangePasswordToState(e);
      },
      showPassword: (e) async* {
        yield _mapShowPasswordToState(e);
      },
      changeConfirmPassword: (e) async* {
        yield _mapChangeConfirmPasswordToState(e);
      },
      showConfirmPassword: (e) async* {
        yield _mapShowConfirmPasswordToState(e);
      },
      signUpWithEmailPasswordAndOtherPressed: (e) async* {
        yield* _mapSignupSubmittedToState(e);
      },
      signUpWithApplePressed: (e) async* {
        yield* _mapSignInWithApplePressed(e);
      },
      signUpWithFacebookPressed: (e) async* {
        yield* _mapSignInWithFacebookPressed(e);
      },
      signUpWithGooglePressed: (e) async* {
        yield* _mapSignInWithGooglePressed(e);
      },
    );
  }

  SignUpFormState _mapChangeFirstNameToState(
      _ChangeFirstName _changeFirstName) {
    return state.copyWith(
      firstName: _changeFirstName.name,
      authFailureOrSuccessOption: none(),
    );
  }

  SignUpFormState _mapChangeLastNameToState(_ChangeLastName _changeLastName) {
    return state.copyWith(
      lastName: _changeLastName.name,
      authFailureOrSuccessOption: none(),
    );
  }

  SignUpFormState _mapChangeEmailToState(_ChangeEmail _changeEmail) {
    return state.copyWith(
      emailAddress: _changeEmail.email,
      authFailureOrSuccessOption: none(),
    );
  }

  SignUpFormState _mapChangePasswordToState(_ChangePassword _changePassword) {
    return state.copyWith(
      password: _changePassword.password,
      authFailureOrSuccessOption: none(),
    );
  }

  SignUpFormState _mapShowPasswordToState(_ShowPassword _showPassword) {
    return state.copyWith(
      isPasswordVisible: !state.isPasswordVisible,
      authFailureOrSuccessOption: none(),
    );
  }

  SignUpFormState _mapChangeConfirmPasswordToState(
      _ChangeConfirmPassword _changeConfirmPassword) {
    return state.copyWith(
      confirmPassword: _changeConfirmPassword.password,
      authFailureOrSuccessOption: none(),
    );
  }

  SignUpFormState _mapShowConfirmPasswordToState(
      _ShowConfirmPassword _showConfirmPassword) {
    return state.copyWith(
      isConfirmPasswordVisible: !state.isConfirmPasswordVisible,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignUpFormState> _mapSignupSubmittedToState(
      _SignUpWithEmailPasswordAndOtherPressed
          _signUpWithEmailPasswordAndOtherPressed) async* {
    Either<ApiFailure, AuthRoutes> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );

    final result = await signUpWithEmailUsecase(SignUpParams(
      firstName: state.firstName,
      lastName: state.lastName,
      email: state.emailAddress,
      password: state.password,
      phoneNumber: "",
      confirmPassword: state.confirmPassword,
    ));

    failureOrSuccess = result.fold(
      (failure) => Left(failure),
      (success) => Right(
        AuthRoutes.showEmailVerificationScreen(state.emailAddress),
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<SignUpFormState> _mapSignInWithGooglePressed(
      _SignUpWithGooglePressed _signInWithGooglePressed) async* {
    Either<ApiFailure, AuthRoutes> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );

    final result = await signInWithGoogle(NoParams());

    failureOrSuccess = result.fold(
      (l) => Left(l),
      (r) => const Right(AuthRoutes.showHomeScreen()),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<SignUpFormState> _mapSignInWithFacebookPressed(
      _SignUpWithFacebookPressed _signInWithFacebookPressed) async* {
    Either<ApiFailure, AuthRoutes> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );

    final result = await signInWithFacebook(NoParams());

    failureOrSuccess = result.fold(
      (l) => Left(l),
      (r) => const Right(AuthRoutes.showHomeScreen()),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<SignUpFormState> _mapSignInWithApplePressed(
      _SignUpWithApplePressed _signInWithApplePressed) async* {
    Either<ApiFailure, AuthRoutes> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );

    final result = await signInWithApple(NoParams());

    failureOrSuccess = result.fold(
      (l) => Left(l),
      (r) => const Right(AuthRoutes.showHomeScreen()),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
