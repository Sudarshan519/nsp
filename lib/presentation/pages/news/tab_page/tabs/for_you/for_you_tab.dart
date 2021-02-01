import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/news/tab_page/widgets/news_item.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class ForYouNewsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Palette.accent,
          ),
          ListView.builder(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return NewsItem();
            },
          ),
        ],
      ),
    );
  }
}
