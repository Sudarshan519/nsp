import 'package:wallet_app/features/app_update/domain/entities/app_update.dart';

class AppUpdateModel extends AppUpdate {
  AppUpdateModel({
    required UpdateDataModel android,
    required UpdateDataModel ios,
  }) : super(
          iOS: ios,
          android: android,
        );

  factory AppUpdateModel.fromJson(Map<String, dynamic> json) {
    return AppUpdateModel(
        android:
            UpdateDataModel.fromJson(json['android'] as Map<String, dynamic>),
        ios: UpdateDataModel.fromJson(json['ios'] as Map<String, dynamic>));
  }
}

class UpdateDataModel extends UpdateData {
  UpdateDataModel({
    required String title,
    required String latestVersion,
    required String updateMessage,
    required String updateAction,
  }) : super(
          title: title,
          latestVersion: latestVersion,
          updateAction: updateAction,
          updateMessage: updateMessage,
        );

  factory UpdateDataModel.fromJson(Map<String, dynamic> json) {
    return UpdateDataModel(
      title: json['title'] as String? ?? '',
      latestVersion: json['latest_version'] as String? ?? '',
      updateMessage: json['update_message'] as String? ?? '',
      updateAction: json['update_action'] as String? ?? '',
    );
  }
}
