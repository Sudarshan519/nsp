import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/auth/domain/usecase/verify_email.dart';

part 'verify_email_event.dart';
part 'verify_email_state.dart';
part 'verify_email_bloc.freezed.dart';

@injectable
class VerifyEmailBloc extends Bloc<VerifyEmailEvent, VerifyEmailState> {
  final VerifyEmail verifyEmail;
  String _pin = "";

  VerifyEmailBloc({
    @required this.verifyEmail,
  }) : super(const _Initial());

  @override
  Stream<VerifyEmailState> mapEventToState(
    VerifyEmailEvent event,
  ) async* {
    yield* event.map(
      changePin: (e) async* {
        _mapChangePin(e);
      },
      verify: (e) async* {
        yield* _mapVerifyEvenToState(e);
      },
      resend: (e) async* {
        yield* _mapResendEvenToState(e);
      },
    );
  }

  void _mapChangePin(_ChangePin _changePin) {
    _pin = _changePin.pin;
  }

  Stream<VerifyEmailState> _mapVerifyEvenToState(_Verify _verify) async* {
    yield const _Loading();
    final result = await verifyEmail(VerifyEmailParams(
      email: _verify.email,
      code: _pin,
    ));
    yield result.fold(
      (failure) => _Failure(failure),
      (r) => const _Verified(),
    );
  }

  Stream<VerifyEmailState> _mapResendEvenToState(_Resend _resend) async* {
    yield const _Loading();
    final result = await verifyEmail.getNewVerificationCode(_resend.email);
    yield result.fold(
      (failure) => _Failure(failure),
      (r) => const _CodeSent(),
    );
  }
}
