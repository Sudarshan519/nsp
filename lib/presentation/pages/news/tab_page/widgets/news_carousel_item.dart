import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class NewsCarousel extends StatefulWidget {
  final List<NewsItem> newsList;
  final List<String> newsImageList;

  const NewsCarousel({
    Key key,
    @required this.newsList,
    @required this.newsImageList,
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
                      // aspectRatio: 1.7,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: widget.newsImageList.map((url) {
                final int index = widget.newsImageList.indexOf(url);
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
    return widget.newsImageList
        .map(
          (item) => Stack(
            children: <Widget>[
              Column(
                children: [
                  Expanded(
                    child: Image.network(
                      item,
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
                        "Politics",
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
                      // 'No. ${widget.newsImageList.indexOf(item)} image',
                      widget.newsList[widget.newsImageList.indexOf(item)]
                              .title ??
                          "",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
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
          ),
        )
        .toList();
  }
}
