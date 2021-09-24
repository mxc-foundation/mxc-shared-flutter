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
  })  : _value = defaultValue,
        _defaultValue = defaultValue,
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

  bool _loaded = false;

  final T _defaultValue;
  late T _value;
  T get value {
    if (!_loaded) {
      _value = _cache.read(_name, _deserializer) ?? _defaultValue;
      _loaded = true;
    }
    return _value;
  }

  set value(T value) => save(value);

  Future<void> save(T value) {
    _value = value;
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
          serializer: serializer == null ? null : (t) => serializer(t!),
          deserializer: deserializer,
        );
}
