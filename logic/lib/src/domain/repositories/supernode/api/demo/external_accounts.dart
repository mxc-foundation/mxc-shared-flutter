import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoExternalAccountsRepository implements ExternalAccountsRepository {
  const DemoExternalAccountsRepository();

  @override
  Future<SupernodeTokenDetails> bind({
    required String email,
    required String password,
  }) async {
    return Mappers.stringToSupernodeJwt("DemoToken");
  }

  @override
  Future<void> unbind({
    required ExternalAccountType service,
    String? organizationId,
  }) =>
      throw UnimplementedError();

  @override
  Future<void> verifyEmail({
    required String email,
    required String language,
    String? orgId,
  }) =>
      throw UnimplementedError();

  @override
  Future<void> confirmEmail({
    required String token,
    String? orgId,
  }) =>
      throw UnimplementedError();

  @override
  SupernodeClient get client => throw UnimplementedError();
}