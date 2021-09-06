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
    final size = MediaQuery.of(context).size;
    final isEarthQuake = alert.label?.toLowerCase() == "earthquake";
    return ListTile(
      onTap: () => context.router.push(AlertDetailRoute(alert: alert)),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6.0),
      leading: Container(
          padding: const EdgeInsets.all(2),
          // width: 50,
          // height: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: Palette.primary,
          ),
          child: SizedBox(
            child: SvgPicture.asset(
              isEarthQuake
                  ? "assets/images/alerts/earthquake-info.svg"
                  : "assets/images/alerts/volcano-alerts.svg",
              fit: BoxFit.scaleDown,
              color: Colors.white,
            ),
          )),
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
        textScaleFactor: 0.74,
        style: const TextStyle(fontWeight: FontWeight.w700),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 4,
          ),
          Text(
            detailtext(isEarthQuake),
            textScaleFactor: 0.8,
          ),
        ],
      ),
    );
  }
}
