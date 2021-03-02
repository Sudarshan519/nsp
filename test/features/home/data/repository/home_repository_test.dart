import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/home/data/repositories/home_repository.dart';

import '../../../../mocks/mocks.dart';

void main() {
  MockHomePageRemoteDataSource remoteDataSource;
  HomeRepositoryImpl sut;

  final List<dynamic> result = [];

  setUp(() {
    remoteDataSource = MockHomePageRemoteDataSource();
    sut = HomeRepositoryImpl(remoteDataSource: remoteDataSource);
  });

  group('assertion test', () {
    test('should return assert error if remoteDataSource is null', () {
      expect(
        () => HomeRepositoryImpl(
          remoteDataSource: null,
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });

  test('''
      should emit data from remote storage once fetch from remote
      ''', () async {
    // assign

    when(remoteDataSource.getHomePageData()).thenAnswer((_) async => result);

    // assert fucture
    final assertExpected = [
      Right(result),
    ];

    expectLater(sut.getHomePageData(), emitsInOrder(assertExpected));

    // act
    sut.getHomePageData();
    await untilCalled(remoteDataSource.getHomePageData());
  });

  test('''
      should emit ApiFailure if remote datasource failed
      ''', () async {
    // assign

    when(remoteDataSource.getHomePageData())
        .thenThrow(const ServerException(message: ""));

    // assert fucture
    final assertExpected = [
      const Left(ApiFailure.serverError(message: "")),
    ];

    expectLater(sut.getHomePageData(), emitsInOrder(assertExpected));

    // act
    sut.getHomePageData();
    await untilCalled(remoteDataSource.getHomePageData());
  });
}
