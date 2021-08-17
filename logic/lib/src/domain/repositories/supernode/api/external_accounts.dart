import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class ExternalAccountsRepository {
  final ChopperClient client;

  ExternalAccountsRepository(this.client);

  Future<SupernodeTokenDetails> bind({
    required String email,
    required String password,
  }) async {
    final res = await client.externalUserService.bindExternalUser(
      body: ExtapiBindExternalUserRequest(
        email: email,
        password: password,
      ),
    );
    return Mappers.stringToSupernodeJwt(res.body!.jwt!);
  }

  Future<void> unbind({
    required String organizationId,
    required String service,
  }) async {
    await client.externalUserService.unbindExternalUser(
      body: ExtapiUnbindExternalUserRequest(
        organizationId: organizationId,
        service: service,
      ),
    );
  }

  Future<void> verifyEmail({
    required String email,
    required String language,
    required String orgId,
  }) async {
    await client.externalUserService.verifyEmail(
      body: ExtapiVerifyEmailRequest(
        email: email,
        language: language,
        organizationId: orgId,
      ),
    );
  }

  Future<void> confirmEmail({
    required String token,
    required String orgId,
  }) async {
    await client.externalUserService.confirmBindingEmail(
      body: ExtapiConfirmBindingEmailRequest(
        token: token,
        organizationId: orgId,
      ),
    );
  }
}
