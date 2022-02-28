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

  Future<void> login(
    String captcha,
    String supernodeAddress,
    String username,
    String password,
  ) async {
    authStorageRepository.supernodeAddress = supernodeAddress;
    final res = await repository.auth.login(
      captcha: captcha,
      username: username,
      password: password,
    );

    await authStorageRepository.saveCredentials(
      username: username,
      password: password,
    );
    await authStorageRepository.saveToken(res.token);

    await authCacheRepository?.loadCache(username);

    final profile = await repository.user.profile();

    authStorageRepository.organizationId =
        profile.organizations.first.organizationId;
  }

  bool loggedIn() => repository.loggedIn;
}
