import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/presentation/favourite_news/favourite_news_bloc.dart';
import 'package:wallet_app/ui/pages/news/tab_page/widgets/news_item.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class SaveNewsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteNewsBloc, FavouriteNewsState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loaded: (success) =>
              _buildBodyWithData(context: context, newsList: success.news),
        );
      },
    );
  }

  Widget _buildBodyWithData({
    required BuildContext context,
    required List<NewsItem> newsList,
  }) {
    if (newsList.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            "You have not saved any news. All the news you saved will appear here.",
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<FavouriteNewsBloc>().add(
              const FavouriteNewsEvent.fetch(),
            );
        // await 2 sec for the loader to show
        await Future.delayed(const Duration(seconds: 2), () {});
      },
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return NewsItemWidget(
            newsItem: newsList[index],
          );
        },
      ),
    );
  }
}
