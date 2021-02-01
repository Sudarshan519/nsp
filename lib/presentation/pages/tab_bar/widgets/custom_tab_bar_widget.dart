import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';

class CustomTabBarData {
  final String image;
  final String selectedImage;

  CustomTabBarData({
    @required this.image,
    @required this.selectedImage,
  });
}

class CustomTabBar extends StatelessWidget {
  final List<CustomTabBarData> tabs;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    Key key,
    @required this.tabs,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Palette.primary,
            width: 3.0,
          ),
        ),
      ),
      labelStyle: const TextStyle(fontSize: 10),
      unselectedLabelStyle: const TextStyle(fontSize: 10),
      labelColor: Palette.primary,
      unselectedLabelColor: Palette.black,
      tabs: tabs
          .asMap()
          .map((index, tabBarData) => MapEntry(
                index,
                Tab(
                  icon: Image.asset(
                    index == selectedIndex
                        ? tabBarData.selectedImage
                        : tabBarData.image,
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
