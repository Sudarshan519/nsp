import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/home/data/app_constant/constant.dart';
import 'package:wallet_app/features/home/data/datasource/home_remote_data_source.dart';

import 'package:http/http.dart' as http;
import '../../../../mocks/mocks.dart';
import '../../../../stub/stub.dart';

void main() {
  MockHttpClient client;
  MockConfigReader config;
  HomePageRemoteDataSourceImpl sut;

  final headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  void setUpHTTPCLient200() {
    when(client.get(
      any,
      headers: anyNamed('headers'),
    )).thenAnswer((_) async => http.Response(
          stub(path: "home", name: "home_success"),
          200,
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          },
        ));
  }

  void setUpHTTPCLient500() {
    when(client.get(
      any,
      headers: anyNamed('headers'),
    )).thenAnswer(
      (_) async => http.Response(
        stub(path: "home", name: "home_success"),
        500,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
        },
      ),
    );
  }

  void setUpHTTPCLientThrowException() {
    when(client.get(
      any,
      headers: anyNamed('headers'),
    )).thenThrow(Exception());
  }

  setUp(() {
    client = MockHttpClient();
    config = MockConfigReader();
    sut = HomePageRemoteDataSourceImpl(client: client, config: config);
  });

  group('assertion test', () {
    test('should return assert error if client is null', () {
      expect(
        () => HomePageRemoteDataSourceImpl(
          client: null,
          config: config,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should return assert error if configReader is null', () {
      expect(
        () => HomePageRemoteDataSourceImpl(
          client: client,
          config: null,
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });

  test('''
    should perform a GET request on a URL
    being the end point and with application/json header
    ''', () async {
    //assign
    setUpHTTPCLient200();

    //act
    await sut.getHomePageData();

    //assert
    verify(client.get(
      HomeApiEndpoints.getHome,
      headers: headers,
    ));
  });

  test('''
    should return a List of dynamic Type when endpoint return data 
    if the network status is 200.
    ''', () async {
    //assign
    setUpHTTPCLient200();
    //act
    final result = await sut.getHomePageData();
    //assert
    expect(result, equals(isA<List<dynamic>>()));
  });

  test('''
    should throw a Server Exception 
    if the status is not 200.
    ''', () async {
    //assign
    setUpHTTPCLient500();
    //act
    final call = sut.getHomePageData;
    //assert
    expect(() => call(), throwsA(isA<ServerException>()));
  });

  test('''
    should throw a Server Exception 
    if the client throws an Exception
    ''', () async {
    //assign
    setUpHTTPCLientThrowException();
    //act
    final call = sut.getHomePageData;
    //assert
    expect(() => call(), throwsA(isA<ServerException>()));
  });
}
