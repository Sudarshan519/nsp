import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/qualification/qualification_page.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/work/work_page.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

import 'about/about_page.dart';
import 'academics/academics_page.dart';
import 'address/address_page.dart';
import 'other/other_info.dart';

class ResumeTabBarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ResumeTabBarScreenState();
  }
}

class ResumeTabBarScreenState extends State<ResumeTabBarScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: _children.length, vsync: this);
    super.initState();
  }

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
          isScrollable: true,
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
    _tabController.dispose();
    super.dispose();
  }

  //MARK: Helper Variables
  final List<Widget> _children = [
    AboutPage(),
    AddressPage(),
    AcademicsPage(),
    WorkPage(),
    QualificationPage(),
    OtherInfo(),
  ];

  final List<Tab> _tabBar = [
    Tab(
      text: "About",
      icon: SvgPicture.asset(
        "assets/images/resume/about.svg",
        height: 25.0,
      ),
    ),
    Tab(
      text: "Address",
      icon: SvgPicture.asset(
        "assets/images/resume/mapMarker.svg",
        height: 25.0,
      ),
    ),
    Tab(
      text: "Academics",
      icon: SvgPicture.asset(
        "assets/images/resume/academy.svg",
        height: 25.0,
      ),
    ),
    Tab(
      text: "Work",
      icon: SvgPicture.asset(
        "assets/images/resume/job.svg",
        height: 25.0,
      ),
    ),
    Tab(
      text: "Qualification",
      icon: SvgPicture.asset(
        "assets/images/resume/qualification.svg",
        height: 25.0,
      ),
    ),
    Tab(
      text: "Others",
      icon: SvgPicture.asset(
        "assets/images/resume/about.svg",
        height: 25.0,
      ),
    ),
  ];
}
