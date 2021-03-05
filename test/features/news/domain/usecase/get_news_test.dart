import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/repository/news_repository.dart';
import 'package:wallet_app/features/news/domain/usecase/get_news.dart';

import '../../../../utils/test_constant/news/test_constant.dart';

class MockNewsRepository extends Mock implements NewsRepositoryProtocol {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  GetNews getNews;
  MockNewsRepository repository;
  MockNetworkInfo networkInfo;

  void runTestOnline(Function body) {
    group('Device is online', () {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => true);
      });

      body();
    });
  }

  void runTestOffline(Function body) {
    group('Device is Offline', () {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => false);
      });

      body();
    });
  }

  setUp(() {
    repository = MockNewsRepository();
    networkInfo = MockNetworkInfo();
    getNews = GetNews(
      repository: repository,
      networkInfo: networkInfo,
    );
  });

  runTestOnline(() {
    test('''
    should emit data from local storage
    should emit data from remote storage once fetch from remote
    ''', () {
      // assign
      when(repository.getNewsFromLocalStorage())
          .thenAnswer((_) async => const Right(NewsTestConstant.tNewsModel));

      when(repository.getNewsFromRemote(page: anyNamed('page')))
          .thenAnswer((_) async => const Right(NewsTestConstant.tNewsModel));

      // assert fucture
      final assertExpected = [
        Right(NewsTestConstant.tNewsModel.data),
        Right(NewsTestConstant.tNewsModel.data),
      ];

      expectLater(getNews(NoParams()), emitsInOrder(assertExpected));

      // act
      getNews(NoParams());
    });

    test('''
    nothing is emitted if fetch from local storage is failed.
    should emit data from remote storage only once fetch from remote
    ''', () {
      // assign
      when(repository.getNewsFromLocalStorage()).thenAnswer(
          (_) async => const Left(ApiFailure.serverError(message: "")));

      when(repository.getNewsFromRemote(page: anyNamed('page')))
          .thenAnswer((_) async => const Right(NewsTestConstant.tNewsModel));

      // assert fucture
      final assertExpected = [
        Right(NewsTestConstant.tNewsModel.data),
      ];

      expectLater(getNews(NoParams()), emitsInOrder(assertExpected));

      // act
      getNews(NoParams());
    });

    test('''
    should emit data from local storage
    should emit error message if fetch from remote failed
    ''', () {
      // assign
      when(repository.getNewsFromLocalStorage())
          .thenAnswer((_) async => const Right(NewsTestConstant.tNewsModel));

      when(repository.getNewsFromRemote(page: anyNamed('page'))).thenAnswer(
          (_) async => const Left(ApiFailure.serverError(message: "")));

      // assert fucture
      final assertExpected = [
        Right(NewsTestConstant.tNewsModel.data),
        const Left(ApiFailure.serverError(message: "")),
      ];

      expectLater(getNews(NoParams()), emitsInOrder(assertExpected));

      // act
      getNews(NoParams());
    });

    test('''
    nothing is emitted if fetch from local storage is failed.
    should emit error message if fetch from remote failed
    ''', () {
      // assign
      when(repository.getNewsFromLocalStorage()).thenAnswer(
          (_) async => const Left(ApiFailure.serverError(message: "")));

      when(repository.getNewsFromRemote(page: anyNamed('page'))).thenAnswer(
          (_) async => const Left(ApiFailure.serverError(message: "")));

      // assert fucture
      final assertExpected = [
        const Left(ApiFailure.serverError(message: "")),
      ];

      expectLater(getNews(NoParams()), emitsInOrder(assertExpected));

      // act
      getNews(NoParams());
    });
  });

  runTestOffline(() {
    test('''
    noting is emitted if fetch from local storage is failed.
    should emit error message is network is offline.
    ''', () {
      // assign
      when(repository.getNewsFromLocalStorage()).thenAnswer(
          (_) async => const Left(ApiFailure.serverError(message: "")));

      when(repository.getNewsFromRemote(page: anyNamed('page'))).thenAnswer(
          (_) async => const Left(ApiFailure.noInternetConnection()));

      // assert fucture
      final assertExpected = [
        const Left(ApiFailure.noInternetConnection()),
      ];

      expectLater(getNews(NoParams()), emitsInOrder(assertExpected));

      // act
      getNews(NoParams());
    });

    test('''
    should emit data from local storage
    should emit error message is network is offline.
    ''', () async {
      // assign
      when(repository.getNewsFromLocalStorage())
          .thenAnswer((_) async => const Right(NewsTestConstant.tNewsModel));

      when(repository.getNewsFromRemote(page: anyNamed('page'))).thenAnswer(
          (_) async => const Left(ApiFailure.noInternetConnection()));

      // assert fucture
      final assertExpected = [
        Right(NewsTestConstant.tNewsModel.data),
        const Left(ApiFailure.noInternetConnection()),
      ];

      expectLater(getNews(NoParams()), emitsInOrder(assertExpected));

      // act
      getNews(NoParams());
      // await untilCalled(getNews(any));
    });
  });
}
