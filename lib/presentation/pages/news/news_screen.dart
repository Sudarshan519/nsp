import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/news/presentation/news_list/news_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

import 'tab_page/news_tab_page.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
        backgroundColor: Palette.primary,
      ),
      body: _NewsPageBody(),
    );
  }
}

class _NewsPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<NewsBloc>()..add(const NewsEvent.fetchNewsData()),
      child: _newsBody(),
    );
  }

  Widget _newsBody() {
    return BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
      if (state == const NewsState.initial() ||
          state == const NewsState.loading()) {
        return loadingPage(context);
      }
      return TabBarScreen();
    });
  }
}
