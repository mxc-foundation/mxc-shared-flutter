import 'package:mxc_logic/mxc_logic.dart';

import 'api/demo/auth.dart';
import 'api/demo/device.dart';
import 'api/demo/dhx.dart';
import 'api/demo/external_accounts.dart';
import 'api/demo/gateway.dart';
import 'api/demo/network_server.dart';
import 'api/demo/organization.dart';
import 'api/demo/registration.dart';
import 'api/demo/report.dart';
import 'api/demo/stake.dart';
import 'api/demo/topup.dart';
import 'api/demo/totp.dart';
import 'api/demo/user.dart';
import 'api/demo/wallet.dart';
import 'api/demo/withdraw.dart';

class DemoSupernodeRepository implements SupernodeRepository {
  const DemoSupernodeRepository();

  static const Supernode _supernode = Supernode(
    region: "Test",
    url: "https://lora.test.cloud.mxc.org",
    logo: "https://lora.test.cloud.mxc.org/branding.png",
    darkLogo: "https://lora.test.cloud.mxc.org/branding.png",
    status: "online",
    name: "Test",
  );

  @override
  DemoDhxRepository get dhx => const DemoDhxRepository();

  @override
  DemoGatewayRepository get gateways => const DemoGatewayRepository();

  @override
  DemoStakeRepository get stake => const DemoStakeRepository();

  @override
  DemoTopupRepository get topup => const DemoTopupRepository();

  @override
  DemoUserRepository get user => const DemoUserRepository();

  @override
  DemoWalletRepository get wallet => const DemoWalletRepository();

  @override
  DemoWithdrawRepository get withdraw => const DemoWithdrawRepository();

  @override
  DemoOrganizationRepository get organization =>
      const DemoOrganizationRepository();

  @override
  DemoNetworkServerRepository get networkServer =>
      const DemoNetworkServerRepository();

  @override
  DemoLoginRepository get auth => const DemoLoginRepository();

  @override
  DemoExternalAccountsRepository get externalAccounts =>
      const DemoExternalAccountsRepository();

  @override
  DemoRegistrationRepository get register => const DemoRegistrationRepository();

  @override
  DemoTotpRepository get totp => const DemoTotpRepository();

  @override
  DemoReportRepository get report => const DemoReportRepository();

  @override
  DemoDeviceRepository get device => const DemoDeviceRepository();

  @override
  Future<Map<String, List<Supernode>>> listSupernodes() async => {
        "MXCtest": [_supernode]
      };

  @override
  Future<Supernode> getSupernode() async => _supernode;

  @override
  void logOut() {
    throw UnimplementedError();
  }

  @override
  bool get loggedIn => true;
}
