import 'package:mxc_logic/mxc_logic.dart';
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

  bool get loggedIn;
  void logOut();
}

/// This supernode repository gives you access to [ApiSupernodeRepository] or [DemoSupernodeRepository]
/// depending on [demoMode] field.
class SupernodeRepositoryDemoDecorator implements SupernodeRepository {
  SupernodeRepositoryDemoDecorator({required SupernodeSetupStore setupStore})
      : _apiRepository = ApiSupernodeRepository(setupStore: setupStore);

  final ApiSupernodeRepository _apiRepository;

  final DemoSupernodeRepository _demoRepository =
      const DemoSupernodeRepository();

  bool demoMode = false;

  SupernodeRepository get _currentRepository =>
      demoMode ? _demoRepository : _apiRepository;

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

  @override
  Future<void> logOut() async {
    if (demoMode) {
      demoMode = false;
    } else {
      await _apiRepository.logOut();
    }
  }

  @override
  bool get loggedIn => _currentRepository.loggedIn;
}
