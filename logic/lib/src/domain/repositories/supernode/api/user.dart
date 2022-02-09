import 'package:collection/collection.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/entities/user.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class UserRepository {
  UserRepository(this.client);

  final SupernodeClient client;

  static UserOrganization _userOrganizationMapper(ExtapiOrganizationLink e) =>
      UserOrganization(
        organizationId: e.organizationID!,
        name: e.organizationName!,
        displayName: e.organizationDisplayName.orDefault(),
        isUserAdmin: e.isAdmin.orDefault(),
        isUserDeviceAdmin: e.isDeviceAdmin.orDefault(),
        isUserGatewayAdmin: e.isGatewayAdmin.orDefault(),
        createdAt: e.createdAt!,
        updatedAt: e.updatedAt,
      );

  Future<ProfileResult> profile() async {
    final res = await client.internalService.profile();
    return ProfileResult(
      user: User(
        id: res.body!.user!.id!,
        username: res.body!.user!.username!,
        email: res.body!.user!.email!,
        isActive: res.body!.user!.isActive.orDefault(),
        isAdmin: res.body!.user!.isActive.orDefault(),
      ),
      organizations:
          res.body!.organizations!.map(_userOrganizationMapper).toList(),
      externalAccounts: res.body!.externalUserAccounts!
          .map(
            (e) => ExternalAccount(
              externalUserId: e.externalUserId.orDefault(),
              externalUsername: e.externalUsername.orDefault(),
              service: Mappers.stringToExternalAccountType(e.service!),
            ),
          )
          .toList(),
      currentOrganization: res.body!.organizations!
          .map(_userOrganizationMapper)
          .firstWhereOrNull(
            (e) => e.organizationId == client.defaultOrganizationId,
          ),
    );
  }

  String? orgId() => client.defaultOrganizationId;

  Future<String> update({
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

    return res.body!.jwt!;
  }

  Future<LoginResult> changePassword({
    required String currentPassword,
    required String newPassword,
    required String otp,
  }) async {
    final res = await client.userService.changePassword(
      body: ExtapiChangePasswordRequest(
        currentPassword: currentPassword,
        newPassword: newPassword,
      ),
      grpcMetadataXOTP: otp,
    );

    return LoginResult(
      token: res.body!.authToken!,
      is2faRequired: false,
    );
  }

  Future<void> addEmail({
    required String newEmail,
    required String language,
  }) async {
    await client.userService.addEmail(
        body: ExtapiAddEmailRequest(email: newEmail, language: language));
  }

  Future<void> verifyEmail({
    required String email,
    required String verificationCode,
  }) async {
    await client.userService.verifyEmail(
        body: ExtapiVerifyEmailRequest(
            email: email, verificationCode: verificationCode));
  }
}
