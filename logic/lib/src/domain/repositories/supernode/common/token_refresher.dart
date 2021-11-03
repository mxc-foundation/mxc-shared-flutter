import 'package:mxc_logic/mxc_logic.dart';

abstract class TokenRefresher {
  factory TokenRefresher(SupernodeSetupRepository setupRepository) =
      TokenRefresherImpl;

  Future<String?> refresh(SupernodeRepository supernodeRepository);
}

class TokenRefresherImpl implements TokenRefresher {
  final SupernodeSetupRepository setupRepository;

  TokenRefresherImpl(this.setupRepository);

  @override
  Future<String?> refresh(SupernodeRepository supernodeRepository) async {
    final username = setupRepository.username;
    final password = setupRepository.password;
    if (username != null && password != null) {
      final res = await supernodeRepository.auth
          .login(username: username, password: password);
      await setupRepository.saveToken(res.token.source);
      return res.token.source;
    } else {
      return null;
    }
  }
}
