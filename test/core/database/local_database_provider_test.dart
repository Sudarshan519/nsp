import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:wallet_app/core/database/local_database_provider.dart';

class MockDataBase extends Mock implements Database {}

void main() {
  MockDataBase dataBase;
  DBProviderImpl dbProvider;

  setUp(() {
    dataBase = MockDataBase();
    dbProvider = DBProviderImpl();
  });

  test('should create database when there is no database', () {
    // when(dataBase.)
  });
}
