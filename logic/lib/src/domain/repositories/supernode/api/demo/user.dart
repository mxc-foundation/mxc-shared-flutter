import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoUserRepository implements UserRepository {
  const DemoUserRepository();

  @override
  Future<ProfileResult> profile() async {
    return ProfileResult(
      user: User(
        username: "DemoUser",
        email: "demo@mxc.org",
        isActive: true,
        isAdmin: true,
      ),
      organizations: [
        UserOrganization(
          organizationId: "DemoOrgId1",
          name: "DemoOrgName1",
          displayName: "DemoDisplayName1",
          isUserAdmin: true,
          isUserDeviceAdmin: true,
          isUserGatewayAdmin: true,
          createdAt: DateTime.now().add(Duration(days: -2)),
          updatedAt: DateTime.now(),
        )
      ],
      externalAccounts: [
        ExternalAccount(
          externalUserId: "DemoExternalUserId1",
          externalUsername: "DemoExternalUserName1",
          service: Mappers.stringToExternalAccountType("wechat"),
        )
      ],
      currentOrganization: UserOrganization(
        organizationId: "DemoOrgId1",
        name: "DemoOrgName1",
        displayName: "DemoDisplayName1",
        isUserAdmin: true,
        isUserDeviceAdmin: true,
        isUserGatewayAdmin: true,
        createdAt: DateTime.now().add(Duration(days: -2)),
        updatedAt: DateTime.now(),
      ),
    );
  }

  @override
  String? id() => client.token == null
      ? null
      : Mappers.stringToSupernodeJwt(client.token!).userId;

  @override
  String? orgId() => client.defaultOrganizationId;

  @override
  Future<SupernodeTokenDetails> update({
    required String id,
    required String email,
    bool? isActive,
    bool? isAdmin,
    String? note,
    int? sessionTTL,
    String? username,
  }) async {
    return Mappers.stringToSupernodeJwt("DemoToken");
  }

  @override
  Future<void> changePassword({
    required String userId,
    required String password,
  }) =>
      throw UnimplementedError();

  @override
  SupernodeClient get client => throw UnimplementedError();
}
