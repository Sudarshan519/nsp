import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart';
import 'package:wallet_app/features/alerts/presentation/get_alerts/get_alerts_bloc.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/presentation/latest_news/latest_news_bloc.dart';
import 'package:wallet_app/features/news/presentation/news_for_you/news_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/alerts/tabs/alert_list_widget.dart';
import 'package:wallet_app/ui/pages/news/tab_page/widgets/news_item.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class SegmentedNewsViewWidget extends StatefulWidget {
  const SegmentedNewsViewWidget({
    Key? key,
    required this.changeTabPage,
    required this.changeNewsTabPage,
  }) : super(key: key);

  final Function(int) changeTabPage;
  final Function(int) changeNewsTabPage;

  @override
  _SegmentedNewsViewWidgetState createState() =>
      _SegmentedNewsViewWidgetState();
}

class _SegmentedNewsViewWidgetState extends State<SegmentedNewsViewWidget> {
  late int _selectedIndex;
  double height = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  void setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;

    return MultiSliver(
      children: [
        _header(context),
        const SizedBox(
          height: 10,
        ),
        BlocProvider(
          create: (_) => getIt<GetAlertsBloc>()
            ..add(
              const GetAlertsEvent.fetch(),
            ),
          child: _body(context),
        ),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return SliverPinnedHeader(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 250,
          decoration: BoxDecoration(
            color: Palette.primaryBackground,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  setSelectedIndex(0);
                },
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: _selectedIndex == 0
                        ? Palette.primaryButtonColor
                        : Palette.primaryBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "For You",
                      style: TextStyle(
                        color:
                            _selectedIndex == 0 ? Palette.white : Palette.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  setSelectedIndex(1);
                },
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: _selectedIndex == 1
                        ? Palette.primaryButtonColor
                        : Palette.primaryBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "News",
                      style: TextStyle(
                        color:
                            _selectedIndex == 1 ? Palette.white : Palette.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  setSelectedIndex(2);
                },
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: _selectedIndex == 2
                        ? Palette.primaryButtonColor
                        : Palette.primaryBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Alert",
                      style: TextStyle(
                          color: _selectedIndex == 2
                              ? Palette.white
                              : Palette.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    if (_selectedIndex == 0) {
      return _forYouBody(context);
    }

    if (_selectedIndex == 1) {
      return _latestNewsBody(context);
    }

    if (_selectedIndex == 2) {
      return _latestAlertBody(context);
    }

    return _forYouBody(context);
  }

  Widget _forYouBody(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
      return state.map(
        loading: (_) => const SizedBox(),
        loadingWith: (data) {
          final newsList = data.offlinedata;
          return _newsData(newsList);
        },
        loaded: (data) {
          final newsList = data.newsData;
          return _newsData(newsList, showAlerts: true);
        },
        failure: (_) => const SizedBox.shrink(),
        failureWithData: (data) {
          final newsList = data.newsData;
          return _newsData(newsList);
        },
      );
    });
  }

  Widget _latestNewsBody(BuildContext context) {
    return BlocBuilder<LatestNewsBloc, LatestNewsState>(
        builder: (context, state) {
      return state.map(
        loading: (_) => SizedBox(
          height: 70,
          child: loadingPage(),
        ),
        loadingWith: (data) {
          final newsList = data.offlinedata;
          return _newsData(newsList);
        },
        loaded: (data) {
          final newsList = data.newsData;
          return _newsData(newsList);
        },
        failure: (_) => const SizedBox.shrink(),
        failureWithData: (data) {
          final newsList = data.newsData;
          return _newsData(newsList);
        },
      );
    });
  }

  Widget selectLocationButton() {
    return BlocBuilder<GetAlertLocationBloc, GetAlertLocationState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => const SizedBox(),
          loaded: (_) => const SizedBox(),
          setLocation: (fail) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 14.0),
              child: CustomButton(
                title: 'Set Alert Location',
                onTap: () => context.pushRoute(const AlertsTabRoute()),
                svgAsset: 'assets/images/resume/mapMarker.svg',
              ),
            );
          });
    });
  }

  Widget _showNewsWithAlerts() {
    return Column(
      children: [
        SizedBox(
            height: height * 0.12,
            child: _latestAlertBody(context, isHorizontal: true)),
        const Divider(
          height: 1,
        )
      ],
    );
  }

  Widget _newsData(List<NewsItem> newsList, {bool showAlerts = false}) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (showAlerts) _showNewsWithAlerts(),
          ListView.builder(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              return NewsItemWidget(
                newsItem: newsList[index],
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: CustomButton(
              title: "View All",
              textStyle: TextStyle(
                color: Palette.white,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                if (_selectedIndex == 1) {
                  widget.changeNewsTabPage(1);
                }
                widget.changeTabPage(2);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _latestAlertBody(BuildContext context, {bool isHorizontal = false}) {
    return BlocBuilder<GetAlertsBloc, GetAlertsState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => const SizedBox.shrink(),
        loading: (_) => SizedBox(
          height: 70,
          child: loadingPage(),
        ),
        loadingWithData: (data) => !isHorizontal
            ? _showAlertList(data.alerts)
            : _showAlertListHorizontal(data.alerts),
        success: (success) => !isHorizontal
            ? _showAlertList(success.alerts)
            : _showAlertListHorizontal(success.alerts),
        failure: (failure) => const SizedBox.shrink(),
      );
    });
  }

  Widget _showAlertList(List<Alert> alerts) {
    return Column(
      children: [
        selectLocationButton(),
        ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            children: [
              ListView.builder(
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: alerts.length,
                itemBuilder: (context, index) {
                  return AlertWidget(
                    alert: alerts[index],
                  );
                },
              ),
              SizedBox(
                height: 10,
                child: loadingPage(),
              ),
              Center(
                child: CustomButton(
                  title: "View All",
                  textStyle: TextStyle(
                    color: Palette.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                  onTap: () => context.pushRoute(const AlertsTabRoute()),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _showAlertListHorizontal(List<Alert> alerts) {
    final controller = CarouselController();
    return Stack(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            height: height * 0.12,
            viewportFraction: 1,
          ),
          items: alerts.map((alert) {
            return AlertWidget(alert: alert);
          }).toList(),
        ),
        Transform.translate(
          offset: const Offset(-4, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
                onTap: () => controller.previousPage(),
                child: const Icon(Icons.chevron_left)),
          ),
        ),
        Transform.translate(
          offset: const Offset(4, 0),
          child: Align(
            alignment: Alignment.centerRight,
            child: InkWell(
                onTap: () => controller.nextPage(),
                child: const Icon(Icons.chevron_right)),
          ),
        ),
      ],
    );
  }
}
