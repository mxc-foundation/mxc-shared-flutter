import 'package:mxc_logic/mxc_logic.dart';

import 'auth_repository.dart';

class LoginUseCase {
  final SupernodeRepository repository;
  final AuthenticationRepository authRepository;

  LoginUseCase(this.repository, this.authRepository);

  Future<Map<String, List<Supernode>>> listSupernodes() {
    return repository.listSupernodes();
  }

  Future<void> loginDemo() async {
    await authRepository.saveCredentials("DemoUser", "", "DemoToken");

    final profile = await repository.user.profile();
    authRepository.organizationId = profile.organizations.first.organizationId;
  }

  Future<void> login(
    String supernodeAddress,
    String username,
    String password,
  ) async {
    authRepository.supernodeAddress = supernodeAddress;
    final res = await repository.auth.login(
      username: username,
      password: password,
    );

    await authRepository.saveCredentials(username, password, res.token.source);

    final profile = await repository.user.profile();
    authRepository.organizationId = profile.organizations.first.organizationId;
  }

  bool loggedIn() => authRepository.loggedIn;
}
