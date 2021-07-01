import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/load_balance/domain/usecases/verify_ime_pay_top_up.dart';

part 'verify_ime_pay_topup_event.dart';
part 'verify_ime_pay_topup_state.dart';
part 'verify_ime_pay_topup_bloc.freezed.dart';

@injectable
class VerifyImePayTopupBloc
    extends Bloc<VerifyImePayTopupEvent, VerifyImePayTopupState> {
  VerifyImePayTopupBloc({
    required this.verifyImePayTopup,
  }) : super(const _Initial());
  final VerifyImePayTopup verifyImePayTopup;

  @override
  Stream<VerifyImePayTopupState> mapEventToState(
    VerifyImePayTopupEvent event,
  ) async* {
    yield* event.map(verify: (e) async* {
      yield const _Loading();

      final result = await verifyImePayTopup(
        VerifyImePayTopupParams(
          referenceId: e.refId,
          amount: e.amount,
          purpose: e.purpose,
        ),
      );

      yield result.fold(
        (failure) => _Failure(failure),
        (success) => const _Success(),
      );
    });
  }
}
