import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/auth/data/app_constant/constant.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';

import '../../../../mocks/mocks.dart';
import '../../../../utils/test_constant/auth/test_constant.dart';

void main() {
  MockSharedPreferences preferences;
  MockFlutterSecureStorage secureStorage;
  AuthLocalDataSource sut;

  final verifyValue = json.encode(AuthTestConstant.WALLET_USER.toJSON());

  setUp(() {
    preferences = MockSharedPreferences();
    secureStorage = MockFlutterSecureStorage();
    sut = AuthLocalDataSource(
      preferences: preferences,
      secureStorage: secureStorage,
    );
  });

  group('assertion test', () {
    test('should return assert error if preference is null', () {
      expect(
        () => AuthLocalDataSource(
          preferences: null,
          secureStorage: secureStorage,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should return assert error if secureStorage is null', () {
      expect(
        () => AuthLocalDataSource(
          preferences: preferences,
          secureStorage: null,
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });

  group('Wallet User', () {
    test('should have Wallet user', () {
      //act
      sut.save(AuthTestConstant.WALLET_USER);

      verify(preferences.setString(AuthPreferenceKeys.walletUser, verifyValue));
    });

    test('should return user if available in local storage', () async {
      //assign
      when(preferences.getString(AuthPreferenceKeys.walletUser))
          .thenAnswer((_) => verifyValue);

      //act
      final user = await sut.getWalletUser();

      //assert
      expect(user, equals(AuthTestConstant.WALLET_USER));
    });

    test('should throw CacheException if not available in local storage',
        () async {
      //assign
      when(preferences.getString(AuthPreferenceKeys.walletUser))
          .thenAnswer((_) => null);

      //act
      final call = sut.getWalletUser;

      //assert
      expect(() async => call(), throwsA(isA<CacheException>()));
    });

    test('should delete auth token', () async {
      await sut.delete();

      verify(preferences.remove(AuthPreferenceKeys.walletUser));
    });
  });

  group('Apple User', () {
    final verifyAppleValue = json.encode({"user": "Apple"});
    test('should have Apple User', () {
      //act
      sut.saveAppleUser({"user": "Apple"});

      verify(secureStorage.write(
          key: AuthPreferenceKeys.appleUser, value: verifyAppleValue));
    });

    test('should return user if available in local storage', () async {
      //assign
      when(secureStorage.read(key: AuthPreferenceKeys.appleUser))
          .thenAnswer((_) async => verifyAppleValue);

      //act
      final user = await sut.getAppleUser();

      //assert
      expect(user, equals({"user": "Apple"}));
    });

    test('should throw CacheException if not available in local storage',
        () async {
      //assign
      when(preferences.getString(AuthPreferenceKeys.appleUser))
          .thenAnswer((_) => null);

      //act
      final call = sut.getAppleUser;

      //assert
      expect(() async => call(), throwsA(isA<CacheException>()));
    });
  });
}
