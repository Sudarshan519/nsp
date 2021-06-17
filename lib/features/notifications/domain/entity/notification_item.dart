import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';

class NotificationItem {
  int? id;
  String? title;
  String? message;
  int? userId;
  String? image;
  bool isPinned;
  bool? isShow;
  String? redirectUrl;
  String? createdAt;
  String? updatedAt;
  TransactionItem? transactionItem;

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
      this.transactionItem,
      this.updatedAt});
}
