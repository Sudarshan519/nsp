import 'dart:ffi';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/database/local_database_provider.dart';
import 'package:wallet_app/core/database/news_provider.dart';

import '../../utils/test_constant/news/test_constant.dart';

class MockDBProvider extends Mock implements DBProvider {}

void main() {
  MockDBProvider dbProvider;
  NewsLocalProviderImpl newsLocalProvider;

  setUp(() {
    dbProvider = MockDBProvider();
    newsLocalProvider = NewsLocalProviderImpl(provider: dbProvider);
  });

  test('should Insert News Model', () async {
    // assign
    when(dbProvider.open()).thenAnswer((realInvocation) async => 1);
    when(dbProvider.close()).thenAnswer((realInvocation) async => Void);
    when(dbProvider.insert(
            tableName: anyNamed('tableName'), values: anyNamed('values')))
        .thenAnswer((realInvocation) async => 1);

    // act
    await newsLocalProvider.insert(NewsTestConstant.tNewsModel);

    //assert
    verify(dbProvider.open());
    verify(dbProvider.insert(
        tableName: anyNamed('tableName'), values: anyNamed('values')));
    verify(dbProvider.close());
  });

  test('should return News Model if available in local storage', () async {
    // assign
    when(dbProvider.open()).thenAnswer((realInvocation) async => 1);
    when(dbProvider.close()).thenAnswer((realInvocation) async => Void);
    when(dbProvider.getAllFrom(tableName: anyNamed('tableName')))
        .thenAnswer((realInvocation) async => [
              {"": ""}
            ]);

    await newsLocalProvider.getNews();

    verify(dbProvider.open());
    verify(dbProvider.getAllFrom(tableName: anyNamed('tableName')));
    verify(dbProvider.close());
  });

  test('should return null if no data available in local storage', () async {
    // assign
    when(dbProvider.open()).thenAnswer((realInvocation) async => 1);
    when(dbProvider.close()).thenAnswer((realInvocation) async => Void);
    when(dbProvider.getAllFrom(tableName: anyNamed('tableName')))
        .thenAnswer((realInvocation) async => null);

    final newsModel = await newsLocalProvider.getNews();

    expect(newsModel, null);
  });

  test('should return null if no data available in local storage', () async {
    // assign
    when(dbProvider.open()).thenAnswer((realInvocation) async => 1);
    when(dbProvider.close()).thenAnswer((realInvocation) async => Void);
    when(dbProvider.getAllFrom(tableName: anyNamed('tableName')))
        .thenAnswer((realInvocation) async => []);

    final newsModel = await newsLocalProvider.getNews();

    expect(newsModel, null);
  });
}
