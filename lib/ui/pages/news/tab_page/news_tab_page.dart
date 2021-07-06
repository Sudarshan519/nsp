import 'package:flutter/material.dart';
import 'package:wallet_app/features/news/data/datasource/news_local_data_source.dart';
import 'package:wallet_app/injections/injection.dart';

import 'tabs/for_you/for_you_category_selection.dart';
import 'tabs/for_you/for_you_tab.dart';
import 'tabs/latest/latest_news_tab.dart';
import 'tabs/preferences/news_preferences_tab.dart';
import 'tabs/saved_news/save_news_tab.dart';
import 'tabs/tab_bar/news_tab_bar.dart';

class NewsTabBarScreen extends StatefulWidget {
  static final GlobalKey<TabBarScreenState> globalKey = GlobalKey();

  NewsTabBarScreen() : super(key: globalKey);

  @override
  State<StatefulWidget> createState() {
    return TabBarScreenState();
  }
}

class TabBarScreenState extends State<NewsTabBarScreen> {
  int _selectedIndex = 0;
  bool _showForYouPreferencePage = false;

  final List<NewsTabBarData> _tabBarData = [
    NewsTabBarData(title: "For you"),
    NewsTabBarData(title: "Latest"),
    NewsTabBarData(title: "Preference"),
    NewsTabBarData(title: "Saved"),
  ];

  @override
  Widget build(BuildContext context) {
    final _children = _getChildren();
    return DefaultTabController(
      length: _children.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: NewsTabBar(
            onTap: changeSelectedIndex,
            isScrollable: false,
            tabs: _tabBarData,
            selectedIndex: _selectedIndex,
            labelPadding: EdgeInsets.zero,
          ),
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _children,
        ),
      ),
    );
  }

  Widget forYouPage() {
    ///forcing [ForYouCategorySelectionPage] to show if News Preferences Genre is empty
    getIt<NewsLocalDataSourceProtocol>()
        .getNewsPreferencesGenre()
        .then((value) {
      if (value.isEmpty) {
        setState(() {
          _showForYouPreferencePage = true;
        });
      }
    });
    return _showForYouPreferencePage
        ? ForYouCategorySelectionPage(editGenre: _selectedForYouPreferencePage)
        : ForYouNewsTab(editGenre: _selectedForYouPreferencePage);
  }

  List<Widget> _getChildren() {
    return [
      forYouPage(),
      LatestNewsTab(),
      NewsPreferenceTab(changePage: changeSelectedIndex),
      SaveNewsTab(),
    ];
  }

  void changeSelectedIndex(int page) {
    setState(() {
      _selectedIndex = page;
    });
  }

  void _selectedForYouPreferencePage() {
    setState(() {
      _showForYouPreferencePage = !_showForYouPreferencePage;
    });
  }
}
