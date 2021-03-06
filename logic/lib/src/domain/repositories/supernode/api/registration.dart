import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class RegistrationRepository {
  RegistrationRepository(this._client);

  final ChopperClient _client;

  /// [languageCode] can be taken from [Locale.languageCode]
  Future<void> withEmail({
    required String captcha,
    required String email,
    required String languageCode,
  }) async {
    await _client.internalService.registerUser(
      body: ExtapiRegisterUserRequest(
        captcha: captcha,
        email: email,
        language: languageCode,
      ),
    );
  }

  Future<String> withExternalUser({
    required String email,
    required String orgName,
    required String externalAuthToken,
  }) async {
    final res = await _client.externalUserService.registerExternalUser(
      body: ExtapiRegisterExternalUserRequest(
        email: email,
        organizationName: orgName,
        externalAuthToken: externalAuthToken,
      ),
    );
    return res.body!.authToken!;
  }

  Future<RegistrationResult> confirm({
    required String token,
    required String email,
  }) async {
    final res = await _client.internalService.confirmRegistration(
      body: ExtapiConfirmRegistrationRequest(
        token: token,
        email: email,
      ),
    );

    return RegistrationResult(
      id: res.body!.id!,
      isAdmin: res.body!.isAdmin.orDefault(),
      isActive: res.body!.isActive.orDefault(),
      token: res.body!.authToken!,
      username: res.body!.username!,
    );
  }

  Future<void> finish({
    required String organizationName,
    required String organizationDisplayName,
    required String userId,
    required String password,
    String? token,
  }) async {
    await _client.internalService.finishRegistration(
      body: ExtapiFinishRegistrationRequest(
        organizationDisplayName: organizationDisplayName,
        password: password,
        userId: userId,
        organizationName: organizationName,
      ),
      grpcMetadataAuthorization: 'Bearer ' + token!,
    );
  }
}
