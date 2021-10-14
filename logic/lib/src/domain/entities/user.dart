import 'package:mxc_logic/mxc_logic.dart';

class RegistrationResult {
  final String id;
  final bool isAdmin;
  final bool isActive;
  final SupernodeTokenDetails token;
  final String username;

  RegistrationResult({
    required this.id,
    required this.isAdmin,
    required this.isActive,
    required this.token,
    required this.username,
  });
}

class LoginResult {
  final bool is2faRequired;
  final SupernodeTokenDetails token;

  LoginResult({
    required this.token,
    required this.is2faRequired,
  });
}

class WeChatLoginResult {
  final SupernodeTokenDetails token;
  final bool isBindingRequired;

  WeChatLoginResult({
    required this.token,
    required this.isBindingRequired,
  });
}

class SupernodeTokenDetails {
  final String userId;
  final String username;
  final String source;

  SupernodeTokenDetails(
    this.userId,
    this.username,
    this.source,
  );
}

class ProfileResult {
  final User user;
  final List<UserOrganization> organizations;
  final List<ExternalAccount> externalAccounts;
  final UserOrganization? currentOrganization;

  ProfileResult({
    required this.user,
    required this.organizations,
    required this.externalAccounts,
    required this.currentOrganization,
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

class UserOrganization implements Organization {
  @override
  final String name;

  @override
  final String displayName;

  final String organizationId;
  final bool isUserAdmin;
  final bool isUserDeviceAdmin;
  final bool isUserGatewayAdmin;
  final DateTime createdAt;
  final DateTime? updatedAt;

  UserOrganization({
    required this.organizationId,
    required this.name,
    required this.displayName,
    required this.isUserAdmin,
    required this.isUserDeviceAdmin,
    required this.isUserGatewayAdmin,
    required this.createdAt,
    required this.updatedAt,
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
