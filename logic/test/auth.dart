import 'dart:async';

import 'package:mxc_logic/internal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:test/test.dart';

import 'secure.dart';

// [v] TEST: Can authorize
// [v] TEST: Can send request aftern authorization (to test token injection)
// [ ] TEST: Check token refreshing

final memoryMap = <String, dynamic>{};

class MemoryCacheZone implements CacheZone {
  late final Map<String, dynamic> map = <String, dynamic>{};

  @override
  T? read<T>(
    String key, [
    Deserializer<T>? deserializer,
  ]) =>
      map[key] as T;

  @override
  Future<void> write<T>(
    String key,
    T value, [
    Serializer<T>? serializer,
  ]) async =>
      map[key] = value;
}

class MemoryCacheManager implements CacheManager {
  @override
  Future<CacheZone> loadZone(String name) async {
    return MemoryCacheZone();
  }

  @override
  void registerType<T extends Object>({
    required Serializer<T> serializer,
    required Deserializer<T> deserializer,
  }) {}
}

Future<void> main() async {
  initSecure();

  final cacheManager = MemoryCacheManager();
  final supernodeSetupStore = SupernodeSetupStore();
  await supernodeSetupStore.load(cacheManager);
  final supernodeRepository = ApiSupernodeRepository(
    setupStore: supernodeSetupStore,
    onTokenExpired: () async {},
  );

  final loginUseCase = LoginUseCase(
    supernodeRepository,
    AuthenticationStorageRepository(supernodeSetupStore),
  );

  group('A group of tests', () {
    test('Can get supernodes', () async {
      final supernodes = await loginUseCase.listSupernodes();
      expect(supernodes, isNotEmpty);
    });
    test('Can login', () async {
      await loginUseCase.login(
        captcha: 'captcha',
        supernodeAddress: supernodeAddress,
        username: login,
        password: password,
      );
    });
    test('Can send request after login', () async {
      await supernodeRepository.user.profile();
    });
  });
}
