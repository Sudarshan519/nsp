import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';

class NotificationItem {
  int? id;
  String? title;
  String? message;
  int? userId;
  int? productId;
  String? image;
  bool isPinned;
  bool? isShow;
  String? redirectUrl;
  String? createdAt;
  String? updatedAt;

  NotificationItem(
      {this.id,
      this.title,
      this.message,
      this.userId,
      this.image,
      this.isPinned = false,
      this.isShow,
      this.createdAt,
      this.redirectUrl,
      this.productId,
      this.updatedAt});
}
