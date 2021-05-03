import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';

import 'package:wallet_app/features/news/data/app_constant/constant.dart';
import 'package:wallet_app/features/news/data/datasource/news_remote_data_source.dart';
import 'package:wallet_app/utils/constant.dart';

import '../../../../mocks/mocks.dart';
import '../../../../stub/stub.dart';
import '../../../../utils/test_constant/news/test_constant.dart';

void main() {
  MockHttpClient client;
  MockConfigReader configReader;
  NewsRemoteDataSource dataSource;

  final _headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  const _page = "1";
  const _limit = "10";

  void setUpHTTPCLient200() {
    when(
      client.get(
        any,
        headers: anyNamed('headers'),
      ),
    ).thenAnswer(
      (_) async => http.Response(
        stub(path: "news", name: "news_success"),
        200,
      ),
    );
  }

  void setUpHTTPCLient500() {
    when(
      client.get(
        any,
        headers: anyNamed('headers'),
      ),
    ).thenAnswer(
      (_) async => http.Response(
        "somethis very bad happen",
        500,
      ),
    );
  }

  void setUpHTTPCLient400() {
    when(
      client.get(
        any,
        headers: anyNamed('headers'),
      ),
    ).thenAnswer(
      (_) async => http.Response(
        stub(path: "news", name: "news_failure_missing_app_id"),
        400,
      ),
    );
  }

  setUp(() {
    client = MockHttpClient();
    configReader = MockConfigReader();
    dataSource = NewsRemoteDataSource(client: client, config: configReader);
  });

  test('should perform a GET request on news api', () async {
    // assign
    setUpHTTPCLient200();

    // act
    await dataSource.getNewsForYou(
      page: _page,
      limit: _limit,
      sources: [],
      genre: [],
      lang: [],
    );

    //assert
    verify(client.get(NewsApiEndpoints.getNewsForYou, headers: _headers));
  });

  test('should return news if status code is 200', () async {
    // assign
    setUpHTTPCLient200();

    // act
    final result = await dataSource.getNewsForYou(
      page: _page,
      limit: _limit,
      sources: [],
      genre: [],
      lang: [],
    );

    //assert
    expect(result, equals(NewsTestConstant.tNewsModel));
  });

  test('should throw server exception if status code is not 200', () async {
    // assign
    setUpHTTPCLient400();

    // act
    final call = dataSource.getNewsForYou;

    //assert
    expect(
        () => call(
              page: _page,
              limit: _limit,
              sources: [],
              genre: [],
              lang: [],
            ),
        throwsA(isA<ServerException>()));
  });

  test('''
  should throw server exception with proper message
   if status code is not 200
   For example status code 400 is thrown when 
   ''', () async {
    // assign
    setUpHTTPCLient400();

    // act
    final call = dataSource.getNewsForYou;

    //assert
    expect(
      () => call(
        page: _page,
        limit: _limit,
        sources: [],
        genre: [],
        lang: [],
      ),
      throwsA(
        predicate(
          (e) => e is ServerException && e.message == "App Id is required.",
        ),
      ),
    );
  });

  test('''
  should throw server exception with Some thing went wrong message
   if status code is not 200
   and proper message is not sent from server
   ''', () async {
    // assign
    setUpHTTPCLient500();

    // act
    final call = dataSource.getNewsForYou;

    //assert
    expect(
      () => call(
        page: _page,
        limit: _limit,
        sources: [],
        genre: [],
        lang: [],
      ),
      throwsA(
        predicate(
          (e) =>
              e is ServerException &&
              e.message == AppConstants.someThingWentWrong,
        ),
      ),
    );
  });

  test('''
  should throw server exception with error message
   if client threw some exception
   ''', () async {
    // assign
    when(
      client.get(
        any,
        headers: anyNamed('headers'),
      ),
    ).thenThrow(Exception("Something went bad"));

    // act
    final call = dataSource.getNewsForYou;

    //assert
    expect(
      () => call(
        page: _page,
        limit: _limit,
        sources: [],
        genre: [],
        lang: [],
      ),
      throwsA(
        predicate(
          (e) {
            return e is ServerException &&
                e.message == "Exception: Something went bad";
          },
        ),
      ),
    );
  });
}
