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
  Future<String> update({
    required String id,
    required String email,
    bool? isActive,
    bool? isAdmin,
    String? note,
    int? sessionTTL,
    String? username,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<void> changePassword({
    required String userId,
    required String password,
  }) {
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
  }) async {
    throw UnimplementedError();
  }
}
