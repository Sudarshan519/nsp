import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/pages/home/home_screen.dart';
import 'package:wallet_app/ui/pages/more/more_screen.dart';
import 'package:wallet_app/ui/pages/news/news_screen.dart';
import 'package:wallet_app/ui/pages/news/tab_page/news_tab_page.dart';
import 'package:wallet_app/ui/pages/resume/resume_screen.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/resume_tab_page.dart';
import 'package:wallet_app/ui/pages/transactions/transactions_page.dart';

import 'package:wallet_app/ui/widgets/widgets.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabBarScreenState();
  }
}

class TabBarScreenState extends State<TabBarPage> {
  int _selectedIndex = 0;
  HomePage? homePage;

  List<BottomNavigationBarItem> _tabBarData(int index) => [
        BottomNavigationBarItem(
          label: 'Home',
          icon: SvgPicture.asset(
            'assets/images/navigation_tabs/home.svg',
            color: index == 0 ? Palette.primary : null,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Resume',
          icon: SvgPicture.asset(
            'assets/images/navigation_tabs/resume.svg',
            color: index == 1 ? Palette.primary : null,
          ),
        ),
        BottomNavigationBarItem(
          label: 'News',
          icon: SvgPicture.asset(
            'assets/images/navigation_tabs/news.svg',
            color: index == 2 ? Palette.primary : null,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Transaction',
          icon: SvgPicture.asset(
            'assets/images/navigation_tabs/transaction.svg',
            color: index == 3 ? Palette.primary : null,
          ),
        ),
        BottomNavigationBarItem(
          label: 'More',
          icon: SvgPicture.asset(
            'assets/images/navigation_tabs/more.svg',
            color: index == 4 ? Palette.primary : null,
          ),
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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: _tabBarData(_selectedIndex),
          selectedLabelStyle:
              const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          selectedItemColor: Palette.primary,
          unselectedItemColor: Palette.black,
          showUnselectedLabels: true,
        ),
      ),
    );
  }

  void _onTap(int page) {
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
