import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/load_balance/domain/usecases/stripe_refund.dart';

part 'stripe_refund_event.dart';
part 'stripe_refund_state.dart';
part 'stripe_refund_bloc.freezed.dart';

@injectable
class StripeRefundBloc extends Bloc<StripeRefundEvent, StripeRefundState> {
  StripeRefundBloc({
    required this.stripeRefund,
  }) : super(const _Initial());

  final StripeRefund stripeRefund;

  @override
  Stream<StripeRefundState> mapEventToState(
    StripeRefundEvent event,
  ) async* {
    yield* event.map(
      stripeRefund: (e) async* {
        yield const _Loading();

        AnalyticsService.logEvent(FirebaseEvents.PAYMENT_VIA_PRABHU);

        final result = await stripeRefund(e.referenceId);

        yield result.fold(
          (failure) => _Failure(failure),
          (_) {
            AnalyticsService.logEvent(FirebaseEvents.PAYMENT_VIA_PRABHU,
                isSuccess: true);
            return _Success(e.referenceId);
          },
        );
      },
    );
  }
}
