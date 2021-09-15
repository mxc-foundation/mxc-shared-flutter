import 'package:mxc_logic/internal.dart';

class CacheFieldManager {
  final CacheManager _manager;

  CacheFieldManager(String zone, CacheManager manager)
      : _manager = manager.withZone(zone);

  final List<CacheField> _fields = [];

  CacheField<T> _registerField<T>(CacheField<T> field) {
    _fields.add(field);
    return field;
  }

  CacheField<T?> field<T>(String name) =>
      _registerField(CacheField._nullable<T>(_manager, name));

  CacheField<T> fieldWithDefault<T>(String name, T defaultValue) =>
      _registerField(CacheField._withDefault(_manager, name, defaultValue));

  Future<void> loadFields() {
    return Future.wait(_fields.map((e) => e._load()));
  }
}

class CacheField<T> {
  final CacheManager _manager;

  final String _name;

  CacheField._withDefault(this._manager, this._name, T defaultValue)
      : _value = defaultValue,
        _defaultValue = defaultValue;

  static CacheField<T?> _nullable<T>(CacheManager manager, String name) {
    return _NullableCacheField<T>(manager, name);
  }

  bool _loaded = false;

  final T _defaultValue;
  T _value;
  T get value {
    if (!_loaded) {
      throw Exception(
        'Call CacheFieldManager.loadFields() before using field!',
      );
    }
    return _value;
  }

  Future<void> _load() async {
    _value = await _manager.read(_name) as T? ?? _defaultValue;
    _loaded = true;
  }

  Future<void> save(T value) {
    _value = value;
    return _manager.write(_name, value);
  }
}

class _NullableCacheField<T> extends CacheField<T?> {
  _NullableCacheField(CacheManager manager, String name)
      : super._withDefault(manager, name, null);
}

class CachedRepositoryLoader {
  final CacheManager manager;
  final String zoneName;
  const CachedRepositoryLoader(this.manager, this.zoneName);

  Future<T> load<T>(T Function(CacheFieldManager m) builder) async {
    final fieldManager = CacheFieldManager(zoneName, manager);
    final repository = builder(fieldManager);
    await fieldManager.loadFields();
    return repository;
  }
}
