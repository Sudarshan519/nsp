import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:wallet_app/features/news/data/model/news_item_model.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';

import '../../../../stub/stub.dart';
import '../../../../utils/test_constant/news/test_constant.dart';

void main() {
  group('from JSON', () {
    test('Should be an sub-class of NewsItem', () {
      expect(NewsTestConstant.tNewsItemModel, isA<NewsItem>());
    });

    test('Should return a valid model when the Json has all information',
        () async {
      //assert
      final String jsonString = stub(path: "news/news_item", name: "news_item");
      final Map<String, dynamic> jsonMap =
          json.decode(jsonString) as Map<String, dynamic>;
      //act
      final result = NewsItemModel.fromJson(jsonMap);

      //assert
      expect(result, equals(NewsTestConstant.tNewsItemModel));
    });

    test('Should return a valid model when the Json has nulls', () async {
      //assert
      final String jsonString =
          stub(path: "news/news_item", name: "news_item_with_null");
      final Map<String, dynamic> jsonMap =
          json.decode(jsonString) as Map<String, dynamic>;
      //act
      final result = NewsItemModel.fromJson(jsonMap);

      //assert
      expect(result, equals(NewsTestConstant.tNewsItemModelWithNull));
    });
  });

  group("To JSON", () {
    test('Should return a json map containing proper map', () async {
      //assert

      //act
      final result = NewsTestConstant.tNewsItemModel.toJson();
      final String jsonString = stub(path: "news/news_item", name: "news_item");
      final Map<String, dynamic> expectedMap =
          json.decode(jsonString) as Map<String, dynamic>;

      //assert
      expect(result, equals(expectedMap));
    });
  });
}
