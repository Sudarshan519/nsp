import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class HomeHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _headerInfo(),
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
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Row _navigationBar() {
    return Row(
      children: [
        const SizedBox(
          height: 35,
          width: 35,
          child: CircleAvatar(
            // backgroundColor: Palette.primaryBackground,
            backgroundImage: AssetImage('assets/images/navigation_bar/u1.png'),
          ),
        ),
        const Spacer(),
        SvgPicture.asset(
          "assets/images/navigation_bar/search.svg",
          height: 25.0,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          "assets/images/navigation_bar/globe.svg",
          height: 25.0,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          "assets/images/navigation_bar/notification.svg",
          height: 25.0,
        ),
        // const SizedBox(
        //   width: 10,
        // ),
        // SvgPicture.asset(
        //   "assets/images/navigation_bar/menu.svg",
        //   height: 25.0,
        // ),
      ],
    );
  }
}
