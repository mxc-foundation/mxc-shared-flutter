import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class ExternalAccountsRepository {
  ExternalAccountsRepository(this.client);

  final SupernodeClient client;

  Future<void> bind({required String externalAuthToken}) async {
    await client.externalUserService.bindExternalUser(
        body: ExtapiBindExternalUserRequest(
            externalAuthToken: externalAuthToken));
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
