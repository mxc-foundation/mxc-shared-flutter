import 'package:mxc_logic/internal.dart';
import 'package:mxc_logic/mxc_logic.dart';

abstract class TokenRefresher {
  factory TokenRefresher(SupernodeSetupStore setupRepository) =
      TokenRefresherImpl;

  Future<String?> refresh(SupernodeRepository supernodeRepository);
}

class TokenRefresherImpl implements TokenRefresher {
  final SupernodeSetupStore setupRepository;

  TokenRefresherImpl(this.setupRepository);

  @override
  Future<String?> refresh(SupernodeRepository supernodeRepository) async {
    final crendetials = setupRepository.credentials;
    if (crendetials != null) {
      final res = await supernodeRepository.auth.login(
        username: crendetials.username,
        password: crendetials.password,
      );
      setupRepository.token = res.token.source;
      return res.token.source;
    } else {
      return null;
    }
  }
}
