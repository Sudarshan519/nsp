import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/utils/config_reader.dart';

class NotificationDetailPage extends StatelessWidget {
  final NotificationItem notification;
  const NotificationDetailPage({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String baseURL = getIt<ConfigReader>().baseURL;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          notification.title ?? 'Notification',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // padding: const EdgeInsets.all(12),
          children: [
            if (notification.image != null)
              Hero(
                  tag: notification.id.toString(),
                  child: Image.network(baseURL + notification.image!)),
            if (notification.message != null)
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    ShadowBoxWidget(child: Text(notification.message!)),
                    const SizedBox(
                      height: 6,
                    ),
                    if (notification.redirectUrl != null)
                      CustomButton(
                          title: 'More Info',
                          onTap: () {
                            FlutterWebBrowser.openWebPage(
                                url: notification.redirectUrl!,
                                customTabsOptions: CustomTabsOptions(
                                  colorScheme: CustomTabsColorScheme.dark,
                                  toolbarColor: Palette.primary,
                                  showTitle: true,
                                ));
                          })
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
