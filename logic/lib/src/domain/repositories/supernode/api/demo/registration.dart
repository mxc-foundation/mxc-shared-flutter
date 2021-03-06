import 'package:mxc_logic/mxc_logic.dart';

class DemoRegistrationRepository implements RegistrationRepository {
  const DemoRegistrationRepository();

  /// [languageCode] can be taken from [Locale.languageCode]
  @override
  Future<void> withEmail({
    required String captcha,
    required String email,
    required String languageCode,
  }) =>
      throw UnimplementedError();

  @override
  Future<String> withExternalUser({
    required String email,
    required String orgName,
    required String externalAuthToken,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<RegistrationResult> confirm({
    required String token,
    required String email,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<void> finish({
    required String organizationName,
    required String organizationDisplayName,
    required String userId,
    required String password,
    String? token,
  }) {
    throw UnimplementedError();
  }
}
