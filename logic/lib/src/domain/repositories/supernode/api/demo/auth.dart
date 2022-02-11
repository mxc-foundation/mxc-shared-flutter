import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';

class DemoLoginRepository implements LoginRepository {
  const DemoLoginRepository();

  @override
  ChopperClient get client => throw UnimplementedError();

  @override
  UserRepository get userRepository => throw UnimplementedError();

  @override
  Future<LoginResult> login({
    required String username,
    required String password,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<void> login2fa({
    required String otp,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<WeChatLoginResult> loginWeChat(String code) async {
    throw UnimplementedError();
  }

  @override
  Future<WeChatLoginResult> loginWeChatDebug(
    String code,
  ) async {
    throw UnimplementedError();
  }

  /// [languageCode] can be taken from [Locale.languageCode]
  @override
  Future<void> resetPassword({
    required String username,
    required String languageCode,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> resetPasswordConfirm({
    required String newPassword,
    required String otp,
    required String username,
  }) {
    throw UnimplementedError();
  }
}
