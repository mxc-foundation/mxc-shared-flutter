import 'cache_manager_sembast.dart';

abstract class CacheManager {
  static Future<CacheManagerSembast> load([String dbDirectory = './']) =>
      CacheManagerSembast.load(dbDirectory);

  CacheManager withZone(String name);

  Future<dynamic> read(String key);

  Future<void> write(String key, dynamic value);
}
