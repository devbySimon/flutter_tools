abstract class DataManager<T> {

  Future<int> LoadFromStorage();

  Future<int> Synchronise();

  T? Fetch({Object? filter});

  List<T> FetchAll();
}
