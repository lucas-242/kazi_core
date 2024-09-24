import 'package:get_it/get_it.dart';

abstract class ServiceInjector {
  static final _instance = GetIt.instance;

  static void factory<T extends Object>(T instance) =>
      _instance.registerFactory<T>(() => instance);

  static void lazySingleton<T extends Object>(T instance) =>
      _instance.registerLazySingleton<T>(() => instance);

  static T singleton<T extends Object>(T instance) =>
      _instance.registerSingleton<T>(instance);
}