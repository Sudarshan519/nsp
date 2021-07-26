import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_categories.dart';
import 'package:wallet_app/features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart';
import 'package:wallet_app/features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/japanese_manner/widgets/japanese_manner_widget.dart';
import 'package:wallet_app/ui/pages/news/tab_page/tabs/tab_bar/news_tab_bar.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class JapaneseMannerPage extends StatelessWidget {
  final String? categoryName;

  const JapaneseMannerPage({
    Key? key,
    this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<JapaneseMannerCategoriesBloc>()
          ..add(
            const JapaneseMannerCategoriesEvent.fetch(),
          ),
        child: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return BlocBuilder<JapaneseMannerCategoriesBloc,
        JapaneseMannerCategoriesState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loaded: (success) => _JapaneseMannerTabPage(
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

class _JapaneseMannerTabPage extends StatefulWidget {
  final List<JapaneseMannerCategory> categories;
  final String? categoryName;

  const _JapaneseMannerTabPage({
    Key? key,
    required this.categories,
    this.categoryName,
  }) : super(key: key);

  @override
  _JapaneseMannerPageState createState() => _JapaneseMannerPageState();
}

class _JapaneseMannerPageState extends State<_JapaneseMannerTabPage> {
  int _selectedIndex = 0;
  bool _changedByUser = false;
  final _searchController = TextEditingController();

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
          preferredSize: const Size.fromHeight(kToolbarHeight * 2),
          child: Column(
            children: [
              Expanded(
                child: AppBar(
                  leadingWidth: 14,
                  title: Container(
                    height: 34,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Japanese Manners',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 8),
                        counterText: '',
                        suffixIcon: Icon(Icons.search),
                      ),
                      maxLength: 20,
                      controller: _searchController,
                      onChanged: (val) => setState(() {}),
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: InkWell(
                        onTap: () => setState(() => _searchController.clear()),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 17,
                              child: Icon(
                                Icons.close,
                                size: 21,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  centerTitle: true,
                  backgroundColor: Palette.primary,
                  elevation: 0,
                ),
              ),
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
              ),
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

  List<Widget> _getChildrenPages(List<JapaneseMannerCategory> categories) {
    final List<Widget> widgets = [];
    for (final category in categories) {
      widgets.add(
        _JapaneseMannerPageList(
          category: category,
          searchText: _searchController.text,
        ),
      );
    }
    return widgets;
  }

  List<NewsTabBarData> _getTabbarData(List<JapaneseMannerCategory> categories) {
    final List<NewsTabBarData> tabData = [];
    for (final category in categories) {
      tabData.add(NewsTabBarData(title: category.categoryName ?? ''));
    }
    return tabData;
  }

  void setPage() {
    if (widget.categoryName != null && widget.categoryName!.isNotEmpty) {
      final categoryFound = widget.categories.firstWhere(
          (category) => category.categoryName == widget.categoryName);
      if (categoryFound != null) {
        final index = widget.categories.indexOf(categoryFound);
        _selectedIndex = index;
      }
    }
  }
}

class _JapaneseMannerPageList extends StatelessWidget {
  final JapaneseMannerCategory category;
  final ScrollController _scrollController = ScrollController();
  final String searchText;

  _JapaneseMannerPageList({
    Key? key,
    required this.category,
    this.searchText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<JapaneseMannerBloc>()..add(JapaneseMannerEvent.fetch(category)),
      child: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return BlocBuilder<JapaneseMannerBloc, JapaneseMannerState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => loadingPage(),
          loadingWith: (data) => _listOfJapaneseManner(
              context: context, manners: data.offlinedata, isLoading: true),
          loaded: (success) =>
              _listOfJapaneseManner(context: context, manners: success.list),
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
            return _listOfJapaneseManner(context: context, manners: data.list);
          },
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

  Widget _listOfJapaneseManner({
    required BuildContext context,
    required List<JapaneseManner> manners,
    bool isLoading = false,
  }) {
    if (searchText.isNotEmpty) {
      manners = manners
          .where((element) =>
              element.title
                  .toString()
                  .toLowerCase()
                  .contains(searchText.toLowerCase()) ||
              element.description
                  .toString()
                  .toLowerCase()
                  .contains(searchText.toLowerCase()))
          .toList();
    }
    if (manners.isEmpty) {
      return const Center(
        child: Text("No data availabe for this section"),
      );
    }

    return StatefulBuilder(
      builder: (context, setstate) {
        return SingleChildScrollView(
          controller: _scrollController
            ..addListener(
              () {
                if (_scrollController.offset ==
                        _scrollController.position.maxScrollExtent &&
                    !context.read<JapaneseMannerBloc>().isFetching) {
                  debugPrint("reached end");
                  context.read<JapaneseMannerBloc>().add(
                        JapaneseMannerEvent.fetch(category),
                      );
                }
              },
            ),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: manners.length,
                itemBuilder: (context, index) {
                  return JapaneseMannerWidget(data: manners[index]);
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
      },
    );
  }
}
