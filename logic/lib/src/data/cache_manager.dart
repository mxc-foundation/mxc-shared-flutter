class CacheManager {
  Future<T?> read<T>(String key) {}
  Future<T> write<T>(String key, T? value) {}
}
