import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/presentation/latest_news/latest_news_bloc.dart';
import 'package:wallet_app/features/news/presentation/news_for_you/news_bloc.dart';
import 'package:wallet_app/ui/pages/news/tab_page/widgets/news_item.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class SegmentedNewViewWidget extends StatefulWidget {
  const SegmentedNewViewWidget({
    Key key,
  }) : super(key: key);

  @override
  _SegmentedNewViewWidgetState createState() => _SegmentedNewViewWidgetState();
}

class _SegmentedNewViewWidgetState extends State<SegmentedNewViewWidget> {
  int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  void setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _header(context),
        const SizedBox(
          height: 10,
        ),
        _body(context),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 80),
      decoration: BoxDecoration(
        color: Palette.primaryBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setSelectedIndex(0);
            },
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: _selectedIndex == 0
                    ? Palette.primaryButtonColor
                    : Palette.primaryBackground,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "For You",
                  style: TextStyle(
                    color: _selectedIndex == 0 ? Palette.white : Palette.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              setSelectedIndex(1);
            },
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: _selectedIndex == 1
                    ? Palette.primaryButtonColor
                    : Palette.primaryBackground,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "News",
                  style: TextStyle(
                    color: _selectedIndex == 1 ? Palette.white : Palette.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Palette.primaryBackground,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "Alert",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    if (_selectedIndex == 0) {
      return _forYouBody(context);
    }

    if (_selectedIndex == 1) {
      return _latestNewsBody(context);
    }

    return _forYouBody(context);
  }

  Widget _forYouBody(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
      return state.map(
        initial: (_) => const SizedBox.shrink(),
        loading: (_) => SizedBox(
          height: 70,
          child: loadingPage(),
        ),
        loadingWith: (data) {
          final newsList = data.offlinedata;
          return _newsData(newsList);
        },
        loaded: (data) {
          final newsList = data.newsData;
          return _newsData(newsList);
        },
        showPullToRefresh: (_) => const SizedBox.shrink(),
        pagination: (_) => const SizedBox.shrink(),
        failure: (_) => const SizedBox.shrink(),
      );
    });
  }

  Widget _latestNewsBody(BuildContext context) {
    return BlocBuilder<LatestNewsBloc, LatestNewsState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => const SizedBox.shrink(),
        loading: (_) => const SizedBox.shrink(),
        loadingWith: (data) {
          final newsList = data.offlinedata;
          return _newsData(newsList);
        },
        loaded: (data) {
          final newsList = data.newsData;
          return _newsData(newsList);
        },
        showPullToRefresh: (_) => const SizedBox.shrink(),
        pagination: (_) => const SizedBox.shrink(),
        failure: (_) => const SizedBox.shrink(),
      );
    });
  }

  Widget _newsData(List<NewsItem> newsList) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(bottom: 16),
      // padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          ListView.builder(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              return NewsItemWidget(
                newsItem: newsList[index],
              );
            },
          ),
          SizedBox(
            height: 70,
            child: loadingPage(),
          )
        ],
      ),
    );
  }
}
