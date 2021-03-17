import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class NewsItemWidget extends StatelessWidget {
  final NewsItem newsItem;

  const NewsItemWidget({
    Key key,
    @required this.newsItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
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
                    //TODO: add news source icon
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
