import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

class NewsTabBarData {
  final String title;

  NewsTabBarData({
    @required this.title,
  }) : assert(title != null);
}

class NewsTabBar extends StatefulWidget {
  final List<NewsTabBarData> tabs;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isScrollable;

  const NewsTabBar({
    Key key,
    @required this.tabs,
    @required this.selectedIndex,
    @required this.onTap,
    @required this.isScrollable,
  }) : super(key: key);

  @override
  _NewsTabBarState createState() => _NewsTabBarState();
}

class _NewsTabBarState extends State<NewsTabBar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 3,
            color: Palette.primary,
          ),
        ),
      ),
      isScrollable: widget.isScrollable,
      labelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
      labelColor: Palette.black,
      unselectedLabelColor: Palette.black,
      tabs: widget.tabs
          .asMap()
          .map(
            (index, tabBarData) => MapEntry(
              index,
              Tab(
                child: Text(
                  tabBarData.title,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
          .values
          .toList(),
      onTap: widget.onTap,
    );
  }
}
