library flutter_tools;

class UnityContainer {

  static UnityContainer? _instance;

  static UnityContainer getInstance() {

    _instance ??= UnityContainer._();

    return _instance!;
  }

  UnityContainer._();

  Map<dynamic, dynamic> registeredControllers = {};

  void RegisterController<T>(T object) {

    registeredControllers[T] = object;
  }

  T GetController<T>() {

    return registeredControllers[T];
  }
}