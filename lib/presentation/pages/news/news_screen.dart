import 'package:flutter/material.dart';

import 'tab_page/news_tab_page.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return TabBarScreen();
  }
}
