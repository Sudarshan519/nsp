import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

class AlertWidget extends StatelessWidget {
  final Alert alert;

  const AlertWidget({
    Key? key,
    required this.alert,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.1;
    final isEarthQuake = alert.label?.toLowerCase() == "earthquake";
    return ListTile(
      onTap: () => context.router.push(AlertDetailRoute(alert: alert)),
      contentPadding: const EdgeInsets.all(12),
      leading: Container(
        width: 70,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Palette.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SvgPicture.asset(
            isEarthQuake
                ? "assets/images/alerts/earthquake-info.svg"
                : "assets/images/alerts/volcano-alerts.svg",
            color: Palette.white,
            height: width,
          ),
        ),
      ),
      trailing: isEarthQuake
          ? CircleAvatar(
              radius: 18,
              backgroundColor: Palette.primary,
              child: Center(
                child: Text(
                  "${alert.magnitudeValue}",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Palette.white,
                  ),
                ),
              ),
            )
          : const SizedBox(),
      title: Text(
        isEarthQuake
            ? alert.epicenterValue ?? ""
            : alert.volcanoNameValue ?? "",
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          Text(
            alert.occurredValue ?? '',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Palette.black.withOpacity(0.5),
            ),
          ),
          Text(
            isEarthQuake
                ? "Maximum seismic intensity ${alert.magnitudeValue}"
                : "${alert.levelTitle} ${alert.levelValue} (Do not approach the volcano)",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Palette.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
