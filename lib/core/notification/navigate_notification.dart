import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

Future navigate(BuildContext context, String type, int id) async {
  switch (type) {
    case NotificationType.transaction:
      context.pushRoute(TransactionDetailFromAPi(id: id));
      break;

    case NotificationType.partnerService:
      // TODO: goto partner service page
      break;

    case NotificationType.jpManner:
      // TODO: goto partner JP Manner page
      break;

    default:
      return;
  }
}
