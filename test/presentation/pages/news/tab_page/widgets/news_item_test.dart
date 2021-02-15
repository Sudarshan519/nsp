import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wallet_app/presentation/pages/news/tab_page/widgets/news_item.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

import '../../../../../utils/test_constant/news/test_constant.dart';

void main() {
  NewsItemWidget widget;

  Widget makeTestableWidgets({Widget child}) {
    return MaterialApp(
      home: Scaffold(
        body: Container(),
        bottomNavigationBar: child,
      ),
    );
  }

  const _testNewsItem = NewsTestConstant.tNewsItemModel;

  setUp(() {
    widget = const NewsItemWidget(newsItem: _testNewsItem);
  });

  test('NewsItemWidget is sub class of StatelessWidget', () {
    expect(widget, isA<StatelessWidget>());
  });

  testWidgets('should have a news Title Text', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(makeTestableWidgets(child: widget));
      final textFind = find.text(_testNewsItem.title);
      final Text text = tester.firstWidget(textFind);
      expect(textFind, findsOneWidget);
      expect(text.style.color, Palette.black);
      expect(text.style.fontSize, 14);
      expect(text.style.fontWeight, FontWeight.w500);
      expect(text.maxLines, 2);
      expect(text.overflow, TextOverflow.ellipsis);
    });
  });
}
