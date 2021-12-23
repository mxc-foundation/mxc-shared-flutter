import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class LoginRepository {
  LoginRepository({
    required this.client,
    required this.userRepository,
  });

  final ChopperClient client;
  final UserRepository userRepository;

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

    final profile = await userRepository.profile();

    return LoginResult(
      token: res.body!.jwt!,
      username: profile.user.username,
      is2faRequired: res.body!.is2faRequired.orDefault(),
    );
  }

  Future<WeChatLoginResult> loginWeChat(String code) async {
    final res = await client.externalUserService.authenticateWeChatUser(
      body: ExtapiAuthenticateWeChatUserRequest(code: code),
    );

    final profile = await userRepository.profile();

    return WeChatLoginResult(
      token: res.body!.jwt!,
      username: profile.user.username,
      isBindingRequired: res.body!.bindingIsRequired!,
    );
  }

  Future<WeChatLoginResult> loginWeChatDebug(String code) async {
    final res = await client.externalUserService.debugAuthenticateWeChatUser(
      body: ExtapiAuthenticateWeChatUserRequest(code: code),
    );

    final profile = await userRepository.profile();

    return WeChatLoginResult(
      token: res.body!.jwt!,
      username: profile.user.username,
      isBindingRequired: res.body!.bindingIsRequired!,
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
