import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/auth/data/repository/auth_repository.dart';

import '../../../../mocks/mocks.dart';
import '../../../../utils/test_constant/auth/test_constant.dart';

void main() {
  MockAuthRemoteDataSourceProtocol remoteDataSource;
  MockAuthLocalDataSourceProtocol localDataSource;

  AuthRepositoryImpl sut;

  setUp(() {
    remoteDataSource = MockAuthRemoteDataSourceProtocol();
    localDataSource = MockAuthLocalDataSourceProtocol();
    sut = AuthRepositoryImpl(
        localDataSource: localDataSource, remoteDataSource: remoteDataSource);
  });

  // void runTestOnline(Function body) {
  //   group('Device is online', () {
  //     setUp(() {
  //       when(networkInfo.isConnected).thenAnswer((_) async => true);
  //     });

  //     body();
  //   });
  // }

  // void runTestOffline(Function body) {
  //   group('Device is Offline', () {
  //     setUp(() {
  //       when(networkInfo.isConnected).thenAnswer((_) async => false);
  //     });

  //     body();
  //   });
  // }

  group('assertion test', () {
    test('should return assert error if local datasource is null', () {
      expect(
        () => AuthRepositoryImpl(
          localDataSource: null,
          remoteDataSource: remoteDataSource,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should return assert error if remote datacource is null', () {
      expect(
        () => AuthRepositoryImpl(
          localDataSource: localDataSource,
          remoteDataSource: null,
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });

  group('login with email and password', () {
    test('should return success when user successfully login', () async {
      // asign
      when(remoteDataSource.postNormalLogin(
              username: anyNamed('username'), password: anyNamed('password')))
          .thenAnswer((_) async => AuthTestConstant.WALLET_USER);

      // act
      final result = await sut.postUserSignInWithUsernameAndPassword(
        username: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
      );

      // assert
      verify(remoteDataSource.postNormalLogin(
          username: anyNamed('username'), password: anyNamed('password')));

      expect(result, equals(const Right(AuthTestConstant.WALLET_USER)));
    });

    test('should save user if success', () async {
      // asign
      when(remoteDataSource.postNormalLogin(
              username: anyNamed('username'), password: anyNamed('password')))
          .thenAnswer((_) async => AuthTestConstant.WALLET_USER);

      // act
      await sut.postUserSignInWithUsernameAndPassword(
        username: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
      );

      // assert
      verify(localDataSource.save(AuthTestConstant.WALLET_USER));
    });

    test('should never save user token if failure', () async {
      // asign
      when(remoteDataSource.postNormalLogin(
              username: anyNamed('username'), password: anyNamed('password')))
          .thenThrow(const ServerException(
              message: "Email and Password do not match"));

      // act
      await sut.postUserSignInWithUsernameAndPassword(
        username: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
      );

      // assert
      verifyNever(localDataSource.save(AuthTestConstant.WALLET_USER));
    });

    test('should return Api Server Error if error from server', () async {
      // asign
      when(remoteDataSource.postNormalLogin(
              username: anyNamed('username'), password: anyNamed('password')))
          .thenThrow(const ServerException(
              message: "Email and Password do not match"));

      // act
      final result = await sut.postUserSignInWithUsernameAndPassword(
        username: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
      );

      // assert
      expect(
          result,
          equals(const Left(ApiFailure.serverError(
              message: "Email and Password do not match"))));
    });
  });

  group('Sign up with name, email, and password', () {
    test('should return unit when user register successfully', () async {
      // asign
      when(remoteDataSource.postNormalSignUp(
        firstName: anyNamed('firstName'),
        lastName: anyNamed('lastName'),
        email: anyNamed('email'),
        phoneNumber: anyNamed('phoneNumber'),
        password: anyNamed('password'),
        confirmPassword: anyNamed('confirmPassword'),
      )).thenAnswer((_) async => unit);

      // act
      final result =
          await sut.postUserSignUpWithUsernamePasswordAndOtherInformation(
        firstName: AuthTestConstant.VALID_FIRST_NAME,
        lastName: AuthTestConstant.VALID_LAST_NAME,
        email: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
        confirmPassword: AuthTestConstant.VALID_CONFIRM_PASSWORD,
        phoneNumber: AuthTestConstant.VALID_PHONE,
      );

      // assert
      verify(remoteDataSource.postNormalSignUp(
        firstName: anyNamed('firstName'),
        lastName: anyNamed('lastName'),
        email: anyNamed('email'),
        phoneNumber: anyNamed('phoneNumber'),
        password: anyNamed('password'),
        confirmPassword: anyNamed('confirmPassword'),
      ));

      expect(result, equals(const Right(unit)));
    });

    test('should return Api Server Error if error from server', () async {
      // asign
      when(remoteDataSource.postNormalSignUp(
        firstName: anyNamed('firstName'),
        lastName: anyNamed('lastName'),
        email: anyNamed('email'),
        phoneNumber: anyNamed('phoneNumber'),
        password: anyNamed('password'),
        confirmPassword: anyNamed('confirmPassword'),
      )).thenThrow(const ServerException(message: "Email already register"));

      // act
      final result =
          await sut.postUserSignUpWithUsernamePasswordAndOtherInformation(
        firstName: AuthTestConstant.VALID_FIRST_NAME,
        lastName: AuthTestConstant.VALID_LAST_NAME,
        email: AuthTestConstant.VALID_EMAIL,
        password: AuthTestConstant.VALID_PASSWORD,
        confirmPassword: AuthTestConstant.VALID_CONFIRM_PASSWORD,
        phoneNumber: AuthTestConstant.VALID_PHONE,
      );

      // assert
      expect(
          result,
          equals(const Left(
              ApiFailure.serverError(message: "Email already register"))));
    });
  });

  group('logout', () {
    test('should return unit', () async {
      final result = await sut.logoutUser();

      expect(result, unit);
    });

    test('should delete user', () async {
      await sut.logoutUser();

      verify(localDataSource.delete());
    });
  });

  group('verify email', () {
    test('should return unit when enail verified successfully', () async {
      // asign
      when(remoteDataSource.verifyEmail(
        email: anyNamed('email'),
        code: anyNamed('code'),
      )).thenAnswer((_) async => unit);

      // act
      final result = await sut.verifyEmail(
        email: AuthTestConstant.VALID_EMAIL,
        code: "code",
      );

      // assert
      verify(remoteDataSource.verifyEmail(
        email: anyNamed('email'),
        code: anyNamed('code'),
      ));

      expect(result, equals(const Right(unit)));
    });

    test('should return unit when enail verified successfully', () async {
      // asign
      when(remoteDataSource.verifyEmail(
        email: anyNamed('email'),
        code: anyNamed('code'),
      )).thenThrow(const ServerException(message: ""));

      // act
      final result = await sut.verifyEmail(
        email: AuthTestConstant.VALID_EMAIL,
        code: "code",
      );

      expect(result, equals(const Left(ApiFailure.serverError(message: ""))));
    });
  });

  group('reset code', () {
    test('should call remote data source', () async {
      // asign
      when(remoteDataSource.resetCode(
        email: anyNamed('email'),
      )).thenAnswer((_) async => unit);

      // act
      final result = await sut.getNewVerificationCode(
        email: AuthTestConstant.VALID_EMAIL,
      );

      // assert
      verify(remoteDataSource.resetCode(
        email: anyNamed('email'),
      ));

      expect(result, equals(const Right(unit)));
    });
  });
}
