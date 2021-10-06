import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/ui/pages/more/more_item.dart';

import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signupMethod = context
        .read<HomePageDataBloc>()
        .homeData
        ?.userDetail
        ?.signupMethod
        .toString()
        .toUpperCase();

    final moreitems = [
      MoreItem(
          color: Palette.primary,
          imageName: "icon-notify",
          title: "Device Management",
          onTap: () => context.pushRoute(const UserDevicesListRoute())),
      if (signupMethod == SignupMethod.email)
        MoreItem(
            imageName: "icon-profile",
            title: "Change Password",
            onTap: () => context.pushRoute(ChangePasswordRoute())),
      MoreItem(
          imageName: "icon-privacy-policy",
          title: "Security",
          onTap: () => context.pushRoute(const SecurityRoute())),
      MoreItem(
        imageName: "icon-terms",
        title: "Refund Policy",
        onTap: () {
          context.pushRoute(
            AppWebViewRoute(
                url: "https://bnpj.jp/refund-policy", title: "Refund Policy"),
          );
        },
      ),
      MoreItem(
        imageName: "icon-terms",
        title: "Transactions Law",
        onTap: () {
          context.pushRoute(
            AppWebViewRoute(
                url: "https://bnpj.jp/transactions-law",
                title: "Transactions Law"),
          );
        },
      ),
      MoreItem(
        imageName: "icon-privacy-policy",
        title: "Privacy Policy",
        onTap: () {
          context.pushRoute(
            AppWebViewRoute(
                url: "https://bnpj.jp/privacy-policy", title: "Privacy Policy"),
          );
        },
      ),
      MoreItem(
        imageName: "icon-terms",
        title: "Terms and Conditions",
        onTap: () {
          context.pushRoute(
            AppWebViewRoute(
              url: "https://bnpj.jp/terms-conditions",
              title: "Terms and Conditions",
            ),
          );
        },
      ),
      MoreItem(
        imageName: "icon-contact",
        title: "Contact Us",
        onTap: () => context.pushRoute(const ContactUsRoute()),
      ),
      MoreItem(
        imageName: "icon-about",
        title: "About Us",
        onTap: () => context.pushRoute(const AboutUsRoute()),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const BackButton(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(6),
        children: [...moreitems],
      ),
    );
  }
}
