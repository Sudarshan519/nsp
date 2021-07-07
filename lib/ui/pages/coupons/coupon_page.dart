import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/pages/coupons/tab_pages/promo_code_page.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'tab_pages/redeem_page.dart';

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
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  final List<Widget> _children = const [
    PromocodePage(),
    RedeemPage(),
  ];

  final List<Tab> _tabBar = [
    Tab(
      text: "Redeem",
      icon: SvgPicture.asset(
        "assets/images/coupon/redeem.svg",
        height: 25.0,
      ),
    ),
    Tab(
      text: "Promo Code",
      icon: SvgPicture.asset(
        "assets/images/coupon/promo_code.svg",
        height: 25.0,
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelColor: Palette.black,
          labelColor: Palette.primary,
          tabs: _tabBar,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Palette.primary,
        ),
        Container(
          height: 1,
          color: Palette.dividerColor,
        ),
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
    _tabController?.dispose();
    super.dispose();
  }
}
