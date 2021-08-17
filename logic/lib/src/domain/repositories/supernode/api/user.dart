import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/entities/user.dart';
import 'package:mxc_logic/src/domain/repositories/internal/jwt_parser.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class UserRepository {
  final ChopperClient client;

  UserRepository(this.client);

  /// [languageCode] can be taken from [Locale.languageCode]
  Future<void> register({
    required String email,
    required String languageCode,
  }) async {
    await client.internalService.registerUser(
      body: ExtapiRegisterUserRequest(
        email: email,
        language: languageCode,
      ),
    );
  }

  Future<RegistrationResult> registerConfirm({
    required String token,
  }) async {
    final res = await client.internalService.confirmRegistration(
      body: ExtapiConfirmRegistrationRequest(
        token: token,
      ),
    );
    return RegistrationResult(
      id: res.body!.id!,
      isAdmin: res.body!.isAdmin.orDefault(),
      isActive: res.body!.isActive.orDefault(),
      jwt: res.body!.jwt!,
      username: res.body!.username!,
    );
  }

  Future<void> registerFinish({
    required String organizationName,
    required String organizationDisplayName,
    required String userId,
    required String password,
    String? authToken,
  }) async {
    await client.internalService.finishRegistration(
      body: ExtapiFinishRegistrationRequest(
        organizationDisplayName: organizationDisplayName,
        password: password,
        userId: userId,
        organizationName: organizationName,
      ),
      grpcMetadataAuthorization: authToken,
    );
  }

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
    final parsedJwt = parseJwt(res.body!.jwt!);
    final userId = parsedJwt['userId'] as int;
    final returnedUsername = parsedJwt['username'] as String;
    return LoginResult(
      jwt: res.body!.jwt!,
      jwtInfo: SupernodeJwt(userId, returnedUsername),
      is2faRequired: res.body!.is2faRequired.orDefault(),
    );
  }

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

  Future<dynamic> update(Map data) {
    return put(
            url: Api.url(UserApi.update, data['user']['id'].toString()),
            data: data)
        .then((res) => res);
  }

  Future<dynamic> changePassword(Map data) {
    return put(
            url: Api.url(UserApi.password, data['userId'].toString()),
            data: data)
        .then((res) => res);
  }

  //get TOTP Status by Namgyeong
  Future<TotpEnabledResponse> getTOTPStatus() {
    return get(url: UserApi.getTOTPStatus, data: {})
        .then((res) => TotpEnabledResponse.fromMap(res));
  }

  Future<dynamic> getTOTPConfig(Map data) {
    return post(url: UserApi.getTOTPConfig, data: data).then((res) => res);
  }

  Future<TotpEnabledResponse> setEnable(String otp) {
    final data = {"otp_code": otp};
    return post(url: UserApi.setEnable, data: data)
        .then((res) => TotpEnabledResponse.fromMap(res));
  }

  Future<dynamic> setDisable(Map data) {
    return post(url: UserApi.setDisable, data: data).then((res) => res);
  }

  Future<dynamic> passwordReset(Map data) {
    return post(url: UserApi.passwordReset, data: data);
  }

  Future<dynamic> passwordResetConfirm(Map data) {
    return post(url: UserApi.passwordResetConfirm, data: data);
  }

  Future<dynamic> authenticateWeChatUser(Map data) {
    return post(url: UserApi.authenticateWeChatUser, data: data);
  }

  Future<dynamic> debugAuthenticateWeChatUser(Map data) {
    return post(url: UserApi.debugAuthenticateWeChatUser, data: data);
  }

  Future<dynamic> bindExternalUser(Map data) {
    return post(url: UserApi.bindExternalUser, data: data);
  }

  Future<dynamic> registerExternalUser(Map data) {
    return post(url: UserApi.registerExternalUser, data: data);
  }

  Future<dynamic> unbindExternalUser(Map data) {
    return post(url: UserApi.unbindExternalUser, data: data);
  }

  Future<dynamic> verifyExternalEmail(Map data) {
    return post(url: UserApi.verifyExternalEmail, data: data);
  }

  Future<dynamic> confirmExternalEmail(Map data) {
    return post(url: UserApi.confirmExternalEmail, data: data);
  }

  Future<List<FiatCurrency>> supportedFiatCurrencies() {
    return get(url: UserApi.supportedFiatCurrencies).then((res) {
      if (res.containsKey("fiatCurrencyList")) {
        final List<FiatCurrency> list = [];
        res["fiatCurrencyList"]
            .forEach((e) => list.add(FiatCurrency.fromMap(e)));
        return list;
      } else
        return null;
    });
  }

  Future<dynamic> miningIncomeReport(Map data) async {
    return get(
      url: Api.url(UserApi.miningIncomeReport, data['format'].toString()),
      data: data,
      rt: ResponseType.plain,
    );
  }
}
