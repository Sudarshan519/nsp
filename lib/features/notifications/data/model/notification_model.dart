import 'dart:convert';

import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/features/notifications/domain/entity/notifications.dart';

NotificationModel notificationModelFromJson(String str) =>
    NotificationModel.fromJson(json.decode(str) as Map<String, dynamic>);

class NotificationModel extends Notification {
  NotificationModel({
    required List<NotificationItem>? notifications,
  }) : super(notifications: notifications);

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        notifications: json["notifications"] != null
            ? List<NotificationItem>.from((json["notifications"] as Iterable)
                .map((x) =>
                    NotificationItem.fromJson(x as Map<String, dynamic>)))
            : null,
      );
}
