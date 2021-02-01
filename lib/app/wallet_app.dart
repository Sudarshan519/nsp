import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/news/news_screen.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';

class WalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet',
      theme: ThemeData(
        primaryColor: Palette.primary,
        accentColor: Palette.accent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // fontFamily: 'JosefinSans',
      ),
      // debugShowCheckedModeBanner: false,
      // builder: ExtendedNavigator(
      //   router: router.Router(),
      // ),
      home: NewsPage(),
    );
  }
}
