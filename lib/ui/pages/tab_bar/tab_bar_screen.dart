import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/home/home_screen.dart';
import 'package:wallet_app/ui/pages/news/news_screen.dart';
import 'package:wallet_app/ui/pages/resume/resume_screen.dart';

import 'package:wallet_app/ui/widgets/widgets.dart';
import 'widgets/custom_tab_bar_widget.dart';

class TabBarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabBarScreenState();
  }
}

class TabBarScreenState extends State<TabBarScreen> {
  int _selectedIndex = 0;
  List<Widget> _children = [];

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
    _children = getTabs();
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
                child: SafeArea(
                  child: CustomTabBar(
                    selectedIndex: _selectedIndex,
                    onTap: (index) => setState(() => _selectedIndex = index),
                    tabs: _tabBarData,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }

  List<Widget> getTabs() {
    return [
      HomePage(
        changeTabPage: _changeTo,
      ),
      ResumePage(),
      NewsPage(),
      Container(),
    ];
  }

  void _changeTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}