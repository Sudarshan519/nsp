import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/load_balance/domain/usecases/verify_prabhu_pay_top_up.dart';

part 'verify_prabhu_pay_topup_event.dart';
part 'verify_prabhu_pay_topup_state.dart';
part 'verify_prabhu_pay_topup_bloc.freezed.dart';

@injectable
class VerifyPrabhuPayTopupBloc
    extends Bloc<VerifyPrabhuPayTopupEvent, VerifyPrabhuPayTopupState> {
  VerifyPrabhuPayTopupBloc({
    required this.verifyPrabhuPayTopup,
  }) : super(const _Initial());
  final VerifyPrabhuPayTopup verifyPrabhuPayTopup;

  @override
  Stream<VerifyPrabhuPayTopupState> mapEventToState(
    VerifyPrabhuPayTopupEvent event,
  ) async* {
    yield* event.map(verify: (e) async* {
      yield const _Loading();

      final result = await verifyPrabhuPayTopup(
        VerifyPrabhuPayTopupParams(
          referenceId: e.referenceId,
          amount: e.amount,
          purpose: e.purpose,
          productName: e.productName,
          returnUrl: e.returnUrl,
        ),
      );

      yield result.fold(
        (failure) => _Failure(failure),
        (success) => _Success(success),
      );
    });
  }
}
