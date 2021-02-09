import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wallet_app/presentation/pages/news/tab_page/widgets/news_carousel.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../../utils/test_constant/news/test_constant.dart';

void main() {
  NewsCarousel widget;

  Widget makeTestableWidgets({Widget child}) {
    return MaterialApp(
      home: Scaffold(
        body: Container(),
        bottomNavigationBar: child,
      ),
    );
  }

  final _testNewsList = NewsTestConstant.tNewsModel.data;

  setUp(() {
    widget = NewsCarousel(
      newsList: _testNewsList,
    );
  });

  test('NewsCarousel is sub class of StatefulWidget', () {
    expect(widget, isA<StatefulWidget>());
  });

  testWidgets('should have a CarouselSlider', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(makeTestableWidgets(child: widget));
      final carousalFind = find.byType(CarouselSlider);
      expect(carousalFind, findsOneWidget);
    });
  });

  testWidgets('should have following options in CarouselSlider',
      (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(makeTestableWidgets(child: widget));

      final carousalFind = find.byType(CarouselSlider);
      final CarouselSlider carousal = tester.firstWidget(carousalFind);

      expect(carousal.itemCount, 1);
      expect(carousal.options.viewportFraction, 1);
      expect(carousal.options.autoPlay, true);
    });
  });

  testWidgets(
      'CarouselSlider should have a parent Column with crossAxisAlignment to Stretch',
      (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(makeTestableWidgets(child: widget));

      final carousalFind = find.byType(CarouselSlider);

      final columnFind =
          find.ancestor(of: carousalFind, matching: find.byType(Column));

      final Column column = tester.firstWidget(columnFind);

      expect(columnFind, findsOneWidget);
      expect(column.crossAxisAlignment, CrossAxisAlignment.stretch);
    });
  });
}
