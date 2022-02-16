import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/api/supernode_list_api.dart';
import 'package:mxc_logic/src/data/data.dart';

class ApiSupernodeRepository implements SupernodeRepository {
  ApiSupernodeRepository({
    required SupernodeSetupStore setupStore,
  })  : _setupStore = setupStore,
        _client = SupernodeClient(
          getSupernodeAddress: () =>
              setupStore.supernodeAddress ??
              (throw Exception('Supernode address has not been picked')),
          getDefaultOrganizationId: () => setupStore.organizationId,
          getToken: () => setupStore.token,
        );

  ApiSupernodeRepository.withClient({
    required SupernodeClient client,
    required SupernodeSetupStore setupStore,
  })  : _client = client,
        _setupStore = setupStore;

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
  LoginRepository get auth => LoginRepository(
        client: _client,
        userRepository: user,
      );

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

  @override
  void logOut() {
    _setupStore.username = null;
    _setupStore.token = null;
  }

  @override
  bool get loggedIn => _setupStore.username != null;
}
