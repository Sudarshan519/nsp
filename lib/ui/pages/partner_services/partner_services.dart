import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_categories.dart';
import 'package:wallet_app/features/partner_services/presentation/partner_services/parnter_services_bloc.dart';
import 'package:wallet_app/features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/news/tab_page/tabs/tab_bar/news_tab_bar.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';

class PartnerServicesPage extends StatelessWidget {
  final String? categoryName;

  const PartnerServicesPage({
    Key? key,
    this.categoryName,
  }) : super(key: key);

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
        create: (context) => getIt<PartnerServiceCategoriesBloc>()
          ..add(
            const PartnerServiceCategoriesEvent.fetch(),
          ),
        child: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return BlocBuilder<PartnerServiceCategoriesBloc,
        PartnerServiceCategoriesState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loaded: (success) => _PartnerServicesTabPage(
            categories: success.categories,
            categoryName: categoryName,
          ),
          failure: (failure) {
            Future.delayed(Duration.zero, () {
              FlushbarHelper.createError(
                message: failure.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            });
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}

class _PartnerServicesTabPage extends StatefulWidget {
  final List<ServicesCategory> categories;
  final String? categoryName;

  const _PartnerServicesTabPage({
    Key? key,
    required this.categories,
    this.categoryName,
  }) : super(key: key);
  @override
  _PartnerServicesState createState() => _PartnerServicesState();
}

class _PartnerServicesState extends State<_PartnerServicesTabPage> {
  int _selectedIndex = 0;
  bool _changedByUser = false;

  @override
  Widget build(BuildContext context) {
    final _children = _getChildrenPages(widget.categories);
    final _tabBarData = _getTabbarData(widget.categories);

    if (!_changedByUser) {
      setPage();
    }

    return DefaultTabController(
      length: _children.length,
      initialIndex: _selectedIndex,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Column(
            children: [
              NewsTabBar(
                onTap: (selected) {
                  setState(() {
                    _selectedIndex = selected;
                    _changedByUser = true;
                  });
                },
                isScrollable: true,
                tabs: _tabBarData,
                selectedIndex: _selectedIndex,
              ),
              Container(
                height: 1,
                color: Palette.dividerColor,
              )
            ],
          ),
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _children,
        ),
      ),
    );
  }

  List<Widget> _getChildrenPages(List<ServicesCategory> categories) {
    final List<Widget> widgets = [];
    for (final category in categories) {
      widgets.add(
        _PartnerServicesPageList(
          category: category,
        ),
      );
    }
    return widgets;
  }

  List<NewsTabBarData> _getTabbarData(List<ServicesCategory> categories) {
    final List<NewsTabBarData> tabData = [];
    for (final category in categories) {
      tabData.add(NewsTabBarData(title: category.categoryName ?? ''));
    }
    return tabData;
  }

  void setPage() {
    if (widget.categoryName != null && widget.categoryName!.isNotEmpty) {
      final categoryFound = widget.categories.firstWhere(
        (category) => category.categoryName == widget.categoryName,
      );

      final index = widget.categories.indexOf(categoryFound);
      setState(() {
        _selectedIndex = index;
      });
    }
  }
}

class _PartnerServicesPageList extends StatelessWidget {
  final ServicesCategory category;
  final ScrollController _scrollController = ScrollController();

  _PartnerServicesPageList({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ParnterServicesBloc>()
        ..add(ParnterServicesEvent.fetch(category)),
      child: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return BlocBuilder<ParnterServicesBloc, ParnterServicesState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => loadingPage(),
          loadingWithData: (data) => _listOfPartnerServices(
            context: context,
            services: data.list,
            isLoading: true,
          ),
          loaded: (success) => _listOfPartnerServices(
            context: context,
            services: success.list,
          ),
          failure: (failure) {
            Future.delayed(Duration.zero, () {
              FlushbarHelper.createError(
                message: failure.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            });
            return const SizedBox.shrink();
          },
          failureWithData: (data) {
            Future.delayed(Duration.zero, () {
              FlushbarHelper.createError(
                message: data.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            });
            return _listOfPartnerServices(
              context: context,
              services: data.list,
            );
          },
        );
      },
    );
  }

  Widget _listOfPartnerServices({
    required BuildContext context,
    required List<Services> services,
    bool isLoading = false,
  }) {
    if (services.isEmpty) {
      return const Center(
        child: Text("No data availabe for this section"),
      );
    }
    return SingleChildScrollView(
      controller: _scrollController
        ..addListener(
          () {
            if (_scrollController.offset ==
                    _scrollController.position.maxScrollExtent &&
                !context.read<ParnterServicesBloc>().isFetching) {
              debugPrint("reached end");
              context.read<ParnterServicesBloc>().add(
                    ParnterServicesEvent.fetch(category),
                  );
            }
          },
        ),
      child: Column(
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: services.length,
            itemBuilder: (context, index) {
              return _parnterServicesWidget(context, services[index]);
            },
          ),
          if (isLoading)
            SizedBox(
              height: 70,
              child: loadingPage(),
            ),
        ],
      ),
    );
  }

  Widget _parnterServicesWidget(BuildContext context, Services data) {
    final baseURL = getIt<ConfigReader>().baseURL;
    final width = MediaQuery.of(context).size.width * 0.2;
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        bottom: 8,
        right: 8,
        left: 8,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => context.pushRoute(
                  ServicesDetailRoute(
                    services: data,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(width / 2.0),
                  child: Image.network(
                    "$baseURL${data.companyLogo ?? ""}",
                    width: width,
                    height: width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () => context.pushRoute(
                        ServicesDetailRoute(
                          services: data,
                        ),
                      ),
                      child: Text(
                        data.serviceProductName ?? "",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        // maxLines: 2,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data.companyName ?? "",
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Palette.black.withOpacity(0.3),
                        ),
                      ),
                      child: Text(
                        data.category ?? "",
                        style: TextStyle(
                          color: Palette.black.withOpacity(0.7),
                          fontSize: 10,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 1,
            color: Palette.dividerColor,
          )
        ],
      ),
    );
  }
}
