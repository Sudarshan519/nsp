import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_countries.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_japan_city.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_prefecture.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_address_info.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_address_info/actor/update_address_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/qualification/qualification_page.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/work/work_page.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

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
    return BlocBuilder<ResumeWatcherBloc, ResumeWatcherState>(
      builder: (context, state) {
        if (state.isLoading) {
          return loadingPage();
        }
        return _resumeTabBody(context, state);
      },
    );
  }

  Widget _resumeTabBody(BuildContext context, ResumeWatcherState state) {
    _children = getPages(state);
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
  List<Widget> _children = [
    loadingPage(),
    loadingPage(),
    loadingPage(),
    loadingPage(),
    loadingPage(),
    loadingPage(),
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

  List<Widget> getPages(ResumeWatcherState state) {
    return [
      AboutPage(
        info: state.info,
      ),
      AddressPage(
        info: state.info,
      ),
      AcademicsPage(
        academics: state.academics ?? [],
        listOfSubjects: state?.options?.majorSubjects ?? [],
      ),
      WorkPage(
        works: state.works ?? [],
        typeOfCompanyList: state?.options?.companyTypes ?? [],
      ),
      QualificationPage(
        qualifications: state.qualifications ?? [],
      ),
      OtherInfo(
        info: state.info,
      ),
    ];
  }
}
