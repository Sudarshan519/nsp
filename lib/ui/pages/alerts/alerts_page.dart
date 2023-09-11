import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';

@RoutePage()
class AlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alerts",
          style: TextStyle(color: Palette.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _alertsWidget(
              context: context,
              title: "Latest Alerts",
              svgAsset: "assets/images/alerts/latest-alerts.svg",
              onTap: () => context.router.push(const AlertsTabRoute()),
            ),
            _alertsWidget(
              context: context,
              title: "Earthquake Info",
              svgAsset: "assets/images/alerts/earthquake-info.svg",
              onTap: () => context.router.push(const AlertsTabRoute()),
            ),
            _alertsWidget(
              context: context,
              title: "Volcano Alerts",
              svgAsset: "assets/images/alerts/volcano-alerts.svg",
              onTap: () => context.router.push(const AlertsTabRoute()),
            ),
            _alertsWidget(
              context: context,
              title: "Weather Info",
              svgAsset: "assets/images/alerts/weather-info.svg",
              onTap: () => context.router.push(const AlertsTabRoute()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _alertsWidget({
    required BuildContext context,
    required String title,
    required String svgAsset,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: ShadowBoxWidget(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
        child: Row(
          children: [
            SvgPicture.asset(
              svgAsset,
              color: Palette.primary,
              // height: 25.0,
            ),
            const SizedBox(width: 30),
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
