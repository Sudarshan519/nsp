import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/presentation/latest_news/latest_news_bloc.dart';
import 'package:wallet_app/ui/pages/news/tab_page/widgets/news_carousel.dart';
import 'package:wallet_app/ui/pages/news/tab_page/widgets/news_item.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class LatestNewsTab extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LatestNewsBloc, LatestNewsState>(
      listener: (context, state) {
        state.map(
          loading: (_) {},
          loadingWith: (data) {},
          loaded: (data) {},
          failure: (_) {},
          failureWithData: (_) {},
        );
      },
      buildWhen: (previous, current) => previous.hashCode != current.hashCode,
      builder: (context, state) {
        return state.map(
          // initial and loading state will not be refrected here,
          // this two states are for very first state of app
          // which are handeled in the tab screen page [at root of this widget]
          loading: (_) => loadingPage(),
          loadingWith: (data) {
            final news = data.offlinedata;
            return _buildBodyWithData(
              context: context,
              newsList: news,
              isLoading: true,
            );
          },
          loaded: (data) {
            final news = data.newsData;
            return _buildBodyWithData(
              context: context,
              newsList: news,
            );
          },
          failure: (data) {
            return _buildBodyWithData(
              context: context,
              newsList: [],
              isLoading: true,
            );
          },
          failureWithData: (data) {
            final news = data.newsData;
            return _buildBodyWithData(
              context: context,
              newsList: news,
            );
          },
        );
      },
    );
  }

  Widget _buildBodyWithData({
    required BuildContext context,
    required List<NewsItem> newsList,
    bool isLoading = false,
  }) {
    final count = newsList.length > 5 ? 5 : newsList.length;
    final bannerList = newsList.sublist(0, count);

    return RefreshIndicator(
      onRefresh: () async {
        context.read<LatestNewsBloc>().add(
              const LatestNewsEvent.pullToRefresh(),
            );
        // await 2 sec for the loader to show
        await Future.delayed(const Duration(seconds: 2), () {});
      },
      child: SingleChildScrollView(
        controller: _scrollController
          ..addListener(
            () {
              if (_scrollController.offset ==
                      _scrollController.position.maxScrollExtent &&
                  !context.read<LatestNewsBloc>().isFetching) {
                debugPrint("reached end");
                context.read<LatestNewsBloc>().add(
                      const LatestNewsEvent.fetchNewsData(),
                    );
              }
            },
          ),
        child: Column(
          children: [
            if (newsList.isNotEmpty)
              NewsCarousel(
                newsList: bannerList,
              ),
            if (newsList.isNotEmpty)
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
              )
            else
              Container(
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.symmetric(vertical: 32),
                alignment: Alignment.topCenter,
                child: const Text(
                  "No data availabe for this section",
                ),
              ),
            if (isLoading)
              SizedBox(
                height: 70,
                child: loadingPage(),
              ),
          ],
        ),
      ),
    );
  }
}
