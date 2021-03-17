import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/presentation/news_list/news_bloc.dart';
import 'package:wallet_app/ui/pages/news/tab_page/widgets/news_carousel.dart';
import 'package:wallet_app/ui/pages/news/tab_page/widgets/news_item.dart';

class ForYouNewsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
      return state.map(
        // initial and loading state will not be refrected here,
        // this two states are for very first state of app
        // which are handeled in the tab screen page [at root of this widget]
        initial: (_) => const SizedBox.shrink(),
        loading: (_) => const SizedBox.shrink(),

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
            isLoading: true,
          );
        },
        showPullToRefresh: (_) {
          return const SizedBox.shrink();
        },
        pagination: (_) {
          return const SizedBox.shrink();
        },
        failure: (_) {
          return const SizedBox.shrink();
        },
      );
    });
  }

  Widget _buildBodyWithData({
    @required BuildContext context,
    @required List<NewsItem> newsList,
    bool isLoading = false,
  }) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              NewsCarousel(
                newsList: newsList,
              ),
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
            ],
          ),
        ),
      ],
    );
  }
}
