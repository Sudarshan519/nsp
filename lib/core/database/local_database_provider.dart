import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import 'database_table_constant/table_constant.dart';

abstract class DBProvider {
  Future open();
  Future<void> close();

  Future insert({
    @required String tableName,
    @required Map<String, dynamic> values,
  });

  Future<List<Map<String, dynamic>>> getAllFrom({@required String tableName});
}

@Singleton(as: DBProvider)
class DBProviderImpl implements DBProvider {
  static const int _version = 1;
  Database _database;

  @override
  Future open() async {
    final databasesPath = await getDatabasesPath();
    final String path = "$databasesPath, 'wallet_app.db'";
    _database = await openDatabase(path, version: _version, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      final dbBatch = db.batch();
      dbBatch.execute(_createNewsTable());
      dbBatch.execute(_createNewsSourceTable());
      await dbBatch.commit(noResult: true);
    }, onUpgrade: (Database db, currentVersion, newVersion) async {
      final upgradeCalls = {
        2: (Database db, Batch dbBatch) async {
          dbBatch.execute(_createNewsTable());
          dbBatch.execute(_createNewsSourceTable());
        },
      };
      final dbBatch = db.batch();
      upgradeCalls.forEach((vesion, call) async {
        if (_version > currentVersion) await call(db, dbBatch);
      });
      await dbBatch.commit(noResult: true);
    });
  }

  @override
  Future<void> close() async => _database.close();

  @override
  Future insert({
    @required String tableName,
    @required Map<String, dynamic> values,
  }) async {
    await _database.insert(tableName, values);
  }

  @override
  Future<List<Map<String, dynamic>>> getAllFrom({@required String tableName}) =>
      _database.rawQuery("SELECT * from $tableName");

  String _createNewsTable() {
    return '''
    CREATE TABLE ${NewsItemTable.tableNewsItem}
     ( 
      ${NewsItemTable.newsItemColumnId} INT PRIMARY KEY,
      ${NewsItemTable.newsItemColumnTitle} TEXT,
      ${NewsItemTable.newsItemColumnLink} TEXT,
      ${NewsItemTable.newsItemColumnCategory} TEXT,
      ${NewsItemTable.newsItemColumnPublishedDate} TEXT,
      ${NewsItemTable.newsItemColumnGuid} TEXT,
      ${NewsItemTable.newsItemColumnSource} TEXT,
      ${NewsItemTable.newsItemColumnDescription} TEXT, 
      ${NewsItemTable.newsItemColumnImageUrl} TEXT 
      )
    ''';
  }

  String _createNewsSourceTable() {
    return '''
    CREATE TABLE ${NewsSourceTable.tableNewsSource}
     (
      ${NewsSourceTable.newsSourceColumnId} INT PRIMARY KEY, 
      ${NewsSourceTable.newsSourceColumnSource} TEXT 
      )
    ''';
  }
}
