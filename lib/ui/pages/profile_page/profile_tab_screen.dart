import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'tab_page/personal_detail.dart';
import 'tab_page/personal_document_detail.dart';

class ProfileTabBarScreen extends StatefulWidget {
  @override
  _ProfileTabBarScreenState createState() => _ProfileTabBarScreenState();
}

class _ProfileTabBarScreenState extends State<ProfileTabBarScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int? _selectedIndex;

  final List<Widget> _children = [
    PersonalDetailPage(),
    PersonalDocumentDetailPage(),
  ];

  List<Tab> _tabBar() => [
        Tab(
          text: "Personal Details",
          icon: SvgPicture.asset(
            "assets/images/profile/detail.svg",
            color: _selectedIndex == 0 ? Palette.primary : Palette.black,
            height: 25.0,
          ),
        ),
        Tab(
          text: "Documents Details",
          icon: SvgPicture.asset(
            "assets/images/profile/doc.svg",
            color: _selectedIndex == 1 ? Palette.primary : Palette.black,
            height: 25.0,
          ),
        ),
      ];

  @override
  void initState() {
    _tabController = TabController(length: _children.length, vsync: this);
    _selectedIndex = 0;
    _tabController?.addListener(tabChanged);
    super.initState();
  }

  void tabChanged() {
    setState(() {
      _selectedIndex = _tabController?.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelColor: Palette.black,
          labelColor: Palette.primary,
          tabs: _tabBar(),
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Palette.primary,
          isScrollable: true,
        ),
        const SizedBox(height: 10),
        if (_selectedIndex == 0) _children[0] else _children[1],
      ],
    );
  }
}
