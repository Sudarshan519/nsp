import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart';
import 'package:wallet_app/features/alerts/presentation/get_alerts/get_alerts_bloc.dart';
import 'package:wallet_app/features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'tabs/alert_list_page.dart';
import 'tabs/earthquake_list_page.dart';
import 'tabs/volcano_list_page.dart';

class AlertsTabPage extends StatefulWidget {
  @override
  _AlertsTabPageState createState() => _AlertsTabPageState();
}

class _AlertsTabPageState extends State<AlertsTabPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<Widget> _children = [
    AlertListPage(),
    EarthquakeListPage(),
    VolcanoListPage(),
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
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<GetAlertsBloc>()
              ..add(
                const GetAlertsEvent.fetch(),
              ),
          ),
          BlocProvider(
            create: (_) => getIt<GetEarthquakesBloc>()
              ..add(
                const GetEarthquakesEvent.fetch(),
              ),
          ),
          BlocProvider(
            create: (_) => getIt<GetVolcanoesBloc>()
              ..add(
                const GetVolcanoesEvent.fetch(),
              ),
          ),
        ],
        child: Column(
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
      ),
    );
  }
}
