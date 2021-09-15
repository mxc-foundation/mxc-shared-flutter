import 'package:mxc_logic/internal.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast.dart';

import 'sembast_factory.dart'
    if (dart.library.io) "sembast_factory_io.dart"
    if (dart.library.js) "sembast_factory_web.dart";

const String _defaultCacheStore = 'cache';

class CacheManagerSembast implements CacheManager {
  final String storeName;

  final StoreRef<String, dynamic> store;
  final Database db;

  CacheManagerSembast(this.db, [this.storeName = _defaultCacheStore])
      : store = StoreRef<String, dynamic>(storeName);

  static Future<CacheManagerSembast> load(String dbDirectory) async {
    final path = join(dbDirectory, sembastDbName);
    final db = await sembastFactory.openDatabase(path);
    return CacheManagerSembast(db);
  }

  @override
  Future<dynamic> read(String key) {
    return store.record(key).get(db);
  }

  @override
  Future<void> write(String key, dynamic value) async {
    if (value == null) {
      await store.record(key).delete(db);
    } else {
      await store.record(key).put(db, value);
    }
  }

  @override
  CacheManager withZone(String name) {
    return CacheManagerSembast(
      db,
      '$_defaultCacheStore-$name-${name.hashCode}',
    );
  }
}
