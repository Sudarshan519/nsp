import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import 'database_table_constant/table_constant.dart';

abstract class DBProvider {
  Database database;

  Future open();
  Future close();
}

@Singleton(as: DBProvider)
class DBProviderImpl implements DBProvider {
  static const int _version = 1;
  Database _db;

  @override
  Database get database => _db;

  @override
  set database(Database _database) {
    _db = _database;
  }

  @override
  Future open() async {
    final databasesPath = await getDatabasesPath();
    final String path = "$databasesPath, 'wallet_app.db'";
    _db = await openDatabase(path, version: _version, onOpen: (db) {},
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
  Future close() async => _db.close();

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
