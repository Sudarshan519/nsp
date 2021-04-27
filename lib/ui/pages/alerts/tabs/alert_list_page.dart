import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class AlertListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return _listItem(context);
      },
    );
  }

  Widget _listItem(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.1;
    return InkWell(
      onTap: () => ExtendedNavigator.of(context).pushAlertDetailPage(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            Row(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Northern WakayamaPref",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "2021/03/24 | 06:46",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Palette.black.withOpacity(0.5),
                      ),
                    ),
                    Text(
                      "Maximum seismic intensity 4.3",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Palette.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                const Spacer(),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Palette.primary,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "4.2",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Palette.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "10h",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Palette.black.withOpacity(0.5),
                      ),
                    ),
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
}
