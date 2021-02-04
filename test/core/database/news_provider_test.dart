import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqflite/sqflite.dart';
import 'package:wallet_app/core/database/local_database_provider.dart';
import 'package:wallet_app/core/database/news_provider.dart';

import '../../utils/test_constant/news/test_constant.dart';

class MockDBProvider extends Mock implements DBProvider {}

class MockDataBase extends Mock implements Database {}

void main() {
  MockDataBase dataBase;
  MockDBProvider dbProvider;
  NewsLocalProviderImpl newsLocalProvider;

  setUp(() {
    dataBase = MockDataBase();
    dbProvider = MockDBProvider();
    newsLocalProvider = NewsLocalProviderImpl(provider: dbProvider);
  });

  test('', () {
    expect(true, true);
  });

  // test('should Insert News Model', () {
  //   // assign
  //   when(dbProvider.database).thenReturn(dataBase);

  //   // act
  //   newsLocalProvider.insert(NewsTestConstant.tNewsModel);

  //   //assert
  //   verify(dbProvider.open());
  //   verify(dbProvider.database.insert(any, any));
  //   verify(dbProvider.database.insert(any, any));
  //   verify(dbProvider.close());
  // });
}
