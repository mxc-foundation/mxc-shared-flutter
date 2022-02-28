import 'package:mxc_logic/internal.dart';
import 'package:mxc_logic/mxc_logic.dart';

abstract class TokenRefresher {
  factory TokenRefresher(SupernodeSetupStore setupRepository) =
      TokenRefresherImpl;

  Future<String?> refresh(SupernodeRepository supernodeRepository);
}

class TokenRefresherImpl implements TokenRefresher {
  TokenRefresherImpl(this.setupRepository);

  final SupernodeSetupStore setupRepository;

  @override
  Future<String?> refresh(SupernodeRepository supernodeRepository) async {
    /// Based on the 2AF feature, the automatic re-login will be removed.
    // final crendetials = setupRepository.credentials;
    // if (crendetials != null) {
    //   final res = await supernodeRepository.auth.login(
    //     captcha: '',
    //     username: crendetials.username,
    //     password: crendetials.password,
    //   );
    //   setupRepository.token = res.token;
    //   return res.token;
    // } else {
    //   return null;
    // }
  }
}
