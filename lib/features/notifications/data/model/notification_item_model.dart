import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';

class NotificationItemModel extends NotificationItem {
  NotificationItemModel(
      {required int? id,
      required String? title,
      required String? message,
      required int? userId,
      required String? image,
      required bool isPinned,
      required bool? isShow,
      required String? redirectUrl,
      required String? type,
      required String? createdAt,
      required int? productId,
      required String? updatedAt})
      : super(
          id: id,
          createdAt: createdAt,
          image: image,
          isPinned: isPinned,
          isShow: isShow,
          message: message,
          title: title,
          updatedAt: updatedAt,
          redirectUrl: redirectUrl,
          type: type,
          productId: productId,
          userId: userId,
        );

  NotificationItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    title = json['title'] as String?;
    message = json['message'] as String?;
    userId = json['user_id'] as int?;
    image = json['image'] as String?;
    isPinned = json['is_pinned'] as bool;
    type = json['type'] as String?;
    isShow = json['is_show'] as bool?;
    productId = json['product_id'] as int?;
    redirectUrl = json['redirect_url'] as String?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
  }
}
