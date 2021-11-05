import 'package:mxc_logic/internal.dart';

class AuthenticationCacheRepository {
  final CacheController _controller;

  AuthenticationCacheRepository(this._controller);

  Future<void> loadCache(String username) async {
    await _controller.load(username);
  }
}
