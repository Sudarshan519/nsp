import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

import 'balance_and_points.dart';

class HomeHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _headerInfo(),
        const BalanceAndPointWidget(),
      ],
    );
  }

  Container _headerInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: Palette.primary,
      ),
      child: SafeArea(
        child: Column(
          children: [
            _navigationBar(),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Jack Mastuma",
              style: TextStyle(
                color: Palette.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "3475",
              style: TextStyle(
                color: Palette.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Row _navigationBar() {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: CircleAvatar(
            backgroundColor: Palette.primaryBackground,
          ),
        ),
        const Spacer(),
        SvgPicture.asset(
          "assets/images/navigation_bar/search.svg",
          // color: index == selectedIndex ? Palette.primary : null,
          height: 25.0,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          "assets/images/navigation_bar/globe.svg",
          // color: index == selectedIndex ? Palette.primary : null,
          height: 25.0,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          "assets/images/navigation_bar/notification.svg",
          // color: index == selectedIndex ? Palette.primary : null,
          height: 25.0,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          "assets/images/navigation_bar/menu.svg",
          // color: index == selectedIndex ? Palette.primary : null,
          height: 25.0,
        ),
      ],
    );
  }
}
