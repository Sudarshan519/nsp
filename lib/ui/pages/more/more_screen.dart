import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/core/notification/push_notification_manager.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/usecase/logout_user.dart';
import 'package:wallet_app/handlers/session_handler.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/home_appbar.dart';
import 'package:wallet_app/ui/pages/home/widgets/home_page_header.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_confirmation.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'more_item.dart';

class MorePage extends StatelessWidget {
  MorePage({
    Key? key,
  }) : super(key: key);
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final _listItemData = _getItemList(context);
    return Scaffold(
      appBar: HomeAppBar(
        scrollController: scrollController,
        key: UniqueKey(),
      ),
      body: Container(
        color: Palette.white,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomePageHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _listItemData.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return _listItemData[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getItemList(BuildContext context) {
    return [
      MoreItem(
        imageName: "icon-profile",
        title: "Profile",
        onTap: () => context.pushRoute(const ProfileRoute()),
      ),

      MoreItem(
        imageName: "icon-coupon",
        title: "Coupons",
        onTap: () => context.pushRoute(const CouponRoute()),
      ),
      MoreItem(
        imageName: "icon-jap-manner",
        title: "Japanese Manners",
        onTap: () => context.pushRoute(JapaneseMannerRoute()),
      ),
      MoreItem(
        imageName: "icon-partner",
        title: "Partner Services",
        onTap: () => context.pushRoute(PartnerServicesRoute()),
      ),
      MoreItem(
        imageName: "icon-alerts",
        title: "Alerts",
        onTap: () => context.pushRoute(const AlertsTabRoute()),
      ),
      MoreItem(
        imageName: "icon-partner",
        title: "Settings",
        onTap: () => context.pushRoute(const SettingsRoute()),
      ),

      // MoreItem(
      //   imageName:"icon-contact",
      //   title: "Contact",
      //   onTap: () {},
      // ),

      MoreItem(
        imageName: "icon-logout",
        title: "Logout",
        onTap: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => PopUpConfirmation(
              message: 'Are you sure to Logout?',
              onConfirmed: () {
                context.popRoute();
                SessionHandler.logout();
              },
            ),
          );
        },
      ),
    ];
  }
}
