import 'package:flutter/material.dart';
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

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: widget.remitRates.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final _child = _children(widget.remitRates);
    final _tabBar = _tabBarWidget(widget.remitRates);
    return Column(
      children: [
        TabBar(
          unselectedLabelColor: Palette.black,
          labelColor: Palette.black,
          tabs: _tabBar,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Palette.primary,
          isScrollable: true,
        ),
        Container(
          height: 1,
          color: Palette.dividerColor,
        ),
        SizedBox(
          height: 170,
          child: TabBarView(
            controller: _tabController,
            children: _child.map((child) => child).toList(),
          ),
        ),
      ],
    );
  }

  List<Tab> _tabBarWidget(List<RemitRate> remitRates) {
    final widgets = <Tab>[];

    remitRates.asMap().forEach(
          (index, rate) => widgets.add(
            _header(
              index: index,
              rate: rate,
            ),
          ),
        );
    return widgets;
  }

  Tab _header({
    required int index,
    required RemitRate rate,
  }) {
    final _baseurl = getIt<ConfigReader>().baseURL;

    return Tab(
      text: rate.remitServiceName ?? '',
      icon: Image.network(
        '$_baseurl${rate.logo ?? ' '}',
        height: 20,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  List<Widget> _children(List<RemitRate> remitRates) {
    final widgets = <Widget>[];
    for (final RemitRate rate in remitRates) {
      widgets.add(RemitRateExchangePage(
        remitRate: rate,
      ));
    }
    return widgets;
  }
}
