import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/pages/home/widgets/balance_and_points.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'reward_point_usage.dart';
import 'reward_points_list.dart';

@RoutePage()
class RewardPointsHomePage extends StatelessWidget {
  const RewardPointsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reward Points",
          style: TextStyle(
            color: Palette.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: const RewardPointsHomeTabbarScreen(),
    );
  }
}

class RewardPointsHomeTabbarScreen extends StatefulWidget {
  const RewardPointsHomeTabbarScreen({Key? key}) : super(key: key);

  @override
  _RewardPointsHomeTabbarScreenState createState() =>
      _RewardPointsHomeTabbarScreenState();
}

class _RewardPointsHomeTabbarScreenState
    extends State<RewardPointsHomeTabbarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int _position;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _position = 0;
    super.initState();
  }

  final List<Widget> _children = const [
    RewardPointListPage(),
    RewardPointUsage(),
  ];

  List<Tab> _getTabBar(int position) => [
        Tab(
          text: "Reward Point Statement",
          iconMargin: const EdgeInsets.only(bottom: 2),
          icon: SvgPicture.asset(
            "assets/images/coupon/promo_code.svg",
            height: 25.0,
            color: position == 0 ? Palette.primary : Palette.black,
          ),
        ),
        Tab(
          text: "Usage",
          iconMargin: const EdgeInsets.only(bottom: 2),
          icon: SvgPicture.asset(
            "assets/images/coupon/redeem.svg",
            height: 25.0,
            color: position == 1 ? Palette.primary : Palette.black,
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final _tabBar = _getTabBar(_position);
    return Column(
      children: [
        const IgnorePointer(
            child: BalanceAndPointWidget(showAddBalanceButton: false)),
        const SizedBox(height: 5),
        TabBar(
          labelPadding: EdgeInsets.zero,
          unselectedLabelColor: Palette.black,
          labelStyle:
              const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          labelColor: Palette.primary,
          tabs: _tabBar,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Palette.primary,
          onTap: (page) {
            setState(() {
              _position = page;
            });
          },
        ),
        Container(
          height: 1,
          color: Palette.dividerColor,
        ),
        const SizedBox(height: 10),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: _children,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
