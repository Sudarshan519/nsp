import 'package:another_flushbar/flushbar_helper.dart';
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
        leading: const BackButton(color: Colors.white),
        title: Text(
          notification.title ?? 'Notification',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // padding: const EdgeInsets.all(12),
          children: [
            if (notification.image != null &&
                notification.image.toString().isNotEmpty)
              Hero(
                  tag: notification.id.toString(),
                  child: Image.network(
                    notification.image!.contains('http')
                        ? notification.image!
                        : baseURL + notification.image!,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null)
                        return SizedBox(
                            height: loadingProgress == null ? 100 : 0,
                            child: child);
                      return Container(
                        color: Palette.primaryBackground,
                        height: 100,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Palette.primary,
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    (loadingProgress.expectedTotalBytes ?? 1)
                                : null,
                          ),
                        ),
                      );
                    },
                  )),
            if (notification.message != null)
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ShadowBoxWidget(child: Text(notification.message!)),
                    const SizedBox(
                      height: 6,
                    ),
                    if (notification.redirectUrl != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70, vertical: 12),
                        child: CustomButton(
                            title: 'More Info',
                            onTap: () {
                              try {
                                final url =
                                    notification.redirectUrl!.startsWith('http')
                                        ? notification.redirectUrl!
                                        : 'http://${notification.redirectUrl!}';
                                FlutterWebBrowser.openWebPage(
                                    url: url,
                                    customTabsOptions: CustomTabsOptions(
                                      colorScheme: CustomTabsColorScheme.dark,
                                      toolbarColor: Palette.primary,
                                      showTitle: true,
                                    ));
                              } catch (e) {
                                FlushbarHelper.createError(
                                        message: 'Failed to launch url!')
                                    .show(context);
                              }
                            }),
                      )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
