import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/injections/injection.dart';

import 'database_table_constant/table_constant.dart';

abstract class DBProvider {
  bool get isOpen;
  Future open();
  Future<void> close();

  Future insert({
    required String tableName,
    required Map<String, dynamic> values,
  });

  Future<bool> checkIfAvailable({
    required String tableName,
    required List<String> columns,
    required String where,
    required List<dynamic> whereArgs,
  });

  Future delete({
    required String tableName,
    required Map<String, dynamic> values,
  });

  Future deleteAll({
    required String tableName,
  });

  Future<List<Map<String, dynamic>>>? getAllFrom({required String tableName});
}

@Singleton(as: DBProvider)
class DBProviderImpl implements DBProvider {
  static const int _version = 2;
  Database? _database;

  // final _logger = getIt<Logger>();

  // @override
  @override
  bool get isOpen => _database?.isOpen ?? false;

  @override
  Future open() async {
    final databasesPath = await getDatabasesPath();

    final String path = "$databasesPath/wallet_app.db";
    try {
      _database = await openDatabase(path, version: _version, onOpen: (db) {},
          onCreate: (Database db, int version) async {
        final dbBatch = db.batch();
        dbBatch.execute(_createNewsForYouTable());
        dbBatch.execute(_createFavouriteNewsTable());
        dbBatch.execute(_createNewsSourceTable());
        dbBatch.execute(_createNewsLatestTable());
        await dbBatch.commit(noResult: true);
      }, onUpgrade: (Database db, currentVersion, newVersion) async {
        final upgradeCalls = {
          1: (Database db, Batch dbBatch) async {
            dbBatch.execute(_createNewsForYouTable());
            dbBatch.execute(_createFavouriteNewsTable());
          },
          2: (Database db, Batch dbBatch) async {
            dbBatch.execute(_createNewsLatestTable());
          },
        };
        final dbBatch = db.batch();
        upgradeCalls.forEach((vesion, call) async {
          if (_version > currentVersion) await call(db, dbBatch);
        });
        await dbBatch.commit(noResult: true);
      });
    } catch (ex) {
      // _logger.log(
      //   className: "DBProvider",
      //   functionName: "open()",
      //   errorText: "Error opening local daabase",
      //   errorMessage: ex.toString(),
      // );
    }
  }

  @override
  Future<void> close() async => _database?.close();

  @override
  Future insert({
    required String tableName,
    required Map<String, dynamic> values,
  }) async {
    await _database?.insert(tableName, values);
  }

  @override
  Future<List<Map<String, dynamic>>>? getAllFrom({required String tableName}) =>
      _database?.rawQuery("SELECT * from $tableName");

  String _createNewsForYouTable() {
    return '''
    CREATE TABLE IF NOT EXISTS ${NewsItemTable.tableNewsForYou}
     ( 
      ${NewsItemTable.newsItemColumnId} INT PRIMARY KEY,
      ${NewsItemTable.newsItemColumnTitle} TEXT,
      ${NewsItemTable.newsItemColumnLink} TEXT,
      ${NewsItemTable.newsItemColumnCategory} TEXT,
      ${NewsItemTable.newsItemColumnPublishedDate} TEXT,
      ${NewsItemTable.newsItemColumnGuid} TEXT,
      ${NewsItemTable.newsItemColumnSource} TEXT,
      ${NewsItemTable.newsItemColumnDescription} TEXT, 
      ${NewsItemTable.newsItemColumnImageUrl} TEXT,
      ${NewsItemTable.newsItemColumnImageLogo} TEXT 
      )
    ''';
  }

  String _createNewsLatestTable() {
    return '''
    CREATE TABLE IF NOT EXISTS ${NewsItemTable.tableNewsLatest}
     ( 
      ${NewsItemTable.newsItemColumnId} INT PRIMARY KEY,
      ${NewsItemTable.newsItemColumnTitle} TEXT,
      ${NewsItemTable.newsItemColumnLink} TEXT,
      ${NewsItemTable.newsItemColumnCategory} TEXT,
      ${NewsItemTable.newsItemColumnPublishedDate} TEXT,
      ${NewsItemTable.newsItemColumnGuid} TEXT,
      ${NewsItemTable.newsItemColumnSource} TEXT,
      ${NewsItemTable.newsItemColumnDescription} TEXT, 
      ${NewsItemTable.newsItemColumnImageUrl} TEXT,
      ${NewsItemTable.newsItemColumnImageLogo} TEXT 
      )
    ''';
  }

  String _createFavouriteNewsTable() {
    return '''
    CREATE TABLE IF NOT EXISTS ${NewsItemTable.tableNewsLocalSaved}
     ( 
      ${NewsItemTable.newsItemColumnId} INT PRIMARY KEY,
      ${NewsItemTable.newsItemColumnTitle} TEXT,
      ${NewsItemTable.newsItemColumnLink} TEXT,
      ${NewsItemTable.newsItemColumnCategory} TEXT,
      ${NewsItemTable.newsItemColumnPublishedDate} TEXT,
      ${NewsItemTable.newsItemColumnGuid} TEXT,
      ${NewsItemTable.newsItemColumnSource} TEXT,
      ${NewsItemTable.newsItemColumnDescription} TEXT, 
      ${NewsItemTable.newsItemColumnImageUrl} TEXT,
      ${NewsItemTable.newsItemColumnImageLogo} TEXT 
      )
    ''';
  }

  String _createNewsSourceTable() {
    return '''
    CREATE TABLE IF NOT EXISTS ${NewsSourceTable.tableNewsSource}
     (
      ${NewsSourceTable.newsSourceColumnId} INT PRIMARY KEY, 
      ${NewsSourceTable.newsSourceColumnSource} TEXT 
      )
    ''';
  }

  @override
  Future<bool> checkIfAvailable({
    required String tableName,
    required List<String> columns,
    required String where,
    required List<dynamic> whereArgs,
  }) async {
    final tableData = await _database?.query(
      tableName,
      columns: columns,
      where: where,
      whereArgs: whereArgs,
    );

    if (tableData?.isNotEmpty ?? false) {
      return true;
    }

    return false;
  }

  @override
  Future delete({
    required String tableName,
    required Map<String, dynamic> values,
  }) async {
    await _database?.delete(tableName,
        where: '${NewsItemTable.newsItemColumnGuid} = ?',
        whereArgs: [values[NewsItemTable.newsItemColumnGuid]]);
  }

  @override
  Future deleteAll({
    required String tableName,
  }) async {
    await _database?.delete(
      tableName,
    );
  }
}
