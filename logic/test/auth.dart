import 'dart:async';

import 'package:mxc_logic/src/domain/repositories/supernode/supernode.dart';
import 'package:test/test.dart';

import 'secure.dart';

// [v] TEST: Can authorize
// [v] TEST: Can send request aftern authorization (to test token injection)
// [ ] TEST: Check token refreshing

class MockTokenRepository implements TokenRepository {
  final String login;
  final String password;
  String? token;

  late Future<String> Function(SupernodeRepository repository) refreshMock;

  MockTokenRepository({
    required this.login,
    required this.password,
    this.token,
  });

  @override
  String? get() => token;

  @override
  Future<String> refresh(SupernodeRepository repository) {
    return refreshMock(repository);
  }

  @override
  FutureOr<void> save(String token) {
    this.token = token;
  }
}

void main() {
  final tokenRepository = MockTokenRepository(
    login: login,
    password: password,
  );
  final supernodeRepository = ApiSupernodeRepository(
    getSupernodeAddress: () => supernodeAddress,
    tokenRepository: tokenRepository,
  );
  group('A group of tests', () {
    test('Can login', () async {
      final token = await supernodeRepository.auth.login(
        username: login,
        password: password,
      );
      tokenRepository.token = token.token.source;
    });
    test('Can send request after login', () async {
      await supernodeRepository.user.profile();
    });
  });
}
