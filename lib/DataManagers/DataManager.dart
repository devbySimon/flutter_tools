library flutter_tools;

abstract class DataManager<T> {

  Future<int> LoadFromStorage();

  Future<int> Synchronise();

  List<T> Get();
}
