import 'dart:async';

import 'package:mxc_logic/internal.dart';

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

class SupernodeSetupRepositoryImpl implements SupernodeSetupRepository {
  final CacheZone _zone;

  SupernodeSetupRepositoryImpl(this._zone);

  static Future<SupernodeSetupRepository> load(
    CacheManager cacheManager,
  ) async =>
      SupernodeSetupRepositoryImpl(
        await cacheManager.loadZone('supernode-setup'),
      );

  late final CacheField<String?> _username =
      CacheField.nullable(_zone, 'username');

  late final CacheField<String?> _password =
      CacheField.nullable(_zone, 'password');

  late final CacheField<String?> _supernodeAddress =
      CacheField.nullable(_zone, 'supernode-address');

  late final CacheField<String?> _token = CacheField.nullable(_zone, 'token');

  @override
  String? get username => _username.value;

  @override
  String? get password => _password.value;

  @override
  String? get supernodeAddress => _supernodeAddress.value;

  @override
  String? get token => _token.value;

  @override
  Future<void> saveCredentials(String username, String password) =>
      Future.wait([_username.save(username), _password.save(password)]);

  @override
  Future<void> saveSupernodeAddress(String? address) =>
      _supernodeAddress.save(address);

  @override
  Future<void> saveToken(String? token) => _token.save(token);

  @override
  Future<void> clean() => Future.wait([
        _username.save(null),
        _password.save(null),
        _supernodeAddress.save(null),
        _token.save(null),
      ]);
}
