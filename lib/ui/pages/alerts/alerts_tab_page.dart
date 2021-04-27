import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'tabs/alert_list_page.dart';

class AlertsTabPage extends StatefulWidget {
  @override
  _AlertsTabPageState createState() => _AlertsTabPageState();
}

class _AlertsTabPageState extends State<AlertsTabPage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  TabController _tabController;

  final List<Widget> _children = [
    AlertListPage(),
    Container(),
    Container(),
    Container(),
  ];

  final List<Tab> _tabBarData = [
    Tab(
      icon: SvgPicture.asset(
        "assets/images/alerts/latest-alerts.svg",
        height: 20.0,
      ),
      child: const Text(
        "Latest Alerts",
        style: TextStyle(
          fontSize: 10,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Tab(
      icon: SvgPicture.asset(
        "assets/images/alerts/earthquake-info.svg",
        height: 20.0,
      ),
      child: const Text(
        "Earthquake Info",
        style: TextStyle(fontSize: 10),
        textAlign: TextAlign.center,
      ),
    ),
    Tab(
      icon: SvgPicture.asset(
        "assets/images/alerts/volcano-alerts.svg",
        height: 20.0,
      ),
      child: const Text(
        "Volcano Alert",
        style: TextStyle(fontSize: 10),
        textAlign: TextAlign.center,
      ),
    ),
    Tab(
      icon: SvgPicture.asset(
        "assets/images/alerts/weather-info.svg",
        height: 20.0,
      ),
      child: const Text(
        "Weather Info",
        style: TextStyle(fontSize: 10),
        textAlign: TextAlign.center,
      ),
    ),
  ];

  @override
  void initState() {
    _selectedIndex = 0;
    _tabController = TabController(length: _children.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alerts",
          style: TextStyle(color: Palette.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: Column(
        children: [
          TabBar(
            unselectedLabelColor: Palette.black,
            labelColor: Palette.primary,
            tabs: _tabBarData,
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Palette.primary,
            // isScrollable: true,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _children.map((child) => child).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
