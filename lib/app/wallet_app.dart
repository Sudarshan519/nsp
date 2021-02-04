import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart' as router;
import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: true,
      builder: ExtendedNavigator(
        router: router.Router(),
      ),
    );
  }
}
