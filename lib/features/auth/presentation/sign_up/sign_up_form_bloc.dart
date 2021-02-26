import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/auth/domain/auth_routes/auth_routes.dart';
import 'package:wallet_app/features/auth/domain/usecase/sign_up_user.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final SignUpWithEmailPasswordAndUserDetail signUpWithEmailUsecase;

  SignUpFormBloc({
    @required this.signUpWithEmailUsecase,
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
      signUpWithEmailPasswordAndOtherPressed: (e) async* {
        yield* _mapSignupSubmittedToState(e);
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
      confirmPassword: state.password,
    ));

    failureOrSuccess = result.fold(
        (l) => Left(l), (r) => const Right(AuthRoutes.showHomeScreen())
        // : Right(
        //     AuthRoutes.showEmailVerificationScreen(state.emailAddress),
        //   ),
        );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
