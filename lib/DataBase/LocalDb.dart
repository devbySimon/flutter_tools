library tools;

import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Database? _mySqlLiteDataBase;

String? debugDatabasePath;

Future<Database> GetLocalStorage() async {

  if (_mySqlLiteDataBase == null) {
    if (Platform.isWindows || Platform.isLinux) {

      sqfliteFfiInit();

      final path = debugDatabasePath ?? Platform.resolvedExecutable;

      var databaseFactory = databaseFactoryFfi;
      databaseFactory.setDatabasesPath(path);
      _mySqlLiteDataBase = await databaseFactory.openDatabase(
        path,
      );

    } else {

      var databasesPath = await getDatabasesPath();
      final path = '${databasesPath}database.db';

      try {
        await Directory(databasesPath).create(recursive: true);
      } catch (_) {}

      _mySqlLiteDataBase = await openDatabase(
          path,
          version: 1
      );
    }
  }

  return _mySqlLiteDataBase!;
}