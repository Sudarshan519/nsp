import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

void navigate(BuildContext context, NotificationItem item) {
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

    default:
      return;
  }
}
