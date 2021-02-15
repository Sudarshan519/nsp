import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:wallet_app/presentation/pages/news/tab_page/widgets/news_carousel_item.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

import '../../../../../utils/test_constant/news/test_constant.dart';

void main() {
  NewsCarouselItem widget;

  Widget makeTestableWidgets({Widget child}) {
    return MaterialApp(
      home: Scaffold(
        body: Container(),
        bottomNavigationBar: child,
      ),
    );
  }

  const _testNews = NewsTestConstant.tNewsItemModel;

  setUp(() {
    widget = const NewsCarouselItem(newsItem: _testNews);
  });

  test('NewsCarouselItem is sub class of StatelessWidget', () {
    expect(widget, isA<StatelessWidget>());
  });

  testWidgets('should have a Image Banner', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(makeTestableWidgets(child: widget));

      final bannerImageFind = find.byType(Image);
      final Image bannerImage = tester.firstWidget(bannerImageFind);

      expect(bannerImageFind, findsOneWidget);
      expect(bannerImage.fit, BoxFit.cover);
    });
  });

  testWidgets('should have a Title text', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(makeTestableWidgets(child: widget));

      final textFind = find.text(_testNews.title);
      final Text text = tester.firstWidget(textFind);

      expect(textFind, findsOneWidget);

      expect(text.style.color, Palette.white);
      expect(text.style.fontSize, 12);
      expect(text.style.fontWeight, FontWeight.bold);
      expect(text.maxLines, 2);
      expect(text.overflow, TextOverflow.ellipsis);
    });
  });
}
