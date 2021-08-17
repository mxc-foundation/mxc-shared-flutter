import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class AuthenticationRepository {
  final ChopperClient client;

  AuthenticationRepository(this.client);

  Future<LoginResult> login({
    required String username,
    required String password,
  }) async {
    final res = await client.internalService.login(
      body: ExtapiLoginRequest(
        username: username,
        password: password,
      ),
    );

    return LoginResult(
      token: Mappers.stringToSupernodeJwt(res.body!.jwt!),
      is2faRequired: res.body!.is2faRequired.orDefault(),
    );
  }

  Future<WeChatLoginResult> loginWeChat(String code) async {
    final res = await client.externalUserService.authenticateWeChatUser(
      body: ExtapiAuthenticateWeChatUserRequest(code: code),
    );
    return WeChatLoginResult(
      isBindingRequired: res.body!.bindingIsRequired!,
      token: Mappers.stringToSupernodeJwt(res.body!.jwt!),
    );
  }

  Future<WeChatLoginResult> loginWeChatDebug(
    String code,
  ) async {
    final res = await client.externalUserService.debugAuthenticateWeChatUser(
      body: ExtapiAuthenticateWeChatUserRequest(code: code),
    );
    return WeChatLoginResult(
      isBindingRequired: res.body!.bindingIsRequired!,
      token: Mappers.stringToSupernodeJwt(res.body!.jwt!),
    );
  }

  /// [languageCode] can be taken from [Locale.languageCode]
  Future<void> resetPassword({
    required String username,
    required String languageCode,
  }) async {
    await client.internalService.requestPasswordReset(
      body: ExtapiPasswordResetReq(username: username, language: languageCode),
    );
  }

  Future<void> resetPasswordConfirm({
    required String newPassword,
    required String otp,
    required String username,
  }) async {
    await client.internalService.confirmPasswordReset(
      body: ExtapiConfirmPasswordResetReq(
        newPassword: newPassword,
        otp: otp,
        username: username,
      ),
    );
  }
}
