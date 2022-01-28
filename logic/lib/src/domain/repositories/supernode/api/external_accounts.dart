import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class ExternalAccountsRepository {
  ExternalAccountsRepository(this.client);

  final SupernodeClient client;

  Future<String> bind({
    required String email,
    required String password,
  }) async {
    final res = await client.externalUserService.bindExternalUser(
      body: ExtapiBindExternalUserRequest(
        email: email,
        password: password,
      ),
    );
    return res.body!.jwt!;
  }

  Future<void> unbind({
    required ExternalAccountType service,
    String? organizationId,
  }) async {
    await client.externalUserService.unbindExternalUser(
      body: ExtapiUnbindExternalUserRequest(
        organizationId: organizationId ?? client.defaultOrganizationId,
        service: service.toData(),
      ),
    );
  }
}
