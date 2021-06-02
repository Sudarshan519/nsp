import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'remit_rate_exchange_page.dart';

class RemitRateTabPage extends StatefulWidget {
  @override
  _RemitRateTabPageState createState() => _RemitRateTabPageState();
}

class _RemitRateTabPageState extends State<RemitRateTabPage> {
  late int _selectedIndex;

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

  TabController? _tabController;
  final List<Tab> _tabBar = const [
    Tab(
      text: "NRB",
      icon: Icon(
        Icons.atm,
      ),
    ),
    Tab(
      text: "Western Union",
      icon: Icon(
        Icons.atm,
      ),
    ),
    Tab(
      text: "IME",
      icon: Icon(
        Icons.atm,
      ),
    ),
    Tab(
      text: "Prabhu",
      icon: Icon(Icons.atm),
    ),
  ];

  final List<Widget> _children = [
    RemitRateExchangePage(),
    RemitRateExchangePage(),
    RemitRateExchangePage(),
    RemitRateExchangePage(),
  ];

  @override
  Widget build(BuildContext context) {
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
          height: 150,
          child: TabBarView(
            controller: _tabController,
            children: _children.map((child) => child).toList(),
          ),
        ),
      ],
    );
  }
}
