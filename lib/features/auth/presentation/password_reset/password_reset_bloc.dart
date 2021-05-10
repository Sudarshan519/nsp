import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/auth/domain/usecase/reset_password.dart';

part 'password_reset_event.dart';
part 'password_reset_state.dart';
part 'password_reset_bloc.freezed.dart';

@injectable
class PasswordResetBloc extends Bloc<PasswordResetEvent, PasswordResetState> {
  final ResetPasswordUseCase resetPasswordUseCase;
  PasswordResetBloc({
    @required this.resetPasswordUseCase,
  }) : super(const PasswordResetState.showFetchCodePage());

  @override
  Stream<PasswordResetState> mapEventToState(
    PasswordResetEvent event,
  ) async* {
    yield* event.map(
      resetPassword: (e) async* {
        yield const PasswordResetState.loading();

        final result = await resetPasswordUseCase(
          ResetPasswordParams(
            email: e.email,
            code: e.code,
            password: e.password,
            verificationPassword: e.verificationPassword,
          ),
        );

        yield* result.fold(
          (failure) async* {
            yield PasswordResetState.failure(failure);
            yield const PasswordResetState.showPasswordResetPage();
          },
          (r) async* {
            yield const PasswordResetState.successfulPasswordReset();
          },
        );
      },
      getResetCode: (e) async* {
        yield const PasswordResetState.loading();

        final result = await resetPasswordUseCase.getNewResetCode(e.email);

        yield* result.fold(
          (failure) async* {
            yield PasswordResetState.failure(failure);
            yield const PasswordResetState.showFetchCodePage();
          },
          (r) async* {
            yield const PasswordResetState.showPasswordResetPage();
          },
        );
      },
    );
  }
}
