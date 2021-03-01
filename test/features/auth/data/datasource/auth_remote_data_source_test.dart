import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/auth/data/app_constant/constant.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_remote_data_source.dart';

import '../../../../mocks/mocks.dart';
import '../../../../stub/stub.dart';
import '../../../../utils/test_constant/auth/test_constant.dart';

void main() {
  MockHttpClient client;
  MockConfigReader config;
  AuthRemoteDataSource sut;

  final headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  void setUpHTTPCLientThrowException() {
    when(client.post(
      any,
      headers: anyNamed('headers'),
      body: anyNamed('body'),
    )).thenThrow(Exception());
  }

  setUp(() {
    client = MockHttpClient();
    config = MockConfigReader();
    sut = AuthRemoteDataSource(client: client, config: config);
  });

  group('assertion test', () {
    test('should return assert error if client is null', () {
      expect(
        () => AuthRemoteDataSource(
          client: null,
          config: config,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should return assert error if configReader is null', () {
      expect(
        () => AuthRemoteDataSource(
          client: client,
          config: null,
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });

  group("Post Normal Login", () {
    void setUpHTTPCLient200() {
      when(client.post(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async =>
          http.Response(stub(path: "auth", name: "auth_success"), 200));
    }

    void setUpHTTPCLient500() {
      when(client.post(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async =>
          http.Response(stub(path: "auth", name: "auth_failure"), 500));
    }

    void setUpHTTPCLient403() {
      when(client.post(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async =>
          http.Response(stub(path: "auth", name: "auth_failure"), 403));
    }

    test('''
    should perform a POST request on a URL with username and password
    being the end point and with application/json header and body
    ''', () async {
      //assign
      setUpHTTPCLient200();

      final body = {
        "email": AuthTestConstant.VALID_EMAIL,
        "password": AuthTestConstant.VALID_PASSWORD,
      };

      //act
      await sut.postNormalLogin(
        username: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
      );
      //assert
      verify(client.post(
        AuthApiEndpoints.postLogin,
        headers: headers,
        body: json.encode(body),
      ));
    });

    test('''
    should return a WalletUserModel when login 
    if email and password are valid and
    if the network status is 200.
    ''', () async {
      //assign
      setUpHTTPCLient200();
      //act
      final result = await sut.postNormalLogin(
        username: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
      );
      //assert
      expect(result, equals(AuthTestConstant.WALLET_USER));
    });

    test('''
    should return an empty WalletUserModel when login 
    if email and password are valid and
    if the network status is 403.
    this function is used to redirect to the email validation page
    ''', () async {
      //assign
      setUpHTTPCLient403();
      //act
      final result = await sut.postNormalLogin(
        username: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
      );
      //assert
      expect(result, equals(AuthTestConstant.WALLET_USER_WITH_STATUS_FALSE));
    });

    test('''
    should return a Server Exception 
    if the status is not 200.
    ''', () async {
      //assign
      setUpHTTPCLient500();
      //act
      final call = sut.postNormalLogin;
      //assert
      expect(
          () => call(
                username: AuthTestConstant.VALID_EMAIL,
                password: AuthTestConstant.VALID_PASSWORD,
              ),
          throwsA(isA<ServerException>()));
    });

    test('''
    should return a Server Exception 
    if the http client throw Exception.
    ''', () async {
      //assign
      setUpHTTPCLientThrowException();
      //act
      final call = sut.postNormalLogin;
      //assert
      expect(
          () => call(
                username: AuthTestConstant.VALID_EMAIL,
                password: AuthTestConstant.VALID_PASSWORD,
              ),
          throwsA(isA<ServerException>()));
    });

    test('''
    should return a Server Exception 
    if the status is not 200.
    ''', () async {
      //assign
      setUpHTTPCLient500();
      //act
      final call = sut.postNormalLogin;
      //assert
      expect(
          () => call(
                username: AuthTestConstant.VALID_EMAIL,
                password: AuthTestConstant.VALID_PASSWORD,
              ),
          throwsA(isA<ServerException>()));
    });

    test('''
    should return a Server Exception 
    with message Email and password do not match
    if the status is not 200.
    ''', () async {
      //assign
      setUpHTTPCLient500();
      //act
      final call = sut.postNormalLogin;
      //assert
      expect(
        () => call(
          username: AuthTestConstant.VALID_EMAIL,
          password: AuthTestConstant.VALID_PASSWORD,
        ),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group("Post Sign up Login", () {
    void setUpHTTPCLient200() {
      when(client.post(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async =>
          http.Response(stub(path: "auth", name: "auth_success"), 200));
    }

    void setUpHTTPCLient500() {
      when(client.post(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async =>
          http.Response(stub(path: "auth", name: "auth_failure"), 500));
    }

    test('''
    should perform a POST request on a URL with email, name, and password
    being the end point and with application/json header and body
    ''', () async {
      //assign
      setUpHTTPCLient200();

      final body = {
        "first_name": AuthTestConstant.VALID_FIRST_NAME,
        "last_name": AuthTestConstant.VALID_LAST_NAME,
        "email": AuthTestConstant.VALID_EMAIL,
        "password": AuthTestConstant.VALID_PASSWORD,
        "password_confirmation": AuthTestConstant.VALID_CONFIRM_PASSWORD,
        "phone": AuthTestConstant.VALID_PHONE,
        "created_gps": AuthTestConstant.CREATED_GPS,
      };

      //act
      await sut.postNormalSignUp(
        firstName: AuthTestConstant.VALID_FIRST_NAME,
        lastName: AuthTestConstant.VALID_LAST_NAME,
        email: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
        confirmPassword: AuthTestConstant.VALID_CONFIRM_PASSWORD,
        phoneNumber: AuthTestConstant.VALID_PHONE,
      );
      verify(client.post(
        AuthApiEndpoints.postRegister,
        headers: headers,
        body: json.encode(body),
      ));
    });

    test('''
    should return a unit when register 
    if the network status is 200.
    ''', () async {
      //assign
      setUpHTTPCLient200();
      //act
      final result = await sut.postNormalSignUp(
        firstName: AuthTestConstant.VALID_FIRST_NAME,
        lastName: AuthTestConstant.VALID_LAST_NAME,
        email: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
        confirmPassword: AuthTestConstant.VALID_CONFIRM_PASSWORD,
        phoneNumber: AuthTestConstant.VALID_PHONE,
      );
      //assert
      expect(result, equals(unit));
    });

    test('''
    should return a Server Exception 
    if the status is not 200.
    ''', () async {
      //assign
      setUpHTTPCLient500();
      //act
      final call = sut.postNormalSignUp;
      //assert
      expect(
          () => call(
                firstName: AuthTestConstant.VALID_FIRST_NAME,
                lastName: AuthTestConstant.VALID_LAST_NAME,
                email: AuthTestConstant.VALID_EMAIL,
                password: AuthTestConstant.VALID_PASSWORD,
                confirmPassword: AuthTestConstant.VALID_CONFIRM_PASSWORD,
                phoneNumber: AuthTestConstant.VALID_PHONE,
              ),
          throwsA(isA<ServerException>()));
    });

    test('''
    should return a Server Exception 
    if client throws an exception.
    ''', () async {
      //assign
      setUpHTTPCLientThrowException();
      //act
      final call = sut.postNormalSignUp;
      //assert
      expect(
        () => call(
          firstName: AuthTestConstant.VALID_FIRST_NAME,
          lastName: AuthTestConstant.VALID_LAST_NAME,
          email: AuthTestConstant.VALID_EMAIL,
          password: AuthTestConstant.VALID_PASSWORD,
          confirmPassword: AuthTestConstant.VALID_CONFIRM_PASSWORD,
          phoneNumber: AuthTestConstant.VALID_PHONE,
        ),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group("Post Verify Email", () {
    void setUpHTTPCLient200() {
      when(client.post(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async =>
          http.Response(stub(path: "auth", name: "auth_success"), 200));
    }

    void setUpHTTPCLient500() {
      when(client.post(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async =>
          http.Response(stub(path: "auth", name: "auth_failure"), 500));
    }

    test('''
    should perform a POST request on a URL with email and pin
    being the end point and with application/json header and body
    ''', () async {
      //assign
      setUpHTTPCLient200();

      final body = {
        "email": AuthTestConstant.VALID_EMAIL,
        "code": "code",
      };

      //act
      await sut.verifyEmail(
        email: AuthTestConstant.VALID_EMAIL,
        code: "code",
      );
      verify(client.post(
        AuthApiEndpoints.verifyEmail,
        headers: headers,
        body: json.encode(body),
      ));
    });

    test('''
    should return a unit 
    if the network status is 200.
    ''', () async {
      //assign
      setUpHTTPCLient200();
      //act
      final result = await sut.verifyEmail(
        email: AuthTestConstant.VALID_EMAIL,
        code: "code",
      );
      //assert
      expect(result, equals(unit));
    });

    test('''
    should return a Server Exception 
    if status code is not 200.
    ''', () async {
      //assign
      setUpHTTPCLient500();
      //act
      final call = sut.verifyEmail;
      //assert
      expect(
        () => call(
          email: AuthTestConstant.VALID_EMAIL,
          code: "code",
        ),
        throwsA(isA<ServerException>()),
      );
    });

    test('''
    should return a Server Exception 
    if client throws an exception.
    ''', () async {
      //assign
      setUpHTTPCLientThrowException();
      //act
      final call = sut.verifyEmail;
      //assert
      expect(
        () => call(
          email: AuthTestConstant.VALID_EMAIL,
          code: "code",
        ),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group("Post reset verification code", () {
    void setUpHTTPCLient200() {
      when(client.post(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async =>
          http.Response(stub(path: "auth", name: "auth_success"), 200));
    }

    test('''
    should perform a POST request on a URL with email
    being the end point and with application/json header and body
    ''', () async {
      //assign
      setUpHTTPCLient200();

      final body = {
        "email": AuthTestConstant.VALID_EMAIL,
      };

      //act
      await sut.resetCode(
        email: AuthTestConstant.VALID_EMAIL,
      );
      verify(client.post(
        AuthApiEndpoints.getNewVerificationCode,
        headers: headers,
        body: json.encode(body),
      ));
    });
  });
}
