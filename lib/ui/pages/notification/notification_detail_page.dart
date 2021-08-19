import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/utils/config_reader.dart';

//ignore: must_be_immutable
class NotificationDetailPage extends StatelessWidget {
  final NotificationItem notification;

  ///override on more detal pressed function
  Function? onMoreDetailPressed;
  NotificationDetailPage({
    Key? key,
    required this.notification,
    this.onMoreDetailPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String baseURL = getIt<ConfigReader>().baseURL;
    final width = MediaQuery.of(context).size.width;

    Widget moreInfoButton() {
      if (notification.redirectUrl == null && onMoreDetailPressed == null) {
        return const SizedBox();
      }

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
        child: CustomButton(
            title: 'More Info',
            onTap: () {
              if (onMoreDetailPressed != null) {
                onMoreDetailPressed!();
              } else {
                try {
                  final url = notification.redirectUrl!.startsWith('http')
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
                  FlushbarHelper.createError(message: 'Failed to launch url!')
                      .show(context);
                }
              }
            }),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: Text(
          notification.title ?? 'Notification',
          style: const TextStyle(color: Colors.white),
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          // padding: const EdgeInsets.all(12),
          children: [
            if (notification.image != null &&
                notification.image.toString().isNotEmpty)
              Hero(
                  tag: notification.id.toString(),
                  child: CachedNetworkImage(
                    imageUrl: notification.image!.contains('http')
                        ? notification.image!
                        : baseURL + notification.image!,
                    width: width,
                    fit: BoxFit.fitHeight,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )),
            if (notification.message != null)
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ShadowBoxWidget(
                        child: Column(
                      children: [
                        Text(
                          notification.title ?? 'Notification',
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        const Divider(
                          thickness: 2,
                          height: 20,
                        ),
                        Text(notification.message!),
                      ],
                    )),
                    const SizedBox(
                      height: 6,
                    ),
                    moreInfoButton()
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
