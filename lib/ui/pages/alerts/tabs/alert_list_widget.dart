import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

class AlertWidget extends StatelessWidget {
  final Alert alert;

  const AlertWidget({
    Key key,
    @required this.alert,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.1;
    final isEarthQuake = alert.label.toLowerCase() == "earthquake";
    if (isEarthQuake) {
      return InkWell(
        onTap: () =>
            ExtendedNavigator.of(context).pushAlertDetailPage(alert: alert),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: Palette.primary,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/images/alerts/earthquake-info.svg",
                              color: Palette.white,
                              height: width,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                alert.epicenterValue ?? "",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                alert.occurredValue,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Palette.black.withOpacity(0.5),
                                ),
                              ),
                              Text(
                                "Maximum seismic intensity ${alert.magnitudeValue}",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Palette.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Palette.primary,
                          borderRadius: BorderRadius.circular(15),
                        ),
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
                      ),
                      const SizedBox(height: 5),
                      // Text(
                      //   "10h",
                      //   style: TextStyle(
                      //     fontSize: 12,
                      //     fontWeight: FontWeight.w400,
                      //     color: Palette.black.withOpacity(0.5),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 1,
                color: Palette.dividerColor,
              ),
            ],
          ),
        ),
      );
    }
    return InkWell(
      onTap: () =>
          ExtendedNavigator.of(context).pushAlertDetailPage(alert: alert),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Palette.primary,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/images/alerts/volcano-alerts.svg",
                            color: Palette.white,
                            height: width,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              alert.volcanoNameValue ?? "",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              alert.occurredValue,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Palette.black.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "${alert.levelTitle} ${alert.levelValue} (Do not approach the volcano)",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Palette.black.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              height: 1,
              color: Palette.dividerColor,
            ),
          ],
        ),
      ),
    );
  }
}
