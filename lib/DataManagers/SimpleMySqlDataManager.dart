library flutter_tools;

import 'dart:convert';

import '../DataBase/LocalDb.dart';
import 'DataManager.dart';

abstract class SimpleMySqlDataManager<T> extends DataManager<T> {

  List<T> data = [];

  Map<String, String>? optionalTableConditions;

  List<T> FetchAll() {
    return data;
  }

  Future<int> LoadFromStorage() async {

    var db = await GetLocalStorage();
    await _ErstelleTabelleFallsNichtVorhanden(db);

    List<Map<String, Object?>> result;
    if (optionalTableConditions != null) {

      var whereClause = "";
      var whereArgs = [];
      for (var whereItem in optionalTableConditions!.entries) {
        if (whereClause.isNotEmpty) {
          whereClause += "AND ";
        }

        whereClause += "${whereItem.key} = ?";
        whereArgs.add(whereItem.value);
      }

      result = await db.query(T.toString(), where: whereClause, whereArgs: whereArgs);
    } else {
      result = await db.query(T.toString(), );
    }

    int addedCount = 0;
    for (final row in result) {
      var neuesItem = fromJson(json.decode(row["value"]!.toString()));

      if (!Exists(data, neuesItem)) {
        data.add(neuesItem);
        addedCount++;
      }
    }
    print("$addedCount ${T.toString()} aus dem Speicher geladen.");

    return addedCount;
  }

  Future<void> SaveToStorage() async {

    var db = await GetLocalStorage();
    await _ErstelleTabelleFallsNichtVorhanden(db);

    var batch = db.batch();

    List<Map<String, Object?>> result;
    if (optionalTableConditions != null) {

      var whereClause = "";
      var whereArgs = [];
      for (var whereItem in optionalTableConditions!.entries) {
        if (whereClause.isNotEmpty) {
          whereClause += "AND ";
        }

        whereClause += "${whereItem.key} = ?";
        whereArgs.add(whereItem.value);
      }

      batch.delete(T.toString(), where: whereClause, whereArgs: whereArgs);

      for (T item in data) {
        batch.insert(T.toString(), {
          "value": ToJson(item),

          for (var entry in optionalTableConditions!.entries)
            entry.key: entry.value,
        });
      }
    } else {
      batch.delete(T.toString());

      for (T item in data) {
        batch.insert(T.toString(), {
          "value": ToJson(item)
        });
      }
    }

    await batch.commit();
  }

  String ToJson(T item);

  T fromJson(Map<String, Object?> jsonObjects);

  bool Exists(List<T> data, T item);

  Future<void> _ErstelleTabelleFallsNichtVorhanden(var db) async {

    String additionalColumnsToCreate = "";
    if (optionalTableConditions != null) {
      for (var whereItem in optionalTableConditions!.entries) {
        additionalColumnsToCreate += ", ${whereItem.key} text";
      }
    }

    await db.execute("""
    CREATE TABLE IF NOT EXISTS ${T.toString()} (
      lfdnr integer primary key AUTOINCREMENT,
      value text $additionalColumnsToCreate
    )
    """);
  }
}
