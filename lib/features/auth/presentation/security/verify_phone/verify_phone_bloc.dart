import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/auth/domain/usecase/request_phone_otp.dart';
import 'package:wallet_app/features/auth/domain/usecase/verify_phone.dart';

part 'verify_phone_event.dart';
part 'verify_phone_state.dart';
part 'verify_phone_bloc.freezed.dart';

@injectable
class VerifyPhoneBloc extends Bloc<VerifyPhoneEvent, VerifyPhoneState> {
  final VerifyPhone verifyPhone;
  final RequestPhoneOtp requestPhoneOtp;
  String _pin = "";

  VerifyPhoneBloc({
    required this.verifyPhone,
    required this.requestPhoneOtp,
  }) : super(const _Initial());

  @override
  Stream<VerifyPhoneState> mapEventToState(
    VerifyPhoneEvent event,
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

  Stream<VerifyPhoneState> _mapVerifyEvenToState(_Verify _verify) async* {
    yield const _Loading();
    final result = await verifyPhone(VerifyPhoneParams(
      phone: _verify.phone,
      code: _pin,
    ));

    yield result.fold(
      (failure) => _Failure(failure),
      (r) => const _Verified(),
    );
    if (result.isLeft()) {
      yield const _CodeSent();
    }
  }

  Stream<VerifyPhoneState> _mapResendEvenToState(_Resend _resend) async* {
    yield const _Loading();
    final result = await requestPhoneOtp(_resend.phone);
    yield result.fold(
      (failure) => _Failure(failure),
      (r) => const _CodeSent(),
    );
    if (result.isLeft()) {
      yield const _Initial();
    }
  }
}
