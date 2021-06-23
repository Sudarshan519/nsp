import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/load_balance/domain/usecases/verify_esewa_top_up.dart';
import 'package:wallet_app/features/load_balance/domain/usecases/verify_khalti_top_up.dart';

part 'verify_khalti_topup_event.dart';
part 'verify_khalti_topup_state.dart';
part 'verify_khalti_topup_bloc.freezed.dart';

@injectable
class VerifyKhaltiTopupBloc
    extends Bloc<VerifyKhaltiTopupEvent, VerifyKhaltiTopupState> {
  VerifyKhaltiTopupBloc({
    required this.verifyKhaltiTopup,
  }) : super(const _Initial());
  final VerifyKhaltiTopup verifyKhaltiTopup;

  @override
  Stream<VerifyKhaltiTopupState> mapEventToState(
    VerifyKhaltiTopupEvent event,
  ) async* {
    yield* event.map(verify: (e) async* {
      yield const _Loading();

      final result = await verifyKhaltiTopup(
        VerifyKhaltiTopupParams(
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
