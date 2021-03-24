import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:flutter_html/flutter_html.dart';

class NewsDetail extends StatelessWidget {
  final NewsItem newsItem;

  const NewsDetail({
    Key key,
    @required this.newsItem,
  })  : assert(newsItem != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          newsItem.title ?? "",
          style: TextStyle(
            color: Palette.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: newsBody(context),
    );
  }

  Widget newsBody(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: ColumnSuper(
        innerDistance: -60,
        children: [
          Image.network(
            newsItem.image,
            width: width,
            fit: BoxFit.fitWidth,
          ),
          ShadowBoxWidget(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Image.network(
                      newsItem.sourceImage,
                      fit: BoxFit.fitHeight,
                      height: 10,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      newsItem?.source ?? "",
                      style: TextStyle(
                        color: Palette.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Text(
                  newsItem?.title ?? "",
                  style: TextStyle(
                    color: Palette.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4,
                ),
                // TODO: change it to List builder
                // SingleChildScrollView(
                //   child:
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Palette.black.withOpacity(0.3),
                        ),
                      ),
                      child: Text(
                        newsItem.category,
                        style: TextStyle(
                          color: Palette.black.withOpacity(0.7),
                          fontSize: 10,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
                // ),
                const SizedBox(
                  height: 4,
                ),

                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/news/calender.svg",
                      height: 15.0,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      newsItem.publishedYearOnly,
                      style: TextStyle(
                        color: Palette.black,
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      "assets/images/news/clock.svg",
                      height: 15.0,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      child: Text(
                        newsItem.publishedTimeAgo,
                        style: TextStyle(
                          color: Palette.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  height: 1,
                  color: Palette.dividerColor,
                ),
                const SizedBox(
                  height: 10,
                ),

                // Text(newsItem.description)
                Html(data: newsItem.description),

                const SizedBox(height: 20),

                Center(
                  child: CustomButton(
                    title: "Load More",
                    textStyle: TextStyle(
                      color: Palette.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                    onTap: () => ExtendedNavigator.of(context).pushAppWebView(
                      url: newsItem.link ?? "",
                      title: newsItem.title ?? "",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
