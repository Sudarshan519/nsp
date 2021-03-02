import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/home/domain/usecases/get_home_page_data.dart';

import '../../../../mocks/mocks.dart';

void main() {
  MockHomeReporisitory _repository;
  GetHomePageData _sut;

  final List _data = [];

  setUp(() {
    _repository = MockHomeReporisitory();
    _sut = GetHomePageData(
      repository: _repository,
    );
  });

  test('should return assert error if repository is null', () {
    expect(
      () => GetHomePageData(repository: null),
      throwsA(isA<AssertionError>()),
    );
  });

  test('''
    should emit data from repository
    ''', () {
    // assign
    when(_repository.getHomePageData()).thenAnswer((_) => Stream.fromIterable([
          Right(_data),
        ]));

    // assert fucture
    final assertExpected = [
      Right(_data),
    ];

    expectLater(_sut(NoParams()), emitsInOrder(assertExpected));

    // act
    _sut(NoParams());
  });
}
