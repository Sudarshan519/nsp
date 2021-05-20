import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

class CustomTabBarData {
  final String title;
  final String image;

  CustomTabBarData({
    required this.title,
    required this.image,
  });
}

class CustomTabBar extends StatelessWidget {
  final List<CustomTabBarData> tabs;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    Key? key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: const BoxDecoration(),
      labelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      unselectedLabelStyle:
          const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      labelColor: Palette.primary,
      unselectedLabelColor: Palette.black,
      tabs: tabs
          .asMap()
          .map((index, tabBarData) => MapEntry(
                index,
                Tab(
                  text: tabBarData.title,
                  icon: SvgPicture.asset(
                    tabBarData.image,
                    color: index == selectedIndex ? Palette.primary : null,
                    height: 25.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
