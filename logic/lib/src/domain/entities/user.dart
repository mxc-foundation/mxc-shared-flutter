import 'package:mxc_logic/mxc_logic.dart';

class RegistrationResult {
  RegistrationResult({
    required this.id,
    required this.isAdmin,
    required this.isActive,
    required this.token,
    required this.username,
  });

  final String id;
  final bool isAdmin;
  final bool isActive;
  final SupernodeTokenDetails token;
  final String username;
}

class LoginResult {
  LoginResult({
    required this.token,
    required this.is2faRequired,
  });

  final bool is2faRequired;
  final SupernodeTokenDetails token;
}

class WeChatLoginResult {
  WeChatLoginResult({
    required this.token,
    required this.isBindingRequired,
  });

  final SupernodeTokenDetails token;
  final bool isBindingRequired;
}

class SupernodeTokenDetails {
  SupernodeTokenDetails(
    this.userId,
    this.username,
    this.source,
  );

  final String userId;
  final String username;
  final String source;
}

class ProfileResult {
  ProfileResult({
    required this.user,
    required this.organizations,
    required this.externalAccounts,
    required this.currentOrganization,
  });

  final User user;
  final List<UserOrganization> organizations;
  final List<ExternalAccount> externalAccounts;
  final UserOrganization? currentOrganization;
}

class User {
  User({
    required this.email,
    required this.isActive,
    required this.isAdmin,
    required this.username,
  });

  final String email;
  final bool isActive;
  final bool isAdmin;
  final String username;
}

class UserOrganization implements Organization {
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
}

enum ExternalAccountType { wechat, shopify, unknown }

class ExternalAccount {
  ExternalAccount({
    required this.externalUserId,
    required this.externalUsername,
    required this.service,
  });

  final String externalUserId;
  final String externalUsername;
  final ExternalAccountType service;

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
