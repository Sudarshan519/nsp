import 'package:flutter/material.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/presentation/pages/news/tab_page/widgets/news_item.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class SegmentedNewViewWidget extends StatelessWidget {
  const SegmentedNewViewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _header(context),
        const SizedBox(
          height: 10,
        ),
        _body(context),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 80),
      decoration: BoxDecoration(
        color: Palette.primaryBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Palette.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "For You",
                style: TextStyle(
                  color: Palette.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Palette.primaryBackground,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "News",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Palette.primaryBackground,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "Alert",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    const newsItem = NewsItem(
      title:
          "Guyana rolls back plan to open Taiwan office after Beijing criticizes 'mistake'",
      link: "http://rss.cnn.com/~r/rss/cnn_latest/~3/TLN2I6FIq7E/index.html",
      category: "cnn",
      publishedDate: "Fri, 05 Feb 2021 05:23:04 GMT",
      guid:
          "https://www.cnn.com/2021/02/05/asia/guyana-taiwan-office-china-intl-hnk/index.html",
      image: "http://i2.cdn.turner.com/cnn/2015/images/09/24/cnn.digital.png",
      description:
          'Guyana abruptly terminated an agreement with Taiwan to open an office in the South American country on Thursday after China urged them to "correct their mistake."<div class="feedflare">n<a href="http://rss.cnn.com/~ff/rss/cnn_latest?a=TLN2I6FIq7E:roGniKjRXT8:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/rss/cnn_latest?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://rss.cnn.com/~ff/rss/cnn_latest?a=TLN2I6FIq7E:roGniKjRXT8:7Q72WNTAKBA"><img src="http://feeds.feedburner.com/~ff/rss/cnn_latest?d=7Q72WNTAKBA" border="0"></img></a> <a href="http://rss.cnn.com/~ff/rss/cnn_latest?a=TLN2I6FIq7E:roGniKjRXT8:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/rss/cnn_latest?i=TLN2I6FIq7E:roGniKjRXT8:V_sGLiPBpWU" border="0"></img></a> <a href="http://rss.cnn.com/~ff/rss/cnn_latest?a=TLN2I6FIq7E:roGniKjRXT8:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/rss/cnn_latest?d=qj6IDK7rITs" border="0"></img></a> <a href="http://rss.cnn.com/~ff/rss/cnn_latest?a=TLN2I6FIq7E:roGniKjRXT8:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/rss/cnn_latest?i=TLN2I6FIq7E:roGniKjRXT8:gIN9vFwOqvQ" border="0"></img></a>n</div><img src="http://feeds.feedburner.com/~r/rss/cnn_latest/~4/TLN2I6FIq7E" height="1" width="1" alt=""/>',
      source: "cnn",
    );

    return ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(bottom: 16),
      // padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const NewsItemWidget(newsItem: newsItem);
            },
          ),
          const SizedBox(height: 16),
          CustomButton(
            title: "View all",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
