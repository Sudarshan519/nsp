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
          initial: (_) {},
          loading: (_) {},
          loadingWith: (data) {},
          loaded: (data) {},
          showPullToRefresh: (_) {},
          pagination: (_) {},
          failure: (_) {},
        );
      },
      buildWhen: (previous, current) => previous.hashCode != current.hashCode,
      builder: (context, state) {
        return state.map(
          // initial and loading state will not be refrected here,
          // this two states are for very first state of app
          // which are handeled in the tab screen page [at root of this widget]
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),

          loadingWith: (data) {
            final news = data.offlinedata;
            return _buildBodyWithData(
              context: context,
              newsList: news,
              isLoading: false,
              isPagination: true,
            );
          },
          loaded: (data) {
            final news = data.newsData;
            return _buildBodyWithData(
              context: context,
              newsList: news,
              isPagination: true,
            );
          },
          showPullToRefresh: (data) {
            final news = data.newsData;
            return _buildBodyWithData(
              context: context,
              newsList: news,
              isLoading: true,
            );
          },
          pagination: (data) {
            final news = data.newsData;
            return _buildBodyWithData(
              context: context,
              newsList: news,
              isPagination: true,
            );
          },
          failure: (data) {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget _buildBodyWithData({
    @required BuildContext context,
    @required List<NewsItem> newsList,
    bool isLoading = false,
    bool isPagination = false,
  }) {
    final count = newsList.length > 5 ? 5 : newsList.length;
    final bannerList = newsList.sublist(0, count);

    return Stack(
      children: [
        RefreshIndicator(
          onRefresh: () async {
            context.read<LatestNewsBloc>().add(
                  const LatestNewsEvent.pullToRefresh(),
                );
            // await 2 sec for the loader to show
            await Future.delayed(const Duration(seconds: 2), () {});
          },
          child: SingleChildScrollView(
            controller: _scrollController
              ..addListener(() {
                if (_scrollController.offset ==
                        _scrollController.position.maxScrollExtent &&
                    !context.read<LatestNewsBloc>().isFetching) {
                  debugPrint("reached end");
                  context.read<LatestNewsBloc>().add(
                        const LatestNewsEvent.paginateIfAvailable(),
                      );
                }
              }),
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
                  const Center(
                    child: Text("No data availabe for this section"),
                  ),
                if (isPagination)
                  SizedBox(
                    height: 70,
                    child: loadingPage(),
                  ),
              ],
            ),
          ),
        ),
        if (isLoading)
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 20,
              width: 80,
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Palette.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                    width: 15,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Center(
                    child: Text(
                      "Loading...",
                      style: TextStyle(fontSize: 8, color: Palette.black),
                    ),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
