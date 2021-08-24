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
    // save* methods set variables to RAM storage syncronously and then save them
    // to cache asynchronously. We don't need to wait until it's cached
    // ignore: unawaited_futures
    setupRepository.saveSupernodeAddress(supernodeAddress);
    final res = await repository.auth.login(
      username: username,
      password: password,
    );
    // ignore: unawaited_futures
    setupRepository.saveCredentials(username, password);
    // ignore: unawaited_futures
    setupRepository.saveToken(res.token.source);
  }
}
