import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/news/domain/usecase/get_news_for_you.dart';
import 'package:wallet_app/features/news/presentation/news_list/news_bloc.dart';

import '../../../../utils/test_constant/news/test_constant.dart';

class MockGetNews extends Mock implements GetNewsForYou {}

void main() {
  NewsBloc bloc;
  MockGetNews getNews;

  setUp(() {
    getNews = MockGetNews();
    bloc = NewsBloc(getNews: getNews);
  });

  test('Initial State should be [initial]', () {
    expect(bloc.state, const NewsState.initial());
  });

  test('should emit Loading while fetching', () async {
    //assign
    when(getNews(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [],
      ),
    );

    // assert future
    final assertExpected = [
      const NewsState.loading(),
    ];

    expectLater(
      bloc.stream,
      emitsInOrder(assertExpected),
    );

    //act
    bloc.add(const NewsEvent.fetchNewsData());
    await untilCalled(getNews(any));
  });

  test('''
  should emit data from local storage
  should emit data from remote storage
  ''', () async {
    //assign
    when(getNews(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [
          Right(NewsTestConstant.tNewsModel.data),
          Right(NewsTestConstant.tNewsModel2.data),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const NewsState.loading(),
      NewsState.loaded(NewsTestConstant.tNewsModel.data),
      NewsState.loaded(NewsTestConstant.tNewsModel2.data),
    ];

    expectLater(
      bloc.stream,
      emitsInOrder(assertExpected),
    );

    //act
    bloc.add(const NewsEvent.fetchNewsData());
    await untilCalled(getNews(any));
  });

  test('''
  could not retrive local storage
  should emit data from remote storage
  ''', () async {
    //assign
    when(getNews(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [
          Right(NewsTestConstant.tNewsModel2.data),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const NewsState.loading(),
      NewsState.loaded(NewsTestConstant.tNewsModel2.data),
    ];

    expectLater(
      bloc.stream,
      emitsInOrder(assertExpected),
    );

    //act
    bloc.add(const NewsEvent.fetchNewsData());
    await untilCalled(getNews(any));
  });

  test('''
  should emit data  local storage
  should emit error from remote storage when remote fails.
  ''', () async {
    //assign
    when(getNews(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [
          Right(NewsTestConstant.tNewsModel2.data),
          const Left(ApiFailure.serverError(message: "")),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const NewsState.loading(),
      NewsState.loaded(NewsTestConstant.tNewsModel2.data),
      const NewsState.failure(ApiFailure.serverError(message: "")),
    ];

    expectLater(
      bloc.stream,
      emitsInOrder(assertExpected),
    );

    //act
    bloc.add(const NewsEvent.fetchNewsData());
    await untilCalled(getNews(any));
  });

  test('''
  could not retrive local storage
  should emit error from remote storage when remote fails.
  ''', () async {
    //assign
    when(getNews(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [
          const Left(ApiFailure.serverError(message: "")),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const NewsState.loading(),
      const NewsState.failure(ApiFailure.serverError(message: "")),
    ];

    expectLater(
      bloc.stream,
      emitsInOrder(assertExpected),
    );

    //act
    bloc.add(const NewsEvent.fetchNewsData());
    await untilCalled(getNews(any));
  });
}
