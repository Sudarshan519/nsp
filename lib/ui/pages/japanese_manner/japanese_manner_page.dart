import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';
import 'package:wallet_app/features/japanese_manners/presentation/bloc/japanese_manner_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/japanese_manner/widgets/japanese_manner_widget.dart';
import 'package:wallet_app/ui/pages/news/tab_page/tabs/tab_bar/news_tab_bar.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class JapaneseMannerPage extends StatefulWidget {
  @override
  _JapaneseMannerPageState createState() => _JapaneseMannerPageState();
}

class _JapaneseMannerPageState extends State<JapaneseMannerPage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    _JapaneseMannerPageList(),
    _JapaneseMannerPageList(),
    _JapaneseMannerPageList(),
    _JapaneseMannerPageList(),
  ];

  final List<NewsTabBarData> _tabBarData = [
    NewsTabBarData(title: "All"),
    NewsTabBarData(title: "Education"),
    NewsTabBarData(title: "Food"),
    NewsTabBarData(title: "Shopping"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Japanese Manners",
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
        create: (context) =>
            getIt<JapaneseMannerBloc>()..add(const JapaneseMannerEvent.fetch()),
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

class _JapaneseMannerPageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JapaneseMannerBloc, JapaneseMannerState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loaded: (success) => _listOfJapaneseManner(success.list),
          failure: (failure) => loadingPage(),
          reachEnd: (_) => loadingPage(),
        );
      },
    );
  }

  Widget _listOfJapaneseManner(List<JapaneseManner> manners) {
    return ListView.builder(
      itemCount: manners.length,
      itemBuilder: (context, index) {
        return JapaneseMannerWidget(data: manners[index]);
      },
    );
  }
}
