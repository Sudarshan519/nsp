import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart';

part 'subscription_for_partner_service_event.dart';
part 'subscription_for_partner_service_state.dart';
part 'subscription_for_partner_service_bloc.freezed.dart';

@injectable
class SubscriptionForPartnerServiceBloc extends Bloc<
    SubscriptionForPartnerServiceEvent, SubscriptionForPartnerServiceState> {
  final GetSubscriptionDetailForPartnerService
      getSubscriptionDetailForPartnerService;
  SubscriptionForPartnerServiceBloc(
      {required this.getSubscriptionDetailForPartnerService})
      : super(const _Initial());

  @override
  Stream<SubscriptionForPartnerServiceState> mapEventToState(
    SubscriptionForPartnerServiceEvent event,
  ) async* {
    yield* event.map(
      getSubscription: (e) async* {
        yield const _Loading();
        final result = await getSubscriptionDetailForPartnerService(
          GetSubscriptionDetailForPartnerServiceParams(
            subscriptionId: e.subscriptionId,
          ),
        );
        yield result.fold(
          (failure) => _Failure(failure, null),
          (subscription) => _FetchSubscriptionSuccessfully(subscription),
        );
      },
      purchaseSubscription: (e) async* {},
    );
  }
}
