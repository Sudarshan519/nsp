import 'package:flutter/material.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class NewsItemWidget extends StatelessWidget {
  final NewsItem newsItem;

  const NewsItemWidget({
    Key key,
    @required this.newsItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(newsItem.image);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: SizedBox(
                  height: 100,
                  width: 120,
                  child: Image.network(
                    newsItem.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                            "Politics",
                            style: TextStyle(
                              color: Palette.black.withOpacity(0.7),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
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
                            "Enternational",
                            style: TextStyle(
                              color: Palette.black.withOpacity(0.7),
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        //TODO: add calender icon
                        Text(
                          "1 Feb 2020 |",
                          style: TextStyle(
                            color: Palette.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        //TODO: add clock icon
                        Text(
                          "  11:32:00",
                          style: TextStyle(
                            color: Palette.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    //TODO: add news source icon
                    Text(
                      "News Source",
                      style: TextStyle(
                        color: Palette.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 1,
          color: Palette.black.withOpacity(0.05),
        )
      ],
    );
  }
}
