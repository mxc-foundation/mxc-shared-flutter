import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/api/supernode_list_api.dart';
import 'package:mxc_logic/src/data/data.dart';

import 'api/auth.dart';
import 'api/device.dart';
import 'api/dhx.dart';
import 'api/external_accounts.dart';
import 'api/gateway.dart';
import 'api/network_server.dart';
import 'api/organization.dart';
import 'api/registration.dart';
import 'api/report.dart';
import 'api/stake.dart';
import 'api/topup.dart';
import 'api/totp.dart';
import 'api/user.dart';
import 'api/wallet.dart';
import 'api/withdraw.dart';
import 'common/supernode_setup.dart';
import 'common/token_refresher.dart';

export 'api/auth.dart';
export 'api/device.dart';
export 'api/dhx.dart';
export 'api/external_accounts.dart';
export 'api/gateway.dart';
export 'api/network_server.dart';
export 'api/organization.dart';
export 'api/registration.dart';
export 'api/report.dart';
export 'api/stake.dart';
export 'api/topup.dart';
export 'api/totp.dart';
export 'api/user.dart';
export 'api/wallet.dart';
export 'api/withdraw.dart';
export 'common/supernode_setup.dart';
export 'common/token_refresher.dart';

abstract class SupernodeRepository {
  WalletRepository get wallet;
  DhxRepository get dhx;
  GatewayRepository get gateways;
  StakeRepository get stake;
  TopupRepository get topup;
  UserRepository get user;
  WithdrawRepository get withdraw;
  OrganizationRepository get organization;
  NetworkServerRepository get networkServer;
  AuthenticationRepository get auth;
  ExternalAccountsRepository get externalAccounts;
  TotpRepository get totp;
  RegistrationRepository get register;
  ReportRepository get report;
  DeviceRepository get device;
  Future<Map<String, List<Supernode>>> listSupernodes();
}

class ApiSupernodeRepository implements SupernodeRepository {
  ApiSupernodeRepository({
    required SupernodeSetupRepository setupRepository,
    required TokenRefresher tokenRefresher,
  }) : _client = SupernodeClient(
          getSupernodeAddress: () =>
              setupRepository.supernodeAddress ??
              (throw Exception('Supernode address has not been picked')),
          getToken: () => setupRepository.token,
          refreshToken: (client) => tokenRefresher
              .refresh(ApiSupernodeRepository.withClient(client: client)),
        );

  ApiSupernodeRepository.withClient({
    required SupernodeClient client,
  }) : _client = client;

  late final SupernodeClient _client;

  @override
  DhxRepository get dhx => DhxRepository(_client);

  @override
  GatewayRepository get gateways => GatewayRepository(_client);

  @override
  StakeRepository get stake => StakeRepository(_client);

  @override
  TopupRepository get topup => TopupRepository(_client);

  @override
  UserRepository get user => UserRepository(_client);

  @override
  WalletRepository get wallet => WalletRepository(_client);

  @override
  WithdrawRepository get withdraw => WithdrawRepository(_client);

  @override
  OrganizationRepository get organization => OrganizationRepository(_client);

  @override
  NetworkServerRepository get networkServer => NetworkServerRepository(_client);

  @override
  AuthenticationRepository get auth => AuthenticationRepository(_client);

  @override
  ExternalAccountsRepository get externalAccounts =>
      ExternalAccountsRepository(_client);

  @override
  RegistrationRepository get register => RegistrationRepository(_client);

  @override
  TotpRepository get totp => TotpRepository(_client);

  @override
  ReportRepository get report => ReportRepository(_client);

  @override
  DeviceRepository get device => DeviceRepository(_client);

  @override
  Future<Map<String, List<Supernode>>> listSupernodes() {
    return SupernodeGithubApi(_client).listSupernodes();
  }
}

/*
class DemoSupernodeRepository implements SupernodeRepository {
  DemoSupernodeRepository();

  final ChopperClient _client;

  @override
  DemoDhxDao get dhx => DemoDhxDao();

  @override
  DemoGatewaysDao get gateways => DemoGatewaysDao();

  @override
  DemoStakeDao get stake => DemoStakeDao();

  @override
  DemoTopupDao get topup => DemoTopupDao();

  @override
  DemoUserDao get user => DemoUserDao();

  @override
  DemoWalletDao get wallet => DemoWalletDao();

  @override
  DemoWithdrawDao get withdraw => DemoWithdrawDao();

  @override
  DemoServerInfoDao get serverInfo => DemoServerInfoDao();

// No demo wrappers:
  @override
  GatewaysLocationDao get gatewaysLocation => GatewaysLocationDao(client);

  @override
  OrganizationDao get organization => OrganizationDao(client);

  @override
  NetworkServerDao get networkServer => NetworkServerDao(client);
}
*/
