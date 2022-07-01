import 'dart:typed_data';

import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoUserRepository implements UserRepository {
  const DemoUserRepository();

  @override
  SupernodeClient get client => throw UnimplementedError();

  @override
  Future<ProfileResult> profile() async {
    return ProfileResult(
      user: User(
        id: '123',
        username: 'DemoUser',
        email: 'demo@mxc.org',
        isActive: true,
        isAdmin: true,
      ),
      organizations: [
        UserOrganization(
          organizationId: 'DemoOrgId1',
          name: 'DemoOrgName1',
          displayName: 'DemoDisplayName1',
          isUserAdmin: true,
          isUserDeviceAdmin: true,
          isUserGatewayAdmin: true,
          createdAt: DateTime.now().add(const Duration(days: -2)),
          updatedAt: DateTime.now(),
        )
      ],
      externalAccounts: [
        ExternalAccount(
          externalUserId: 'DemoExternalUserId1',
          externalUsername: 'DemoExternalUserName1',
          service: Mappers.stringToExternalAccountType('wechat'),
        )
      ],
      currentOrganization: UserOrganization(
        organizationId: 'DemoOrgId1',
        name: 'DemoOrgName1',
        displayName: 'DemoDisplayName1',
        isUserAdmin: true,
        isUserDeviceAdmin: true,
        isUserGatewayAdmin: true,
        createdAt: DateTime.now().add(const Duration(days: -2)),
        updatedAt: DateTime.now(),
      ),
    );
  }

  @override
  String? orgId() => client.defaultOrganizationId;

  @override
  Future<LoginResult> changePassword({
    required String currentPassword,
    required String newPassword,
    required String otp,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> setPassword({required String password}) async {
    throw UnimplementedError();
  }

  @override
  Future<void> addEmail({required String newEmail, required String language}) {
    throw UnimplementedError();
  }

  @override
  Future<void> verifyEmail({
    required String email,
    required String verificationCode,
    required String otp,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() async {}

  @override
  Future<bool> verifyExistingEmail(
      {required String language, required String otp}) {
    throw UnimplementedError();
  }

  @override
  Future<void> confirmVerificationCodeForExistingEmail(
      {required String verificationCode}) async {
    throw UnimplementedError();
  }

  @override
  Future<Uint8List> nftImage() => Future.value(Uint8List(0));

  @override
  Future<bool> needConfirmationToOtpChange() {
    return Future.value(false);
  }

  @override
  Future<void> requestOtpChangeConfirmation(String language) {
    // TODO: implement requestOtpChangeConfirmation
    throw UnimplementedError();
  }

  @override
  Future<bool> verifyOtpChange(String code) {
    // TODO: implement verifyOtpChange
    throw UnimplementedError();
  }
}
