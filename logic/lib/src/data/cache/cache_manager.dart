import 'package:mxc_logic/src/data/data.dart';
import 'package:sembast/sembast.dart';
import 'sembast_factory.dart'
    if (dart.library.io) "sembast_factory_io.dart"
    if (dart.library.js) "sembast_factory_web.dart";

abstract class CacheManager {
  static Future<CacheManagerSembast> load() => CacheManagerSembast.load();

  CacheManager withZone(String name);

  Future<dynamic> read(String key);

  Future<void> write(String key, dynamic value);
}

const String _defaultCacheStore = 'cache';

class CacheManagerSembast implements CacheManager {
  final String storeName;

  final StoreRef<String, dynamic> store;
  final Database db;

  CacheManagerSembast(this.db, [this.storeName = _defaultCacheStore])
      : store = StoreRef<String, dynamic>(storeName);

  static Future<CacheManagerSembast> load() async {
    final db = await sembastFactory.openDatabase(sembastDbName);
    return CacheManagerSembast(db);
  }

  @override
  Future<dynamic> read(String key) {
    return store.record(key).get(db);
  }

  @override
  Future<void> write(String key, dynamic value) async {
    await store.record(key).put(db, value);
  }

  @override
  CacheManager withZone(String name) {
    return CacheManagerSembast(
      db,
      '$_defaultCacheStore-$name-${name.hashCode}',
    );
  }
}
