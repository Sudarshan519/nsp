import 'package:flutter/material.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class NewsCarouselItem extends StatelessWidget {
  final NewsItem newsItem;

  const NewsCarouselItem({
    Key key,
    @required this.newsItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: [
            Expanded(
              child: Image.network(
                newsItem?.image ?? "",
                fit: BoxFit.cover,
                width: 1000,
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
                  newsItem.category,
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
                  //TODO: add calender icon
                  Text(
                    "1 Feb 2020 ",
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  //TODO: add clock icon
                  Text(
                    "  11:32:00",
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
    );
  }
}
