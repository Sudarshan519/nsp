import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'database_table_constant/table_constant.dart';

abstract class DBProvider {
  Future open();
  Future<void> close();

  Future insert({
    @required String tableName,
    @required Map<String, dynamic> values,
  });

  Future<bool> checkIfAvailable({
    @required String tableName,
    @required List<String> columns,
    @required String where,
    @required List<dynamic> whereArgs,
  });

  Future delete({
    @required String tableName,
    @required Map<String, dynamic> values,
  });

  Future<List<Map<String, dynamic>>> getAllFrom({@required String tableName});
}

@Singleton(as: DBProvider)
class DBProviderImpl implements DBProvider {
  static const int _version = 1;
  Database _database;

  static Future<String> initDb(String dbName) async {
    final databasePath = await getDatabasesPath();
    // String databasePath = "";

    // if (Platform.isAndroid) {
    //   databasePath = await getDatabasesPath();
    // } else if (Platform.isIOS) {
    //   databasePath = (await getApplicationDocumentsDirectory()).path;
    // }

    final String path = "$databasePath/$dbName";
    if (await Directory(path).exists()) {
    } else {
      try {
        await Directory(path).create(recursive: true);
      } catch (e) {
        print(e);
      }
    }
    return path;
  }

  @override
  Future open() async {
    // String databasesPath = "";

    final databasesPath = await getDatabasesPath();
    // var documentDirectory = await getApplicationDocumentsDirectory();

    // if (Platform.isAndroid) {
    //   databasesPath = await getDatabasesPath();
    // } else if (Platform.isIOS) {
    //   databasesPath = (await getApplicationDocumentsDirectory()).path;
    // }

    final String path = "$databasesPath/wallet_app.db";
    try {
      _database = await openDatabase(path, version: _version, onOpen: (db) {},
          onCreate: (Database db, int version) async {
        final dbBatch = db.batch();
        dbBatch.execute(_createNewsForYouTable());
        dbBatch.execute(_createFavouriteNewsTable());
        dbBatch.execute(_createNewsSourceTable());
        await dbBatch.commit(noResult: true);
      }, onUpgrade: (Database db, currentVersion, newVersion) async {
        final upgradeCalls = {
          0: (Database db, Batch dbBatch) async {
            dbBatch.execute(_createNewsForYouTable());
            dbBatch.execute(_createFavouriteNewsTable());
          },
        };
        final dbBatch = db.batch();
        upgradeCalls.forEach((vesion, call) async {
          if (_version > currentVersion) await call(db, dbBatch);
        });
        await dbBatch.commit(noResult: true);
      });
    } catch (ex) {
      print(ex.toString());
    }

    // final String path = await initDb("wallet_app.db");

    // try {
    //   _database = await openDatabase(
    //     path,
    //     version: 1,
    //     onCreate: (Database db, int version) async {
    //       await db.execute(_createNewsForYouTable());
    //       await db.execute(_createFavouriteNewsTable());
    //     },
    //     onUpgrade: (Database db, int version, int newVer) async {
    //       if (newVer == 2) {
    //         await db.execute(_createNewsForYouTable());
    //         await db.execute(_createNewsForYouTable());
    //       }
    //     },
    //     onDowngrade: (Database db, int version, int newVer) {
    //       deleteDatabase(path);
    //     },
    //     singleInstance: true,
    //   );
    // } catch (ex) {
    //   print(ex.toString());
    // }
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

  String _createNewsForYouTable() {
    return '''
    CREATE TABLE ${NewsItemTable.tableNewsForYou}
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
    CREATE TABLE ${NewsItemTable.tableNewsLocalSaved}
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
    CREATE TABLE ${NewsSourceTable.tableNewsSource}
     (
      ${NewsSourceTable.newsSourceColumnId} INT PRIMARY KEY, 
      ${NewsSourceTable.newsSourceColumnSource} TEXT 
      )
    ''';
  }

  @override
  Future<bool> checkIfAvailable({
    @required String tableName,
    @required List<String> columns,
    @required String where,
    @required List<dynamic> whereArgs,
  }) async {
    final some = await _database.query(
      tableName,
      columns: columns,
      where: where,
      whereArgs: whereArgs,
    );

    if (some.isNotEmpty) {
      return true;
    }

    return false;
  }

  @override
  Future delete({
    @required String tableName,
    @required Map<String, dynamic> values,
  }) async {
    await _database.delete(tableName,
        where: '${NewsItemTable.newsItemColumnGuid} = ?',
        whereArgs: [values[NewsItemTable.newsItemColumnGuid]]);
  }
}
