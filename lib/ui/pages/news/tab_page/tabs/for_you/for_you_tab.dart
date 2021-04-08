import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/presentation/news_for_you/news_bloc.dart';
import 'package:wallet_app/ui/pages/news/tab_page/widgets/news_carousel.dart';
import 'package:wallet_app/ui/pages/news/tab_page/widgets/news_item.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class ForYouNewsTab extends StatelessWidget {
  final Function() editGenre;
  final ScrollController _scrollController = ScrollController();

  ForYouNewsTab({
    Key key,
    @required this.editGenre,
  })  : assert(editGenre != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsBloc, NewsState>(
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
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loadingWith: (data) {
            final news = data.offlinedata;
            return _buildBodyWithData(
              context: context,
              newsList: news,
              // isLoading: false,
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
            context.read<NewsBloc>().add(
                  const NewsEvent.pullToRefresh(),
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
                      !context.read<NewsBloc>().isFetching) {
                    debugPrint("reached end");
                    context.read<NewsBloc>().add(
                          const NewsEvent.paginateIfAvailable(),
                        );
                  }
                },
              ),
            child: Column(
              children: [
                NewsCarousel(
                  newsList: bannerList,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: editGenre,
                    child: Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Palette.primary,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.edit_outlined,
                            size: 12,
                            color: Palette.white,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            "Edit Genre",
                            style: TextStyle(
                              fontSize: 12,
                              color: Palette.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Palette.black.withOpacity(0.1),
                ),
                ListView.builder(
                  padding: EdgeInsets.zero,
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
