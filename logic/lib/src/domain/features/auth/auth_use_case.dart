import 'package:mxc_logic/mxc_logic.dart';

class LoginUseCase {
  LoginUseCase(
    this.repository,
    this.authStorageRepository, [
    this.authCacheRepository,
  ]);

  final SupernodeRepository repository;
  final AuthenticationStorageRepository authStorageRepository;
  final AuthenticationCacheRepository? authCacheRepository;

  Future<Map<String, List<Supernode>>> listSupernodes() {
    return repository.listSupernodes();
  }

  Future<bool> login(
    String supernodeAddress,
    String username,
    String password,
  ) async {
    authStorageRepository.supernodeAddress = supernodeAddress;
    final LoginResult res = await repository.auth.login(
      username: username,
      password: password,
    );

    authStorageRepository.saveToken(res.token);
    if (!res.is2faRequired) {
      await _postLoginInit(username, password);
    }

    return res.is2faRequired;
  }

  Future<void> login2fa(
    String supernodeAddress,
    String username,
    String password,
    String otp,
  ) async {
    authStorageRepository.supernodeAddress = supernodeAddress;
    await repository.auth.login2fa(otp: otp);

    await _postLoginInit(username, password);
  }

  bool loggedIn() => repository.loggedIn;

  Future<void> _postLoginInit(String username, String password) async {
    authStorageRepository.saveCredentials(
      username: username,
      password: password,
    );

    await authCacheRepository?.loadCache(username);

    final profile = await repository.user.profile();

    authStorageRepository.organizationId =
        profile.organizations.first.organizationId;
  }
}
