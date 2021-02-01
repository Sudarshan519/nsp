import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';

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

  const NewsTabBar({
    Key key,
    @required this.tabs,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);

  @override
  _NewsTabBarState createState() => _NewsTabBarState();
}

class _NewsTabBarState extends State<NewsTabBar> {
  @override
  Widget build(BuildContext context) {
    // selectedIndex = widget.selectedIndex;
    return TabBar(
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0,
          ),
        ),
      ),
      labelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
      labelColor: Palette.white,
      unselectedLabelColor: Palette.black,
      tabs: widget.tabs
          .asMap()
          .map(
            (index, tabBarData) => MapEntry(
              index,
              Tab(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        index == widget.selectedIndex ? Palette.accent : null,
                  ),
                  child: Align(
                    child: Text(widget.tabs[index].title.toUpperCase()),
                  ),
                ),
                // text: tabs[index].title,
              ),
            ),
          )
          .values
          .toList(),
      onTap: widget.onTap,
    );
  }
}
