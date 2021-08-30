import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart';
import 'package:wallet_app/features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart';
import 'package:wallet_app/features/alerts/presentation/get_alerts/get_alerts_bloc.dart';
import 'package:wallet_app/features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart';
import 'package:wallet_app/features/alerts/presentation/get_weathers/get_weathers_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/alerts/tabs/weather_list_page.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'location/select_location_page.dart';
import 'tabs/alert_list_page.dart';
import 'tabs/earthquake_list_page.dart';
import 'tabs/volcano_list_page.dart';

class AlertsTabPage extends StatelessWidget {
  const AlertsTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: BlocBuilder<GetAlertLocationBloc, GetAlertLocationState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => loadingPage(),
              loaded: (_) => _AlertsTab(),
              setLocation: (fail) {
                SchedulerBinding.instance?.addPostFrameCallback((_) {
                  FlushbarHelper.createError(
                      duration: const Duration(seconds: 4),
                      message: fail.failure.map(
                          serverError: (serverError) => serverError.message,
                          invalidUser: (error) => 'Invalid User',
                          noInternetConnection: (noInternetConnection) =>
                              AppConstants.noNetwork)).show(context);
                });

                return const SelectLocationPage();
              });
        },
      ),
    );
  }
}

class _AlertsTab extends StatefulWidget {
  @override
  __AlertsTabState createState() => __AlertsTabState();
}

class __AlertsTabState extends State<_AlertsTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final List<Widget> _children = [
    AlertListPage(),
    EarthquakeListPage(),
    VolcanoListPage(),
    WeatherListPage(),
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
        actions: [
          IconButton(
              onPressed: () {
                context
                    .read<GetAlertLocationBloc>()
                    .add(const GetAlertLocationEvent.removePlace());
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
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
          BlocProvider(
            create: (context) => getIt<GetWeathersBloc>()
              ..add(
                const GetWeathersEvent.fetchWeather(),
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
