import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class UtilityPamentWidget extends StatelessWidget {
  final String balance;
  const UtilityPamentWidget({
    Key? key,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryTitleWidget(title: "Utility Payment"),
          const SizedBox(height: 10),
          ShadowBoxWidget(
            margin: EdgeInsets.zero,
            child: GridView.count(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                GridItem(
                  label: 'NTC Topup',
                  imageAsset: 'ntc',
                  route: TopUpRoute(balance: balance),
                ),
                GridItem(
                  label: 'Ncell Topup',
                  imageAsset: 'ncell',
                  route: TopUpRoute(balance: balance),
                ),
                GridItem(
                  label: 'Smart Cell Topup',
                  imageAsset: 'smartcell',
                  route: TopUpRoute(balance: balance),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String label;
  final String? svgPath;
  final String? imageAsset;
  final PageRouteInfo<dynamic> route;
  const GridItem({
    Key? key,
    required this.label,
    this.svgPath,
    this.imageAsset,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushRoute(route),
      child: Column(
        children: [
          if (svgPath != null) SvgPicture.asset(svgPath!),
          if (imageAsset != null)
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Palette.dividerColor,
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/home/utility-payment/${imageAsset ?? ''}.png',
                ),
              ),
            ),
          const SizedBox(height: 6),
          Expanded(
            child: Text(
              label,
              textScaleFactor: 0.87,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.fade,
            ),
          )
        ],
      ),
    );
  }
}
