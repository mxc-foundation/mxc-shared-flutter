import 'dart:async';

import 'package:mxc_logic/internal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:test/test.dart';

import 'secure.dart';

// [v] TEST: Can authorize
// [v] TEST: Can send request aftern authorization (to test token injection)
// [ ] TEST: Check token refreshing

final memoryMap = <String, dynamic>{};

class MemoryCacheManager implements CacheManager {
  final Map<String, dynamic> map;

  MemoryCacheManager(this.map);

  @override
  CacheManager withZone(String name) {
    return MemoryCacheManager(
      memoryMap[name] as Map<String, dynamic>? ??
          (memoryMap[name] = <String, dynamic>{}),
    );
  }

  @override
  Future<dynamic> read(String key) {
    return Future<dynamic>.value(map[key]);
  }

  @override
  Future<void> write(String key, dynamic value) {
    return Future<dynamic>.value(map[key] = value);
  }
}

Future<void> main() async {
  initSecure();

  final cacheManager = MemoryCacheManager(memoryMap);
  final supernodeSetupRepository =
      await SupernodeSetupRepository.load(cacheManager);
  final tokenRefresher = TokenRefresher(supernodeSetupRepository);
  final supernodeRepository = ApiSupernodeRepository(
    tokenRefresher: tokenRefresher,
    setupRepository: supernodeSetupRepository,
  );

  final authUseCase =
      AuthUseCase(supernodeRepository, supernodeSetupRepository);

  group('A group of tests', () {
    test('Can get supernodes', () async {
      final supernodes = await authUseCase.listSupernodes();
      expect(supernodes, isNotEmpty);
    });
    test('Can login', () async {
      await authUseCase.login(
        supernodeAddress,
        login,
        password,
      );
    });
    test('Can send request after login', () async {
      await supernodeRepository.user.profile();
    });
  });
}
