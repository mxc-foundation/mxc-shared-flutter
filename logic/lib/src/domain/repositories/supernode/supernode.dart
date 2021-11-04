import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/api/supernode_list_api.dart';
import 'package:mxc_logic/src/data/data.dart';

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
  LoginRepository get auth;
  ExternalAccountsRepository get externalAccounts;
  TotpRepository get totp;
  RegistrationRepository get register;
  ReportRepository get report;
  DeviceRepository get device;
  Future<Map<String, List<Supernode>>> listSupernodes();

  Future<Supernode> getSupernode();
}

class ApiSupernodeRepository implements SupernodeRepository {
  final SupernodeSetupStore _setupStore;

  ApiSupernodeRepository({
    required SupernodeSetupStore setupStore,
    required TokenRefresher tokenRefresher,
  })  : _setupStore = setupStore,
        _client = SupernodeClient(
          getSupernodeAddress: () =>
              setupStore.supernodeAddress ??
              (throw Exception('Supernode address has not been picked')),
          getDefaultOrganizationId: () => setupStore.organizationId,
          getToken: () => setupStore.token,
          refreshToken: (client) => tokenRefresher.refresh(
            ApiSupernodeRepository.withClient(
              client: client,
              setupStore: setupStore,
            ),
          ),
        );

  ApiSupernodeRepository.withClient({
    required SupernodeClient client,
    required SupernodeSetupStore setupStore,
  })  : _client = client,
        _setupStore = setupStore;

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
  LoginRepository get auth => LoginRepository(_client);

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

  @override
  Future<Supernode> getSupernode() async {
    final api = SupernodeGithubApi(_client);
    final supernodes = await api.listSupernodes();
    return supernodes.values
        .reduce((a, b) => [...a, ...b])
        .firstWhere((e) => e.url == _setupStore.supernodeAddress);
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
