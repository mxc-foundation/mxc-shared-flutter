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

class SupernodeSetupRepositoryImpl implements SupernodeSetupRepository {
  final CacheField<String?> _username;
  final CacheField<String?> _password;
  final CacheField<String?> _supernodeAddress;
  final CacheField<String?> _token;

  @override
  String? get username => _username.value;

  @override
  String? get password => _password.value;

  @override
  String? get supernodeAddress => _supernodeAddress.value;

  @override
  String? get token => _token.value;

  SupernodeSetupRepositoryImpl({
    required CacheField<String?> username,
    required CacheField<String?> password,
    required CacheField<String?> token,
    required CacheField<String?> supernodeAddress,
  })  : _username = username,
        _password = password,
        _token = token,
        _supernodeAddress = supernodeAddress;

  static Future<SupernodeSetupRepository> load(
    CacheManager cacheManager,
  ) async {
    final fieldManager = CacheFieldManager('supernode-setup', cacheManager);
    final repository = SupernodeSetupRepositoryImpl(
      username: fieldManager.field('username'),
      password: fieldManager.field('password'),
      token: fieldManager.field('token'),
      supernodeAddress: fieldManager.field('supernode-address'),
    );
    await fieldManager.loadFields();
    return repository;
  }

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
