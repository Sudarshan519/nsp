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
  String? type;
  String? createdAt;
  String? updatedAt;
  String? utilityType;

  NotificationItem(
      {this.id,
      this.title,
      this.message,
      this.userId,
      this.image,
      this.isPinned = false,
      this.isShow,
      this.createdAt,
      this.type,
      this.redirectUrl,
      this.productId,
      this.updatedAt,
      this.utilityType});
}

class NotificationType {
  static const transaction = 'transaction';
  static const jpManner = 'jp_manner';
  static const partnerService = 'partner_service';
  static const advertisement = 'advertisement';
  static const utilityPayment = 'utility_payments';
}
