import 'dart:async';

import 'package:mxc_logic/src/data/data.dart';

abstract class SupernodeSetupRepository {
  static Future<SupernodeSetupRepository> load(CacheManager cacheManager) =>
      SupernodeSetupRepositoryImpl.load(cacheManager);

  String? get username;
  String? get password;
  Future<void> saveCredentials(String username, String password);

  String? get token;
  Future<void> saveToken(String? token);

  String? get supernodeAddress;
  Future<void> saveSupernodeAddress(String? address);

  Future<void> clean();
}

///

abstract class _SupernodeSetupKeys {
  static const zoneName = 'supernode-setup';
  static const username = 'username';
  static const password = 'password';
  static const supernodeAddress = 'supernode_address';
  static const token = 'token';
}

class SupernodeSetupRepositoryImpl implements SupernodeSetupRepository {
  final CacheManager cacheManager;

  String? _username;
  @override
  String? get username => _username;

  String? _password;
  @override
  String? get password => _password;

  String? _supernodeAddress;

  @override
  String? get supernodeAddress => _supernodeAddress;

  String? _token;

  @override
  String? get token => _token;

  SupernodeSetupRepositoryImpl(
    CacheManager cacheManager, {
    required String? username,
    required String? password,
    required String? token,
    required String? supernodeAddress,
  })  : cacheManager = cacheManager.withZone(_SupernodeSetupKeys.zoneName),
        _username = username,
        _password = password,
        _token = token,
        _supernodeAddress = supernodeAddress;

  static Future<SupernodeSetupRepository> load(
    CacheManager cacheManager,
  ) async {
    cacheManager = cacheManager.withZone(_SupernodeSetupKeys.zoneName);

    final username =
        await cacheManager.read(_SupernodeSetupKeys.username) as String?;

    final password =
        await cacheManager.read(_SupernodeSetupKeys.password) as String?;

    final token = await cacheManager.read(_SupernodeSetupKeys.token) as String?;

    final supernodeAddress = await cacheManager
        .read(_SupernodeSetupKeys.supernodeAddress) as String?;

    return SupernodeSetupRepositoryImpl(
      cacheManager,
      username: username,
      password: password,
      token: token,
      supernodeAddress: supernodeAddress,
    );
  }

  @override
  Future<void> saveCredentials(String username, String password) {
    _username = username;
    _password = password;
    return Future.wait([
      cacheManager.write(_SupernodeSetupKeys.username, username),
      cacheManager.write(_SupernodeSetupKeys.password, password),
    ]);
  }

  @override
  Future<void> saveSupernodeAddress(String? address) {
    _supernodeAddress = address;
    return cacheManager.write(_SupernodeSetupKeys.supernodeAddress, address);
  }

  @override
  Future<void> saveToken(String? token) {
    _token = token;
    return cacheManager.write(_SupernodeSetupKeys.token, token);
  }

  @override
  Future<void> clean() {
    _username = null;
    _password = null;
    _token = null;
    _supernodeAddress = null;
    return Future.wait([
      cacheManager.write(_SupernodeSetupKeys.username, null),
      cacheManager.write(_SupernodeSetupKeys.password, null),
      cacheManager.write(_SupernodeSetupKeys.token, null),
      cacheManager.write(_SupernodeSetupKeys.supernodeAddress, null),
    ]);
  }
}
