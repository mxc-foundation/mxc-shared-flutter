import 'package:mxc_logic/mxc_logic.dart';

class AuthUseCase {
  final SupernodeRepository repository;
  final SupernodeSetupRepository setupRepository;

  AuthUseCase(this.repository, this.setupRepository);

  Future<void> login(
    String supernodeAddress,
    String username,
    String password,
  ) async {
    setupRepository.saveSupernodeAddress(supernodeAddress);
    final res = await repository.auth.login(
      username: username,
      password: password,
    );
    setupRepository.saveCredentials(username, password);
    setupRepository.saveToken(res.token.source);
  }
}
