import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';

class LoginRepository {
  LoginRepository({
    required this.client,
    required this.userRepository,
  });

  final ChopperClient client;
  final UserRepository userRepository;

  Future<LoginResult> login({
    required String captcha,
    required String username,
    required String password,
  }) async {
    final res = await client.internalService.login(
      body: ExtapiLoginRequest(
        captcha: captcha,
        username: username,
        password: password,
      ),
    );

    return LoginResult(
      token: res.body!.authToken ?? res.body!.jwt!,
      is2faRequired: res.body!.is2faRequired ?? false,
    );
  }

  Future<void> login2fa({
    required String otp,
  }) async {
    await client.internalService.login2FA(
      body: ExtapiLogin2FARequest(),
      grpcMetadataXOTP: otp,
    );
  }

  Future<WeChatLoginResult> loginWeChat(String code) async {
    final res = await client.externalUserService.authenticateWeChatUser(
      body: ExtapiAuthenticateWeChatUserRequest(code: code),
    );

    return WeChatLoginResult(
      token: res.body!.authToken!,
      isBindingRequired: res.body!.bindingIsRequired!,
      is2faRequired: res.body!.is2faRequired!,
    );
  }

  Future<WeChatLoginResult> loginWeChatDebug(String code) async {
    final res = await client.externalUserService.debugAuthenticateWeChatUser(
      body: ExtapiAuthenticateWeChatUserRequest(code: code),
    );

    return WeChatLoginResult(
      token: res.body!.authToken!,
      isBindingRequired: res.body!.bindingIsRequired!,
      is2faRequired: res.body!.is2faRequired!,
    );
  }

  /// [languageCode] can be taken from [Locale.languageCode]
  Future<void> resetPassword({
    required String captcha,
    required String username,
    required String languageCode,
  }) async {
    await client.internalService.requestPasswordReset(
      body: ExtapiPasswordResetReq(captcha: captcha, username: username, language: languageCode),
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
