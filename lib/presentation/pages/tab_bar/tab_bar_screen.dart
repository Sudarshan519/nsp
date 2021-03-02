import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/home/home_screen.dart';
import 'package:wallet_app/presentation/pages/news/news_screen.dart';
import 'package:wallet_app/presentation/pages/resume/resume_screen.dart';

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
    HomePage(),
    ResumePage(),
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<HomePageDataBloc>()
            ..add(
              const HomePageDataEvent.fetch(),
            ),
        ),
      ],
      child: _tabController(),
    );
  }

  Widget _tabController() {
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
}
