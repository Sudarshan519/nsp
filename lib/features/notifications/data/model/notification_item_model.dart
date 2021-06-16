import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/features/transaction/data/model/transaction_item_model.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';

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
      required TransactionItemModel? transactionItem,
      required String? createdAt,
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
            transactionItem: transactionItem,
            userId: userId);

  NotificationItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    title = json['title'] as String?;
    message = json['message'] as String?;
    userId = json['user_id'] as int?;
    image = json['image'] as String?;
    isPinned = json['is_pinned'] as bool;
    isShow = json['is_show'] as bool?;
    redirectUrl = json['redirect_url'] as String?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;

    if (json['transaction'] != null) {
      transactionItem = TransactionItemModel.fromJson(
          json['transaction'] as Map<String, dynamic>);
    }
  }
}
