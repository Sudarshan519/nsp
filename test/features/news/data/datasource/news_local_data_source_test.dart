import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/database/news_provider.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/news/data/datasource/news_local_data_source.dart';

import '../../../../utils/test_constant/news/test_constant.dart';

class MockNewsLocalProvider extends Mock implements NewsLocalProvider {}

void main() {
  MockNewsLocalProvider localProvider;
  NewsLocalDataSource localDataSource;

  setUp(() {
    localProvider = MockNewsLocalProvider();
    localDataSource = NewsLocalDataSource(localProvider: localProvider);
  });

  test('should return News Model from local data source', () async {
    when(localProvider.getNewsForYou())
        .thenAnswer((_) async => NewsTestConstant.tNewsModel);

    final result = await localDataSource.getNewsForYou();

    expect(result, NewsTestConstant.tNewsModel);
  });

  test(
      'should throw Catch Exception from local data source when there is no data',
      () async {
    when(localProvider.getNewsForYou()).thenAnswer((realInvocation) => null);

    final call = localDataSource.getNewsForYou;

    expect(
      () => call(),
      throwsA(isA<CacheException>()),
    );
  });

  test('should save News Model to local data source when available', () async {
    localDataSource.saveNews(news: NewsTestConstant.tNewsModel);
    verify(localProvider.insertNewsForYou(any));
  });

  test('should not save News Model to local data source when data has null',
      () async {
    localDataSource.saveNews(news: NewsTestConstant.tNewsModelWithNull);
    verifyNever(localProvider.insertNewsForYou(any));
  });
}
