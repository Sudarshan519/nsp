import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/pages/coupons/tab_pages/promo_code_page.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'tab_pages/redeem_page.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class CouponPage extends StatelessWidget {
  const CouponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Coupons",
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
      body: const CouponPageTabbarScreen(),
    );
  }
}

class CouponPageTabbarScreen extends StatefulWidget {
  const CouponPageTabbarScreen({Key? key}) : super(key: key);

  @override
  _CouponPageTabbarScreenState createState() => _CouponPageTabbarScreenState();
}

class _CouponPageTabbarScreenState extends State<CouponPageTabbarScreen>
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
    PromocodePage(),
    RedeemPage(),
  ];

  List<Tab> _getTabBar(int position) => [
        Tab(
          text: "Promo Code",
          iconMargin: const EdgeInsets.only(bottom: 2),
          icon: SvgPicture.asset(
            "assets/images/coupon/promo_code.svg",
            height: 25.0,
            color: position == 0 ? Palette.primary : Palette.black,
          ),
        ),
        Tab(
          text: "Redeem",
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
            children: _children.map((child) => child).toList(),
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
