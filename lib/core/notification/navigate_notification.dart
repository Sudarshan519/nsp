import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

void navigate(BuildContext context, NotificationItem item,
    {Map<String, dynamic>? data}) {
  if (item.type == null) {
    return;
  }
  switch (item.type) {
    case NotificationType.transaction:
      if (item.productId != null) {
        context.pushRoute(TransactionDetailFromAPi(id: item.productId!));
      }
      break;

    case NotificationType.advertisement:
      context.pushRoute(NotificationDetailRoute(notification: item));
      break;
    case NotificationType.utilityPayment:
      context.pushRoute(NotificationDetailRoute(
          notification: item,
          onMoreDetailPressed: () {
            _gotoUtilPayment(item.utilityType ?? '', context);
          }));
      break;
    case NotificationType.partnerService:
      if (item.productId != null) {
        context.pushRoute(ServiceDetailRouteFromAPI(id: item.productId!));
      }
      break;

    case NotificationType.jpManner:
      if (item.productId != null) {
        context.pushRoute(JPMannerDetailFromAPi(id: item.productId!));
      }
      break;
    case NotificationType.earthquake:
      if (data != null) {
        context.pushRoute(
            AlertDetailFomApi(id: data['earthquake_code'] as String));
      }

      break;
    case NotificationType.eruption:
      if (data != null) {
        context
            .pushRoute(AlertDetailFomApi(id: data['volcano_code'] as String));
      }

      break;
    case NotificationType.weather:
      if (data != null) {
        context.pushRoute(AlertDetailFomApi(id: data['message_id'] as String));
      }

      break;

    default:
      return;
  }
}

void _gotoUtilPayment(String type, BuildContext context) {
  final homeBloc = getIt<HomePageDataBloc>();

  void success() {
    final listdata = List<UtilityPaymentsModel>.from((homeBloc
            .homeData!.homeData!
            .firstWhere(
                (element) => element.type.toString().contains('utility'))
            .data as Iterable)
        .map((x) => UtilityPaymentsModel.fromJson(x as Map<String, dynamic>)));

    try {
      final paydata = listdata
          .where(
              (element) => element.name.toString().toLowerCase().contains(type))
          .first;
      if (type.toLowerCase().contains('mirai')) {
        context.pushRoute(PartnerServicePaymentRoute(payData: paydata));
      } else {
        context.pushRoute(TopUpRoute(payData: paydata));
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  if (homeBloc.homeData?.homeData != null) {
    success();
  } else {
    FlushbarHelper.createLoading(
            message: 'Loading',
            linearProgressIndicator: const LinearProgressIndicator(),
            duration: const Duration(seconds: 4))
        .show(context);
    homeBloc.stream.listen((event) {
      if (event.runtimeType.toString().toLowerCase().contains('loaded')) {
        success();
      }
    });
  }
}
