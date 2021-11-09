import 'package:mxc_logic/internal.dart';

class AuthenticationStorageRepository {
  final SupernodeSetupStore _supernodeSetupStore;

  AuthenticationStorageRepository(this._supernodeSetupStore);

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
  }

  String get organizationId =>
      _supernodeSetupStore.organizationId = organizationId;
  set organizationId(String organizationId) =>
      _supernodeSetupStore.organizationId = organizationId;

  bool get loggedIn => _supernodeSetupStore.credentials != null;
}