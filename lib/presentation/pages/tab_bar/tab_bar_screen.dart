import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/news/news_screen.dart';

import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'widgets/custom_tab_bar_widget.dart';

class TabBarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabBarScreenState();
  }
}

class TabBarScreenState extends State<TabBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    Container(),
    Container(),
    NewsPage(),
    Container(),
  ];

  final List<CustomTabBarData> _tabBarData = [
    CustomTabBarData(
      title: 'Home',
      image: 'assets/images/navigation_tabs/home.svg',
    ),
    CustomTabBarData(
      title: 'Resume',
      image: 'assets/images/navigation_tabs/resume.svg',
    ),
    CustomTabBarData(
      title: 'News',
      image: 'assets/images/navigation_tabs/news.svg',
    ),
    CustomTabBarData(
      title: 'More',
      image: 'assets/images/navigation_tabs/more.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _children.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _children,
        ),
        bottomNavigationBar: !Responsive.isDesktop(context)
            ? Container(
                color: Palette.primaryBackground,
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: CustomTabBar(
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                  tabs: _tabBarData,
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
