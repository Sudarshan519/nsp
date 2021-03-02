import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/home/presentation/bloc/home_page_data_bloc.dart';

import '../../../mocks/mocks.dart';

void main() {
  MockGetHomePageData usecase;
  HomePageDataBloc sut;

  final _data = [];

  setUp(() {
    usecase = MockGetHomePageData();
    sut = HomePageDataBloc(getHomePageData: usecase);
  });

  test('should return assert error if repository is null', () {
    expect(
      () => HomePageDataBloc(getHomePageData: null),
      throwsA(isA<AssertionError>()),
    );
  });

  test('Initial State should be [initial]', () {
    expect(sut.state, const HomePageDataState.initial());
  });

  test('should emit Loading while fetching', () async {
    //assign
    when(usecase(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [],
      ),
    );

    // assert future
    final assertExpected = [
      const HomePageDataState.loading(),
    ];

    expectLater(
      sut.asBroadcastStream(),
      emitsInOrder(assertExpected),
    );

    //act
    sut.add(const HomePageDataEvent.fetch());
    await untilCalled(usecase(any));
  });

  test('''
    should emit Loading while fetching
    should emit LoadingWithData once fetch from local server
    should emit Loaded once fetch from the server
    ''', () async {
    //assign
    when(usecase(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [
          Right(_data),
          Right(_data),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const HomePageDataState.loading(),
      // HomePageDataState.loadingWithData(_data),
      HomePageDataState.loaded(_data),
    ];

    expectLater(
      sut.asBroadcastStream(),
      emitsInOrder(assertExpected),
    );

    //act
    sut.add(const HomePageDataEvent.fetch());
    await untilCalled(usecase(any));
  });

  test('''
    should emit Loading while fetching
    should not emit anything when no data available in local server
    should emit LoadingWithData once fetch from the server
    should emit Loaded after stream reach to end.
    ''', () async {
    //assign
    when(usecase(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [
          Right(_data),
          Right(_data),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const HomePageDataState.loading(),
      // HomePageDataState.loadingWithData(_data),
      HomePageDataState.loaded(_data),
    ];

    expectLater(
      sut.asBroadcastStream(),
      emitsInOrder(assertExpected),
    );

    //act
    sut.add(const HomePageDataEvent.fetch());
    await untilCalled(usecase(any));
  });

  test('''
    should emit Loading while fetching
    should emit LoadingWithData once fetch from local server
    should emit error when fetch from remote returns error
    should emit Loaded after stream reach to end.
    ''', () async {
    //assign
    when(usecase(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [
          Right(_data),
          const Left(ApiFailure.serverError(message: "")),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const HomePageDataState.loading(),
      // HomePageDataState.loadingWithData(_data),
      HomePageDataState.loaded(_data),
      HomePageDataState.failureWithData(
        const ApiFailure.serverError(message: ""),
        _data,
      ),
    ];

    expectLater(
      sut.asBroadcastStream(),
      emitsInOrder(assertExpected),
    );

    //act
    sut.add(const HomePageDataEvent.fetch());
    await untilCalled(usecase(any));
  });

  test('''
    should emit Loading while fetching
    should not emit anything when local server returns failure
    should emit error when fetch from remote returns error
    should emit Loaded after stream reach to end.
    ''', () async {
    //assign
    when(usecase(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [
          const Left(ApiFailure.serverError(message: "")),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const HomePageDataState.loading(),
      const HomePageDataState.failure(ApiFailure.serverError(message: "")),
    ];

    expectLater(
      sut.asBroadcastStream(),
      emitsInOrder(assertExpected),
    );

    //act
    sut.add(const HomePageDataEvent.fetch());
    await untilCalled(usecase(any));
  });
}
