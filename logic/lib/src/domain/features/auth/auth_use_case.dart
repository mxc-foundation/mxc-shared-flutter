import 'package:mxc_logic/mxc_logic.dart';

import 'auth_cache_repository.dart';

class LoginUseCase {
  final SupernodeRepository repository;
  final AuthenticationStorageRepository authStorageRepository;
  final AuthenticationCacheRepository? authCacheRepository;

  LoginUseCase(
    this.repository,
    this.authStorageRepository, [
    this.authCacheRepository,
  ]);

  Future<Map<String, List<Supernode>>> listSupernodes() {
    return repository.listSupernodes();
  }

  Future<void> login(
    String supernodeAddress,
    String username,
    String password,
  ) async {
    authStorageRepository.supernodeAddress = supernodeAddress;
    final res = await repository.auth.login(
      username: username,
      password: password,
    );

    await authStorageRepository.saveCredentials(
      username,
      password,
      res.token.source,
    );

    await authCacheRepository?.loadCache(username);

    final profile = await repository.user.profile();

    authStorageRepository.organizationId =
        profile.organizations.first.organizationId;
  }

  bool loggedIn() => repository.loggedIn;
}
