import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/home/domain/entities/home_response.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';

import '../../../mocks/mocks.dart';

void main() {
  MockGetHomePageData usecase;
  HomePageDataBloc sut;

  const HomeResponse _data = HomeResponse(homeData: null, userDetail: null);

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
          const Right(_data),
          const Right(_data),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const HomePageDataState.loading(),
      // HomePageDataState.loadingWithData(_data),
      const HomePageDataState.loaded(_data),
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
          const Right(_data),
          const Right(_data),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const HomePageDataState.loading(),
      // HomePageDataState.loadingWithData(_data),
      const HomePageDataState.loaded(_data),
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
          const Right(_data),
          const Left(ApiFailure.serverError(message: "")),
        ],
      ),
    );

    // assert future
    final assertExpected = [
      const HomePageDataState.loading(),
      // HomePageDataState.loadingWithData(_data),
      const HomePageDataState.loaded(_data),
      const HomePageDataState.failureWithData(
        ApiFailure.serverError(message: ""),
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
