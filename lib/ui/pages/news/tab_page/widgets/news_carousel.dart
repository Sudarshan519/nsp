import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'news_carousel_item.dart';

class NewsCarousel extends StatefulWidget {
  final List<NewsItem> newsList;

  const NewsCarousel({
    Key key,
    required this.newsList,
  }) : super(key: key);

  @override
  _NewsCarouselState createState() => _NewsCarouselState();
}

class _NewsCarouselState extends State<NewsCarousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.primaryBackground,
      height: MediaQuery.of(context).size.height / 4,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: CarouselSlider(
                  items: imageSliders(),
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: widget.newsList.map((news) {
                final int index = widget.newsList.indexOf(news);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Palette.primary : Palette.white,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> imageSliders() {
    return widget.newsList
        .map(
          (news) => NewsCarouselItem(
            newsItem: news,
          ),
        )
        .toList();
  }
}
