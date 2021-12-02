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

  Future<bool> authenticateWeChatUser(
      {required bool debug, required String weChatCode}) async {
    final WeChatLoginResult authWeChatUserRes = (debug)
        ? await repository.auth.loginWeChatDebug(weChatCode)
        : await repository.auth.loginWeChat(weChatCode);

    await authStorageRepository.saveCredentials(
      '',
      '',
      authWeChatUserRes.token.source,
    );

    if (!authWeChatUserRes.isBindingRequired) {
      final profile = await repository.user.profile();

      authStorageRepository.organizationId =
          profile.organizations.first.organizationId;
    }
    return authWeChatUserRes.isBindingRequired;
  }
}
