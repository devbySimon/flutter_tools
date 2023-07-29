library flutter_tools;

import 'dart:convert';

import '../DataBase/LocalDb.dart';
import 'DataManager.dart';

abstract class SimpleMySqlDataManager<T> extends DataManager<T> {

  List<T> data = [];

  List<T> FetchAll() {
    return data;
  }

  Future<int> LoadFromStorage() async {

    var db = await GetLocalStorage();
    await _ErstelleTabelleFallsNichtVorhanden(db);

    var result = await db.query(T.toString());

    for (final row in result) {
      var neuesItem = fromJson(json.decode(row["value"]!.toString()));

      data.add(neuesItem);
    }
    print("${data.length} ${T.toString()} aus dem Speicher geladen.");

    return data.length;
  }

  Future<void> SaveToStorage() async {

    var db = await GetLocalStorage();
    await _ErstelleTabelleFallsNichtVorhanden(db);

    var batch = db.batch();

    batch.delete(T.toString());

    for (T item in data) {
      batch.insert(T.toString(), {
        "value": ToJson(item)
      });
    }

    await batch.commit();
  }

  String ToJson(T item);

  T fromJson(Map<String, Object?> jsonObjects);

  Future<void> _ErstelleTabelleFallsNichtVorhanden(var db) async {

    await db.execute("""
    CREATE TABLE IF NOT EXISTS ${T.toString()} (
      lfdnr integer primary key AUTOINCREMENT,
      value text
    )
    """);
  }
}
