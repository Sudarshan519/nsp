import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/home/home_screen.dart';
import 'package:wallet_app/ui/pages/more/more_screen.dart';
import 'package:wallet_app/ui/pages/news/news_screen.dart';
import 'package:wallet_app/ui/pages/news/tab_page/news_tab_page.dart';
import 'package:wallet_app/ui/pages/resume/resume_screen.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/resume_tab_page.dart';
import 'package:wallet_app/ui/pages/transactions/transactions_page.dart';

import 'package:wallet_app/ui/widgets/widgets.dart';
import 'widgets/custom_tab_bar_widget.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabBarScreenState();
  }
}

class TabBarScreenState extends State<TabBarPage> {
  int _selectedIndex = 0;
  HomePage? homePage;

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
      title: 'Transaction',
      image: 'assets/images/navigation_tabs/transaction.svg',
    ),
    CustomTabBarData(
      title: 'More',
      image: 'assets/images/navigation_tabs/more.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final _children = getTabs();
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
                    onTap: _onTab,
                    tabs: _tabBarData,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }

  void _onTab(int page) {
    if (page == 0) {
      homePage?.scrollController.animateTo(
        0.0,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    }

    setState(() {
      _selectedIndex = page;
    });
  }

  List<Widget> getTabs() {
    homePage = HomePage(
      changeTabPage: _changeTo,
      changeResumeTabPage: _changeResumeTabPage,
      changeNewsTabPage: _changeNewsTabPage,
    );

    return [
      homePage!,
      const ResumePage(),
      NewsPage(),
      const TransactionPage(),
      const MorePage(),
    ];
  }

  void _changeTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _changeResumeTabPage(int index) {
    ResumeTabBarScreen.globalKey.currentState?.changeResumeTab(index);
  }

  void _changeNewsTabPage(int index) {
    NewsTabBarScreen.globalKey.currentState?.changeSelectedIndex(index);
  }
}
