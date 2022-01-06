import 'package:mxc_logic/internal.dart';

class AuthenticationStorageRepository {
  AuthenticationStorageRepository(this._supernodeSetupStore);

  final SupernodeSetupStore _supernodeSetupStore;

  String? get supernodeAddress => _supernodeSetupStore.supernodeAddress;
  set supernodeAddress(String? supernodeAddress) =>
      _supernodeSetupStore.supernodeAddress = supernodeAddress;

  void updateEmail(String email) {
    _supernodeSetupStore.credentials = Credentials(
      email,
      _supernodeSetupStore.credentials?.password ?? '',
    );
  }

  void updatePassword(String password) {
    _supernodeSetupStore.credentials = Credentials(
      _supernodeSetupStore.credentials?.username ?? '',
      password,
    );
  }

  Future<void> saveCredentials({
    required String username,
    required String password,
  }) async {
    _supernodeSetupStore.credentials = Credentials(username, password);
  }

  Future<void> saveToken(String token) async {
    _supernodeSetupStore.token = token;
  }

  String get organizationId =>
      _supernodeSetupStore.organizationId = organizationId;
  set organizationId(String organizationId) =>
      _supernodeSetupStore.organizationId = organizationId;

  bool get loggedIn => _supernodeSetupStore.credentials != null;
}
