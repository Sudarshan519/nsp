import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class NewsCarouselItem extends StatelessWidget {
  final NewsItem newsItem;

  const NewsCarouselItem({
    Key? key,
    required this.newsItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushRoute(NewsDetailRoute(newsItem: newsItem)),
      child: Stack(
        children: <Widget>[
          Column(
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: newsItem.image ?? "",
                  fit: BoxFit.cover,
                  width: 1000,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(
              left: 10.0,
              bottom: 10.0,
              right: 150,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(200, 0, 0, 0),
                  Color.fromARGB(0, 0, 0, 0)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Palette.primary,
                  ),
                  child: Text(
                    newsItem.category ?? '',
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  newsItem.title ?? "",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/news/calender.svg",
                      color: Palette.white,
                      height: 15.0,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      newsItem.publishedYearOnly,
                      style: TextStyle(
                        color: Palette.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      "assets/images/news/clock.svg",
                      color: Palette.white,
                      height: 15.0,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      newsItem.publishedTimeAgo,
                      style: TextStyle(
                        color: Palette.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
