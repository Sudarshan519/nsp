import 'package:flutter/material.dart';

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
    Container(),
    Container(),
    Container(),
  ];

  final List<CustomTabBarData> _tabBarData = [
    CustomTabBarData(
        image: 'assets/images/navigation/home.png',
        selectedImage: 'assets/images/navigation/home_selected.png'),
    CustomTabBarData(
        image: 'assets/images/navigation/map.png',
        selectedImage: 'assets/images/navigation/map_selected.png'),
    CustomTabBarData(
        image: 'assets/images/navigation/message.png',
        selectedImage: 'assets/images/navigation/message_selected.png'),
    CustomTabBarData(
        image: 'assets/images/navigation/notification.png',
        selectedImage: 'assets/images/navigation/notification_selected.png'),
    CustomTabBarData(
        image: 'assets/images/navigation/profile.png',
        selectedImage: 'assets/images/navigation/profile_selected.png'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _children.length,
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? null
            : PreferredSize(
                preferredSize: Size(
                  screenSize.width,
                  50,
                ),
                child: CustomAppBar(
                  selectedIndex: _selectedIndex,
                ),
              ),
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
