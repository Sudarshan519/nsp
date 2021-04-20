import 'package:flutter/material.dart';

import 'tabs/for_you/for_you_category_selection.dart';
import 'tabs/for_you/for_you_tab.dart';
import 'tabs/latest/latest_news_tab.dart';
import 'tabs/preferences/news_preferences_tab.dart';
import 'tabs/saved_news/save_news_tab.dart';
import 'tabs/tab_bar/news_tab_bar.dart';

class TabBarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabBarScreenState();
  }
}

class TabBarScreenState extends State<TabBarScreen> {
  int _selectedIndex = 0;
  bool _showForYouPreferencePage = false;

  List<Widget> _children = [
    const SizedBox.shrink(),
    LatestNewsTab(),
    NewsPreferenceTab(),
    SaveNewsTab(),
  ];

  final List<NewsTabBarData> _tabBarData = [
    NewsTabBarData(title: "For you"),
    NewsTabBarData(title: "Latest"),
    NewsTabBarData(title: "Preference"),
    NewsTabBarData(title: "Saved"),
  ];

  @override
  Widget build(BuildContext context) {
    _children = _getChildren();
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
            isScrollable: false,
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

  List<Widget> _getChildren() {
    final forYouPage = _showForYouPreferencePage
        ? ForYouCategorySelectionPage(editGenre: _selectedForYouPreferencePage)
        : ForYouNewsTab(editGenre: _selectedForYouPreferencePage);

    return [
      forYouPage,
      LatestNewsTab(),
      NewsPreferenceTab(),
      SaveNewsTab(),
    ];
  }

  void _selectedForYouPreferencePage() {
    setState(() {
      _showForYouPreferencePage = !_showForYouPreferencePage;
    });
  }
}
