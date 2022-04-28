import 'dart:convert';
import 'dart:typed_data';

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

  Future<Uint8List?> nftImage() async {
    final res = await client.nFTService.getNFTEggImage();
    String base64Image = '';
    // backend sends several json responses splitted by \n symbol
    if (res.body == null) {
      final resultParts = res.bodyString.split('\n');
      for (final result in resultParts) {
        if (result.trim().isEmpty) continue;
        final part = ApiNftGetImageGet$Response.fromJson(
          Map<String, dynamic>.from(jsonDecode(result) as Map),
        );
        base64Image += (part.result?.data).orDefault();
      }
    } else {
      base64Image = (res.body?.result?.data).orDefault();
    }
    final result = base64Decode(base64Image);
    if (result.isEmpty) return null;
    return result;
  }

  String? orgId() => client.defaultOrganizationId;

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

  Future<void> setPassword({required String password}) async {
    await client.userService
        .setPassword(body: ExtapiSetPasswordRequest(password: password));
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
    required String otp,
  }) async {
    await client.userService.verifyEmail(
        body: ExtapiVerifyEmailRequest(
            email: email, verificationCode: verificationCode),
        grpcMetadataXOTP: otp);
  }

  Future<bool> verifyExistingEmail(
      {required String language, required String otp}) async {
    final res = await client.userService.verifyExistingEmail(
      body: ExtapiVerifyExistingEmailRequest(language: language),
      grpcMetadataXOTP: otp,
    );
    return res.body!.verified!;
  }

  Future<void> confirmVerificationCodeForExistingEmail(
      {required String verificationCode}) async {
    await client.userService.confirmVerifyExistingEmail(
        body: ExtapiConfirmVerifyExistingEmailRequest(
            verificationCode: verificationCode));
  }

  Future<void> logout() async {
    await client.internalService.logout();
  }
}
