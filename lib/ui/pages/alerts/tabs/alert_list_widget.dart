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

  String detailtext(bool isEarthQuake) {
    final time = alert.occurredValue ?? '';
    final detail = isEarthQuake
        ? "Maximum seismic intensity ${alert.magnitudeValue}"
        : "${alert.levelTitle} ${alert.levelValue} (Do not approach the volcano)";
    final combine = '$time\n$detail';
    return combine;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.1;
    final isEarthQuake = alert.label?.toLowerCase() == "earthquake";
    return ListTile(
      onTap: () => context.router.push(AlertDetailRoute(alert: alert)),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      leading: Container(
        width: 70,
        height: 50,
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
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Text(
          detailtext(isEarthQuake),
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Palette.black.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
