import 'package:mxc_logic/internal.dart';
import 'package:mxc_logic/mxc_logic.dart';

class CacheField<T> implements Field<T> {
  final CacheZone _cache;

  final Serializer<T>? _serializer;
  final Deserializer<T>? _deserializer;

  final String _name;

  CacheField.withDefault(
    this._cache,
    this._name,
    T defaultValue, {
    Serializer<T>? serializer,
    Deserializer<T>? deserializer,
  })  : _defaultValue = defaultValue,
        _serializer = serializer,
        _deserializer = deserializer;

  static CacheField<T?> nullable<T>(
    CacheZone cache,
    String name, {
    Serializer<T>? serializer,
    Deserializer<T>? deserializer,
  }) {
    return _NullableCacheField<T>(
      cache,
      name,
      serializer: serializer,
      deserializer: deserializer,
    );
  }

  final T _defaultValue;

  @override
  T get value {
    return _cache.read(_name, _deserializer) ?? _defaultValue;
  }

  @override
  set value(T value) => save(value);

  Future<void> save(T value) {
    return _cache.write(_name, value, _serializer);
  }
}

class _NullableCacheField<T> extends CacheField<T?> {
  _NullableCacheField(
    CacheZone cache,
    String name, {
    Serializer<T>? serializer,
    Deserializer<T>? deserializer,
  }) : super.withDefault(
          cache,
          name,
          null,
          serializer: serializer == null ? null : (t) => serializer(t as T),
          deserializer: deserializer,
        );
}
