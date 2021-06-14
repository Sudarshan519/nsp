class NotificationItem {
  int? id;
  String? title;
  String? message;
  int? userId;
  String? image;
  bool? isPinned;
  bool? isShow;
  String? createdAt;
  String? updatedAt;

  NotificationItem(
      {this.id,
      this.title,
      this.message,
      this.userId,
      this.image,
      this.isPinned,
      this.isShow,
      this.createdAt,
      this.updatedAt});
}
