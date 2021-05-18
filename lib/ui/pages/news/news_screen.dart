import 'package:flutter/material.dart';
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
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 16),
        //     child: Icon(
        //       Icons.search,
        //       color: Palette.white,
        //     ),
        //   ),
        // ],
        elevation: 0,
      ),
      body: _NewsPageBody(),
    );
  }
}

class _NewsPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NewsTabBarScreen();
  }
}
