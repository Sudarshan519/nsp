import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

Future navigate(BuildContext context, NotificationItem item) async {
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
      // TODO: goto partner service page
      break;

    case NotificationType.jpManner:
      // TODO: goto partner JP Manner page

      if (item.productId != null) {
        context.pushRoute(JPMannerDetailFromAPi(id: item.productId!));
      }
      break;

    default:
      return;
  }
}
