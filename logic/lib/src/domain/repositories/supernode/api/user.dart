import 'package:chopper/chopper.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/entities/user.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class UserRepository {
  final ChopperClient client;

  UserRepository(this.client);

  Future<ProfileResult> profile() async {
    final res = await client.internalService.profile();
    return ProfileResult(
      user: User(
        username: res.body!.user!.username!,
        email: res.body!.user!.email!,
        isActive: res.body!.user!.isActive.orDefault(),
        isAdmin: res.body!.user!.isActive.orDefault(),
      ),
      organizations: res.body!.organizations!
          .map(
            (e) => UserOrganization(
              organizationID: e.organizationID!,
              organizationName: e.organizationName!,
              organizationDisplayName: e.organizationDisplayName.orDefault(),
              isAdmin: e.isAdmin.orDefault(),
              isDeviceAdmin: e.isDeviceAdmin.orDefault(),
              isGatewayAdmin: e.isGatewayAdmin.orDefault(),
              createdAt: e.createdAt!,
              updatedAt: e.updatedAt,
            ),
          )
          .toList(),
      externalAccounts: res.body!.externalUserAccounts!.map(
        (e) {
          late final ExternalAccountType type;
          switch (e.service) {
            case "wechat":
              type = ExternalAccountType.wechat;
              break;
            case "shopify":
              type = ExternalAccountType.shopify;
              break;
            default:
              type = ExternalAccountType.unknown;
          }
          return ExternalAccount(
            externalUserId: e.externalUserId.orDefault(),
            externalUsername: e.externalUsername.orDefault(),
            service: type,
          );
        },
      ).toList(),
    );
  }

  Future<SupernodeTokenDetails> update({
    required String id,
    required String email,
    bool? isActive,
    bool? isAdmin,
    String? note,
    int? sessionTTL,
    String? username,
  }) async {
    final res = await client.userService.update(
      id: id,
      body: ExtapiUpdateUserRequest(
        user: ExtapiUser(
          id: id,
          email: email,
          sessionTTL: 0,
          isActive: true,
          isAdmin: true,
          note: '',
        ),
      ),
    );
    return Mappers.stringToSupernodeJwt(res.body!.jwt!);
  }

  Future<void> changePassword({
    required String userId,
    required String password,
  }) async {
    await client.userService.updatePassword(
      userId: userId,
      body: ExtapiUpdateUserPasswordRequest(
        userId: userId,
        password: password,
      ),
    );
  }
}
