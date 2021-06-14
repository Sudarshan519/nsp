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

  NotificationItem.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    title = json['title'] as String;
    message = json['message'] as String;
    userId = json['user_id'] as int;
    image = json['image'] as String;
    isPinned = json['is_pinned'] as bool;
    isShow = json['is_show'] as bool;
    createdAt = json['created_at'] as String;
    updatedAt = json['updated_at'] as String;
  }
}
