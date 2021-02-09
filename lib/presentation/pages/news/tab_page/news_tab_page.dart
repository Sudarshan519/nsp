import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/news/tab_page/tabs/tabs.dart';

import 'tabs/for_you/for_you_tab.dart';
import 'tabs/tab_bar/news_tab_bar.dart';

class TabBarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabBarScreenState();
  }
}

class TabBarScreenState extends State<TabBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    ForYouNewsTab(),
    ForYouNewsTab(),
    NewsTab(),
    NewsTab(),
  ];

  final List<NewsTabBarData> _tabBarData = [
    NewsTabBarData(title: "For you"),
    NewsTabBarData(title: "Latest"),
    NewsTabBarData(title: "Preference"),
    NewsTabBarData(title: "Saved"),
  ];

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _children.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: NewsTabBar(
            onTap: (selected) {
              setState(() {
                _selectedIndex = selected;
              });
            },
            tabs: _tabBarData,
            selectedIndex: _selectedIndex,
          ),
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _children,
        ),
      ),
    );
  }
}
