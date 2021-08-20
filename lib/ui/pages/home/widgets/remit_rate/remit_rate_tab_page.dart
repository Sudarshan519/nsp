import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:wallet_app/features/home/domain/entities/remit_rate.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';

import 'remit_rate_exchange_page.dart';

class RemitRateTabPage extends StatefulWidget {
  final List<RemitRate> remitRates;

  const RemitRateTabPage({
    Key? key,
    required this.remitRates,
  }) : super(key: key);
  @override
  _RemitRateTabPageState createState() => _RemitRateTabPageState();
}

class _RemitRateTabPageState extends State<RemitRateTabPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  late List<RemitRate> _remitRates;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _remitRates = [];

    widget.remitRates.asMap().forEach(
      (index, rate) {
        if (rate.remitExchange?.isNotEmpty ?? false) {
          _remitRates.add(rate);
        }
      },
    );

    _tabController = TabController(length: _remitRates.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final _tabBar = _tabBarWidget();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          unselectedLabelColor: Palette.black,
          labelColor: Palette.black,
          tabs: _tabBar,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Palette.primary,
          isScrollable: true,
          onTap: (i) => setState(() => _selectedIndex = i),
        ),
        Container(
          height: 1,
          color: Palette.dividerColor,
        ),
        IndexedStack(
          index: _selectedIndex,
          children: _remitRates
              .map((e) => RemitRateExchangePage(
                    remitRate: e,
                  ))
              .toList(),
        )
      ],
    );
  }

  List<Widget> _tabBarWidget() {
    final widgets = <Widget>[];

    _remitRates.asMap().forEach(
          (index, rate) => widgets.add(
            _header(
              index: index,
              rate: rate,
            ),
          ),
        );
    return widgets;
  }

  Widget _header({
    required int index,
    required RemitRate rate,
  }) {
    final _baseurl = getIt<ConfigReader>().baseURL;
    final text = rate.remitServiceName ?? "";
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.network(
          '$_baseurl${rate.logo ?? ' '}',
          height: 20,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
            width: size.width * 0.20,
            height: size.height * 0.036,
            child: text.length > 16
                ? Marquee(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    text: text,
                    textScaleFactor: 0.7,
                    blankSpace: 20.0,
                    velocity: 15,
                    startPadding: 10.0,
                    accelerationCurve: Curves.linear,
                    decelerationCurve: Curves.easeOut,
                  )
                : Text(
                    text,
                    textScaleFactor: 0.7,
                    textAlign: TextAlign.center,
                  )),
      ],
    );
  }
}
