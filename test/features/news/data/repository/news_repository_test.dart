import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/news/data/datasource/news_local_data_source.dart';
import 'package:wallet_app/features/news/data/datasource/news_remote_data_source.dart';
import 'package:wallet_app/features/news/data/repository/news_repository.dart';
import 'package:wallet_app/utils/constant.dart';

import '../../../../utils/test_constant/news/test_constant.dart';

class MockNewsRemoteDataSource extends Mock
    implements NewsRemoteDataSourceProtocol {}

class MockNewsLocalDataSource extends Mock
    implements NewsLocalDataSourceProtocol {}

void main() {
  NewsRepository repository;
  MockNewsRemoteDataSource remoteDataSource;
  MockNewsLocalDataSource localDataSource;

  setUp(() {
    remoteDataSource = MockNewsRemoteDataSource();
    localDataSource = MockNewsLocalDataSource();

    repository = NewsRepository(
      remoteDataSource: remoteDataSource,
      localDataSource: localDataSource,
    );
  });

  group('Remote Data source', () {
    test('should return News when remote data return News Data', () async {
      // assign
      when(remoteDataSource.getNews(
        page: anyNamed('page'),
        limit: anyNamed('limit'),
      )).thenAnswer((_) async => NewsTestConstant.tNewsModel);

      // act
      final result = await repository.getNewsFromRemote(page: "1");

      // assert
      expect(result, const Right(NewsTestConstant.tNewsModel));
    });

    test('should save News when fetch from the remote source.', () async {
      // assign
      when(remoteDataSource.getNews(
        page: anyNamed('page'),
        limit: anyNamed('limit'),
      )).thenAnswer((_) async => NewsTestConstant.tNewsModel);

      // act
      await repository.getNewsFromRemote(page: "1");

      // assert
      verify(localDataSource.saveNews(news: NewsTestConstant.tNewsModel));
    });

    test('''
    should return ApiFailure when remote data throws an exception
    Never save anything is remote data throws exception
    ''', () async {
      // assign
      when(remoteDataSource.getNews(
        page: anyNamed('page'),
        limit: anyNamed('limit'),
      )).thenThrow(
          const ServerException(message: AppConstants.someThingWentWrong));

      // act
      final result = await repository.getNewsFromRemote(page: "1");

      // assert
      expect(
          result,
          const Left(ApiFailure.serverError(
              message: AppConstants.someThingWentWrong)));

      verifyNever(localDataSource.saveNews(news: NewsTestConstant.tNewsModel));
    });

    test('''
    should return ApiFailure when remote data throws an exception
    Never save anything is remote data throws exception
    ''', () async {
      // assign
      when(remoteDataSource.getNews(
        page: anyNamed('page'),
        limit: anyNamed('limit'),
      )).thenThrow(Exception("Something Bad Happen"));

      // act
      final result = await repository.getNewsFromRemote(page: "1");

      // assert
      expect(
          result,
          const Left(ApiFailure.serverError(
              message: "Exception: Something Bad Happen")));

      verifyNever(localDataSource.saveNews(news: NewsTestConstant.tNewsModel));
    });
  });

  group('local data source', () {
    test('Should return new is available in local storage', () async {
      // assign
      when(localDataSource.getNews())
          .thenAnswer((_) async => NewsTestConstant.tNewsModel);

      //act
      final result = await repository.getNewsFromLocalStorage();

      //assert
      expect(result, const Right(NewsTestConstant.tNewsModel));
    });

    test('Should return APIFailure when data is not available is local storage',
        () async {
      // assign
      when(localDataSource.getNews()).thenThrow(CacheException());

      //act
      final result = await repository.getNewsFromLocalStorage();

      //assert
      expect(result, const Left(ApiFailure.serverError(message: "")));
    });
  });
}
