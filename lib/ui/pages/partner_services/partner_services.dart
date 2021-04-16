import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services.dart';
import 'package:wallet_app/features/partner_services/presentation/bloc/parnter_services_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/news/tab_page/tabs/tab_bar/news_tab_bar.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';

class PartnerServicesPage extends StatefulWidget {
  @override
  _PartnerServicesState createState() => _PartnerServicesState();
}

class _PartnerServicesState extends State<PartnerServicesPage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    _PartnerServicesPageList(),
    _PartnerServicesPageList(),
    _PartnerServicesPageList(),
    _PartnerServicesPageList(),
  ];

  final List<NewsTabBarData> _tabBarData = [
    NewsTabBarData(title: "All"),
    NewsTabBarData(title: "Featured"),
    NewsTabBarData(title: "Telecom"),
    NewsTabBarData(title: "Shops"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Partner Services",
          style: TextStyle(color: Palette.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) => getIt<ParnterServicesBloc>()
          ..add(const ParnterServicesEvent.fetch()),
        child: DefaultTabController(
          length: _children.length,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: NewsTabBar(
                onTap: (selected) {
                  setState(() {
                    _selectedIndex = selected;
                  });
                },
                tabs: _tabBarData,
                selectedIndex: _selectedIndex,
              ),
            ),
            body: IndexedStack(
              index: _selectedIndex,
              children: _children,
            ),
          ),
        ),
      ),
    );
  }
}

class _PartnerServicesPageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParnterServicesBloc, ParnterServicesState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loaded: (success) => _listOfJapaneseManner(context, success.list),
          failure: (failure) => loadingPage(),
          reachEnd: (_) => loadingPage(),
        );
      },
    );
  }

  Widget _listOfJapaneseManner(BuildContext context, List<Services> manners) {
    final baseURL = getIt<ConfigReader>().baseURL;
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2,
        // childAspectRatio: 1,
        children: List.generate(
          manners.length,
          (index) {
            return InkWell(
              onTap: () => ExtendedNavigator.of(context)
                  .pushServicesDetail(services: manners[index]),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => ExtendedNavigator.of(context)
                        .pushServicesDetail(services: manners[index]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        // manners[index].companyBannerImage ?? "",
                        "$baseURL${manners[index].companyBannerImage ?? ""}",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Image.network(
                          "$baseURL${manners[index].companyLogo ?? ""}",
                          width: 40,
                          fit: BoxFit.fitWidth,
                        ),
                        Expanded(
                          child: Text(manners[index].companyName),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
