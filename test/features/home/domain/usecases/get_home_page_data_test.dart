import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/home/data/model/home_response_model.dart';
import 'package:wallet_app/features/home/domain/usecases/get_home_page_data.dart';

import '../../../../mocks/mocks.dart';

void main() {
  MockHomeReporisitory _repository;
  GetHomePageData _sut;

  const HomeResponseModel _data =
      HomeResponseModel(homeData: null, userDetail: null);

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
          const Right(_data),
        ]));

    // assert fucture
    final assertExpected = [
      const Right(_data),
    ];

    expectLater(_sut(NoParams()), emitsInOrder(assertExpected));

    // act
    _sut(NoParams());
  });
}
