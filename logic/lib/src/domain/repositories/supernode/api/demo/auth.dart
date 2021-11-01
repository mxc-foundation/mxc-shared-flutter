import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoLoginRepository implements LoginRepository {
  DemoLoginRepository();

  Future<LoginResult> login({
    required String username,
    required String password,
  }) async {
    return LoginResult(
      token: Mappers.stringToSupernodeJwt("DemoToken"),
      is2faRequired: false,
    );
  }

  Future<WeChatLoginResult> loginWeChat(String code) async {
    return WeChatLoginResult(
      isBindingRequired: false,
      token: Mappers.stringToSupernodeJwt("DemoToken"),
    );
  }

  Future<WeChatLoginResult> loginWeChatDebug(
    String code,
  ) async {
    return WeChatLoginResult(
      isBindingRequired: false,
      token: Mappers.stringToSupernodeJwt("DemoToken"),
    );
  }

  /// [languageCode] can be taken from [Locale.languageCode]
  Future<void> resetPassword({
    required String username,
    required String languageCode,
  }) =>
      throw UnimplementedError();

  Future<void> resetPasswordConfirm({
    required String newPassword,
    required String otp,
    required String username,
  }) =>
      throw UnimplementedError();

  @override
  ChopperClient get client => throw UnimplementedError();
}
