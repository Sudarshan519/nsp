import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/more/more_item.dart';

import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moreitems = [
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
