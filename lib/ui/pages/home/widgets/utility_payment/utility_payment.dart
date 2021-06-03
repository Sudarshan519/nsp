import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/utils/assets.dart';

class UtilityPamentWidget extends StatelessWidget {
  const UtilityPamentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryTitleWidget(title: "Utility Payment"),
          const SizedBox(height: 10),
          ShadowBoxWidget(
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.all(1),
            child: Container(
              color: Colors.white30,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 16 / 11,
                children: const [
                  GridItem(
                    label: 'NTC Topup',
                    svgPath: Assets.topup,
                    route: TopUpRoute(),
                  ),
                  GridItem(
                    label: 'Ncell Topup',
                    svgPath: Assets.topup,
                    route: TopUpRoute(),
                  ),
                  GridItem(
                    label: 'Smart Cell Topup',
                    svgPath: Assets.topup,
                    route: TopUpRoute(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String label;
  final String svgPath;
  final PageRouteInfo<dynamic> route;
  const GridItem({
    Key? key,
    required this.label,
    required this.svgPath,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushRoute(route),
      child: Column(children: [
        SvgPicture.asset(svgPath),
        const SizedBox(height: 6),
        Text(
          label,
          textScaleFactor: 0.87,
          style: const TextStyle(fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}
