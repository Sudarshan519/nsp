import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/auth_routes/auth_routes.dart';
import 'package:wallet_app/features/auth/domain/usecase/sign_in_with_apple.dart';
import 'package:wallet_app/features/auth/domain/usecase/sign_in_with_email.dart';
import 'package:wallet_app/features/auth/domain/usecase/sign_in_with_facebook.dart';
import 'package:wallet_app/features/auth/domain/usecase/sign_in_with_google.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final SignInWithEmailAndPassword signInWithEmailUsecase;
  final SignInWithApple signInWithApple;
  final SignInWithFacebook signInWithFacebook;
  final SignInWithGoogle signInWithGoogle;

  SignInFormBloc({
    required this.signInWithEmailUsecase,
    required this.signInWithApple,
    required this.signInWithFacebook,
    required this.signInWithGoogle,
  }) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield _mapChangeEmailToState(e);
      },
      passwordChanged: (e) async* {
        yield _mapChangePasswordToState(e);
      },
      showPassword: (e) async* {
        yield _mapShowPasswordToState(e);
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _mapLoginSubmittedToState(e);
      },
      signInWithGooglePressed: (e) async* {
        yield* _mapSignInWithGooglePressed(e);
      },
      signInWithFacebookPressed: (e) async* {
        yield* _mapSignInWithFacebookPressed(e);
      },
      signInWithApplePressed: (e) async* {
        yield* _mapSignInWithApplePressed(e);
      },
      signUpPressed: (e) async* {
        yield _mapSignupPressedToState(e);
      },
      fetchRefreshToken: (e) async* {},
      signInWithBioMetricInfo: (e) async* {},
    );
  }

  SignInFormState _mapChangeEmailToState(_EmailChanged _emailChanged) {
    return state.copyWith(
      emailAddress: _emailChanged.email,
      authFailureOrSuccessOption: none(),
    );
  }

  SignInFormState _mapChangePasswordToState(_PasswordChanged _passwordChanged) {
    return state.copyWith(
      password: _passwordChanged.password,
      authFailureOrSuccessOption: none(),
    );
  }

  SignInFormState _mapShowPasswordToState(_ShowPassword _showPassword) {
    return state.copyWith(
      isPasswordVisible: !state.isPasswordVisible,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignInFormState> _mapLoginSubmittedToState(
      _SignInWithEmailAndPasswordPressed
          _signInWithEmailAndPasswordPressed) async* {
    Either<ApiFailure, AuthRoutes> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );

    final result = await signInWithEmailUsecase(SignInParams(
      username: state.emailAddress,
      password: state.password,
    ));

    failureOrSuccess = result.fold(
      (l) => Left(l),
      (r) => r.status
          ? const Right(AuthRoutes.showHomeScreen())
          : Right(
              AuthRoutes.showEmailVerificationScreen(state.emailAddress),
            ),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<SignInFormState> _mapSignInWithGooglePressed(
      _SignInWithGooglePressed _signInWithGooglePressed) async* {
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

  Stream<SignInFormState> _mapSignInWithFacebookPressed(
      _SignInWithFacebookPressed _signInWithFacebookPressed) async* {
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

  Stream<SignInFormState> _mapSignInWithApplePressed(
      _SignInWithApplePressed _signInWithApplePressed) async* {
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

  SignInFormState _mapSignupPressedToState(_SignUpPressed _signUpPressed) {
    return state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption:
          optionOf(const Right(AuthRoutes.showSignUpScreen())),
    );
  }
}
