import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart';

part 'subscription_for_partner_service_event.dart';
part 'subscription_for_partner_service_state.dart';
part 'subscription_for_partner_service_bloc.freezed.dart';

@injectable
class SubscriptionForPartnerServiceBloc extends Bloc<
    SubscriptionForPartnerServiceEvent, SubscriptionForPartnerServiceState> {
  final GetSubscriptionDetailForPartnerService
      getSubscriptionDetailForPartnerService;

  final PurchaseSubscriptionFromPartnerService
      purchaseSubscriptionFromPartnerService;

  SubscriptionForPartnerServiceBloc({
    required this.getSubscriptionDetailForPartnerService,
    required this.purchaseSubscriptionFromPartnerService,
  }) : super(const _Initial());

  String? grandTotal;
  bool isAllSelected = false;
  List<SubscriptionInvoice> invoices = [];
  CouponCode? couponCode;

  @override
  Stream<SubscriptionForPartnerServiceState> mapEventToState(
    SubscriptionForPartnerServiceEvent event,
  ) async* {
    yield* event.map(
      getSubscription: (e) async* {
        yield const _Loading();
        invoices = [];
        isAllSelected = false;
        grandTotal = null;
        final result = await getSubscriptionDetailForPartnerService(
          GetSubscriptionDetailForPartnerServiceParams(
            subscriptionId: e.subscriptionId,
          ),
        );
        yield result.fold(
          (failure) => _Failure(failure),
          (subscription) {
            invoices = subscription.invoice ?? [];
            return const _FetchSubscriptionSuccessfully();
          },
        );
      },
      purchaseSubscription: (e) async* {
        yield const _Loading();

        final List<SubscriptionInvoice> newInvoices = [];

        for (final invoice in invoices) {
          if (invoice.isSelected) {
            newInvoices.add(invoice);
          }
        }

        final result = await purchaseSubscriptionFromPartnerService(
          PurchaseSubscriptionFromPartnerServiceParams(
              invoice: newInvoices,
              coupon:
                  couponCode != null ? couponCode!.couponCode.toString() : '',
              productId: e.productId),
        );

        yield result.fold(
          (failure) => _Failure(failure),
          (subscription) => const _PurchasedSuccessfully(),
        );
      },
      selectAllSubscription: (e) async* {
        for (final invoice in invoices) {
          invoice.isSelected = e.selectAll;
        }

        countGrandTotal();

        isAllSelected = e.selectAll;
        yield const _Loading();
        yield const _FetchSubscriptionSuccessfully();
      },
      selectSubscription: (e) async* {
        final invoice = e.invoice;
        final index = invoices.indexOf(invoice);
        invoices[index].isSelected = !invoices[index].isSelected;

        bool _isAllSelected = true;
        for (final newInvoice in invoices) {
          if (newInvoice.isSelected == false) {
            _isAllSelected = false;
            break;
          }
        }
        isAllSelected = _isAllSelected;

        countGrandTotal();

        yield const _Loading();
        yield const _FetchSubscriptionSuccessfully();
      },
      setCoupon: (e) async* {
        couponCode = e.coupounCode;
        countGrandTotal();
        yield const _Loading();

        yield const _FetchSubscriptionSuccessfully();
      },
    );
  }

  void countGrandTotal() {
    double total = 0;
    for (final invoice in invoices) {
      if (invoice.isSelected) {
        final amount = invoice.dueAmount ?? 0.0;
        total = total + amount;
      }
    }
    //if couponcode is there
    if (couponCode != null) {
      final double discountPer = double.parse(couponCode!.cashback ?? '0.0');
      total = total - discountPer / 100 * total;
    }
    grandTotal = total.toStringAsFixed(0);
  }
}
