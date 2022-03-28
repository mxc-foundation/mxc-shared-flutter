import 'package:mxc_logic/internal.dart';

class AuthenticationStorageRepository {
  AuthenticationStorageRepository(this._supernodeSetupStore);

  final SupernodeSetupStore _supernodeSetupStore;

  String? get supernodeAddress => _supernodeSetupStore.supernodeAddress;
  set supernodeAddress(String? supernodeAddress) =>
      _supernodeSetupStore.supernodeAddress = supernodeAddress;

  void saveUsername({
    required String username,
  }) {
    _supernodeSetupStore.username = username;
  }

  void saveToken(String token) {
    _supernodeSetupStore.token = token;
  }

  void deleteToken() {
    _supernodeSetupStore.token = null;
  }

  String get organizationId =>
      _supernodeSetupStore.organizationId = organizationId;
  set organizationId(String organizationId) =>
      _supernodeSetupStore.organizationId = organizationId;

  bool get loggedIn => _supernodeSetupStore.username != null;
}
