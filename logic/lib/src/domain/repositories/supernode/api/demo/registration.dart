import 'package:chopper/src/base.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoRegistrationRepository implements RegistrationRepository {
  const DemoRegistrationRepository();

  /// [languageCode] can be taken from [Locale.languageCode]

  /// @override
  Future<void> withEmail({
    required String email,
    required String languageCode,
  }) =>
      throw UnimplementedError();

  Future<SupernodeTokenDetails> withExternalUser({
    required String email,
    required String orgName,
  }) async {
    return Mappers.stringToSupernodeJwt("DemoToken");
  }

  @override
  Future<RegistrationResult> confirm({
    required String token,
  }) async {
    return RegistrationResult(
      id: "DemoRegistrationId1",
      isAdmin: true,
      isActive: true,
      token: Mappers.stringToSupernodeJwt("DemoToken"),
      username: "DemoUser",
    );
  }

  @override
  Future<void> finish({
    required String organizationName,
    required String organizationDisplayName,
    required String userId,
    required String password,
    String? authToken,
  }) =>
      throw UnimplementedError();

  @override
  ChopperClient get client => throw UnimplementedError();
}
