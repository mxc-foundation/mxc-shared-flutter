import 'package:mxc_logic/internal.dart';
import 'package:mxc_logic/mxc_logic.dart';

abstract class CacheRepository {
  late final CacheZone _zone;

  Future<void> load(CacheManager manager) async {
    _zone = await manager.loadZone(zone);
  }

  String get zone;

  Field<T?> field<T>(
    String name, {
    Serializer<T>? serializer,
    Deserializer<T>? deserializer,
  }) =>
      CacheField.nullable<T>(
        _zone,
        name,
        serializer: serializer,
        deserializer: deserializer,
      );

  Field<T> fieldWithDefault<T>(
    String name,
    T defaultValue, {
    Serializer<T>? serializer,
    Deserializer<T>? deserializer,
  }) =>
      CacheField.withDefault(
        _zone,
        name,
        defaultValue,
        serializer: serializer,
        deserializer: deserializer,
      );
}
