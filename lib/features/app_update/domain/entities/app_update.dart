class AppUpdate {
  final UpdateData android;
  final UpdateData iOS;

  AppUpdate({
    required this.android,
    required this.iOS,
  });
}

class UpdateData {
  final String title;
  final String latestVersion;
  final String updateMessage;
  final String updateAction;

  UpdateData({
    required this.title,
    required this.latestVersion,
    required this.updateMessage,
    required this.updateAction,
  });
}
