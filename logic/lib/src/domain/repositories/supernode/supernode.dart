import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/api/supernode_list_api.dart';
import 'package:mxc_logic/src/data/data.dart';

import 'demo_supernode.dart';

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

class MainSupernodeRepository implements SupernodeRepository {
  MainSupernodeRepository(this._client, this._setupStore);

  final SupernodeClient _client;
  final SupernodeSetupStore _setupStore;

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

  DemoSupernodeRepository get _demoRepository => DemoSupernodeRepository();
  MainSupernodeRepository get _mainRepository =>
      MainSupernodeRepository(_client, _setupStore);
  SupernodeRepository get _currentRepository =>
      _setupStore.token!.toLowerCase().contains("demo")
          ? _demoRepository
          : _mainRepository;

  @override
  DhxRepository get dhx => _currentRepository.dhx;

  @override
  GatewayRepository get gateways => _currentRepository.gateways;

  @override
  StakeRepository get stake => _currentRepository.stake;

  @override
  TopupRepository get topup => _currentRepository.topup;

  @override
  UserRepository get user => _currentRepository.user;

  @override
  WalletRepository get wallet => _currentRepository.wallet;

  @override
  WithdrawRepository get withdraw => _currentRepository.withdraw;

  @override
  OrganizationRepository get organization => _currentRepository.organization;

  @override
  NetworkServerRepository get networkServer => _currentRepository.networkServer;

  @override
  LoginRepository get auth => _currentRepository.auth;

  @override
  ExternalAccountsRepository get externalAccounts =>
      _currentRepository.externalAccounts;

  @override
  RegistrationRepository get register => _currentRepository.register;

  @override
  TotpRepository get totp => _currentRepository.totp;

  @override
  ReportRepository get report => _currentRepository.report;

  @override
  DeviceRepository get device => _currentRepository.device;

  @override
  Future<Map<String, List<Supernode>>> listSupernodes() =>
      _currentRepository.listSupernodes();

  @override
  Future<Supernode> getSupernode() => _currentRepository.getSupernode();
}
