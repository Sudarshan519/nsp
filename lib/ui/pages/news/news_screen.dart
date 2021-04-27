import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/news/presentation/news_for_you/news_bloc.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'tab_page/news_tab_page.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: TextStyle(
            color: Palette.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.search,
              color: Palette.white,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: _NewsPageBody(),
    );
  }
}

class _NewsPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
      if (state == const NewsState.initial() ||
          state == const NewsState.loading()) {
        return loadingPage();
      }
      return TabBarScreen();
    });
  }
}
