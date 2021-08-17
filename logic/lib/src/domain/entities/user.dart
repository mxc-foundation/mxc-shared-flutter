class RegistrationResult {
  final String id;
  final bool isAdmin;
  final bool isActive;
  final String jwt;
  final String username;

  RegistrationResult({
    required this.id,
    required this.isAdmin,
    required this.isActive,
    required this.jwt,
    required this.username,
  });
}

class LoginResult {
  final bool is2faRequired;
  final String jwt;
  final SupernodeJwt jwtInfo;

  LoginResult({
    required this.jwt,
    required this.jwtInfo,
    required this.is2faRequired,
  });
}

class SupernodeJwt {
  final int userId;
  final String username;

  SupernodeJwt(this.userId, this.username);
}

class ProfileResult {
  final User user;
  final List<UserOrganization> organizations;
  final List<ExternalAccount> externalAccounts;

  ProfileResult({
    required this.user,
    required this.organizations,
    required this.externalAccounts,
  });
}

class User {
  final String email;
  final bool isActive;
  final bool isAdmin;
  final String username;

  User({
    required this.email,
    required this.isActive,
    required this.isAdmin,
    required this.username,
  });
}

class UserOrganization {
  final String organizationID;
  final String organizationName;
  final String organizationDisplayName;
  final bool isAdmin;
  final bool isDeviceAdmin;
  final bool isGatewayAdmin;
  final DateTime createdAt;
  final DateTime? updatedAt;

  UserOrganization({
    required this.organizationID,
    required this.organizationName,
    required this.organizationDisplayName,
    required this.isAdmin,
    required this.isDeviceAdmin,
    required this.createdAt,
    required this.updatedAt,
    required this.isGatewayAdmin,
  });
}

enum ExternalAccountType { wechat, shopify, unknown }

class ExternalAccount {
  final String externalUserId;
  final String externalUsername;
  final ExternalAccountType service;

  ExternalAccount({
    required this.externalUserId,
    required this.externalUsername,
    required this.service,
  });

  ExternalAccount copyWith({
    String? externalUserId,
    String? externalUsername,
    ExternalAccountType? service,
  }) {
    return ExternalAccount(
      externalUserId: externalUserId ?? this.externalUserId,
      externalUsername: externalUsername ?? this.externalUsername,
      service: service ?? this.service,
    );
  }
}
