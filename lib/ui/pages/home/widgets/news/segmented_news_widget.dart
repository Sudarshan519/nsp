import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart';
import 'package:wallet_app/features/alerts/presentation/get_alerts/get_alerts_bloc.dart';
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
          makeChanges: (fail) {
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

  Widget _newsData(List<NewsItem> newsList, {bool showAlerts = false}) {
    return Column(
      children: [
        if (showAlerts) _latestAlertBody(context, isHorizontal: true),
        ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
        ),
      ],
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
        loadingWithData: (data) =>
            !isHorizontal ? _showAlertList(data.alerts) : const SizedBox(),
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
          padding: const EdgeInsets.only(bottom: 16, top: 12),
          child: Column(
            children: [
              ListView.separated(
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: alerts.length,
                separatorBuilder: (context, index) => const Divider(
                  height: 1,
                ),
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
    var displayList = alerts;
    final controller = CarouselController();
    const limit = 5;

    if (displayList.length > limit) {
      ///showing only first [limit] alerts
      displayList = alerts.sublist(0, limit - 1);
    }
    const arrowSize = 22.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
                onTap: () => controller.previousPage(),
                child: Container(
                    height: arrowSize,
                    color: Colors.grey.shade300,
                    child: const Icon(
                      Icons.chevron_left,
                      size: arrowSize,
                    ))),
            const SizedBox(
              width: 7,
            ),
            GestureDetector(
                onTap: () => controller.nextPage(),
                child: Container(
                    height: arrowSize,
                    color: Colors.grey.shade300,
                    child: const Icon(
                      Icons.chevron_right,
                      size: arrowSize,
                    ))),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 6),
          height: height * 0.14,
          child: CarouselSlider.builder(
            carouselController: controller,
            options: CarouselOptions(
              height: 400,
              viewportFraction: 1,
              disableCenter: true,
            ),
            itemCount: displayList.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return Column(
                children: [
                  AlertWidget(alert: displayList[itemIndex]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                        displayList.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: Icon(
                                index == itemIndex
                                    ? Icons.circle_rounded
                                    : Icons.circle_outlined,
                                size: 10,
                              ),
                            )),
                  )
                ],
              );
            },
          ),
        ),
        const Divider(
          height: 1,
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
