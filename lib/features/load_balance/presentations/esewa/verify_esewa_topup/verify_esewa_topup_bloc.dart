import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/load_balance/domain/usecases/verify_esewa_top_up.dart';

part 'verify_esewa_topup_event.dart';
part 'verify_esewa_topup_state.dart';
part 'verify_esewa_topup_bloc.freezed.dart';

@injectable
class VerifyEsewaTopupBloc
    extends Bloc<VerifyEsewaTopupEvent, VerifyEsewaTopupState> {
  final VerifyEsewaTopup verifyEsewaTopup;

  VerifyEsewaTopupBloc({
    required this.verifyEsewaTopup,
  }) : super(const _Initial());

  @override
  Stream<VerifyEsewaTopupState> mapEventToState(
    VerifyEsewaTopupEvent event,
  ) async* {
    yield* event.map(verify: (e) async* {
      yield const _Loading();

      final result = await verifyEsewaTopup(
        VerifyEsewaTopupParams(
          referenceId: e.transactionId,
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
