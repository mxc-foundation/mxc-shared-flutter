import 'package:mxc_logic/internal.dart';

class AuthenticationRepository {
  final SupernodeSetupStore _supernodeSetupStore;
  final CacheController? _supernodeCacheController;

  AuthenticationRepository(
    this._supernodeSetupStore,
    this._supernodeCacheController,
  );

  String? get supernodeAddress => _supernodeSetupStore.supernodeAddress;
  set supernodeAddress(String? supernodeAddress) =>
      _supernodeSetupStore.supernodeAddress = supernodeAddress;

  Future<void> saveCredentials(
    String username,
    String password,
    String token,
  ) async {
    _supernodeSetupStore.credentials = Credentials(username, password);
    _supernodeSetupStore.token = token;
    await _supernodeCacheController?.load(username);
  }

  String get organizationId =>
      _supernodeSetupStore.organizationId = organizationId;
  set organizationId(String organizationId) =>
      _supernodeSetupStore.organizationId = organizationId;

  bool get loggedIn => _supernodeSetupStore.credentials != null;
}
