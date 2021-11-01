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
  DemoSupernodeRepository();

  final Supernode _supernode = Supernode(
    region: "Test",
    url: "https://lora.test.cloud.mxc.org",
    logo: "https://lora.test.cloud.mxc.org/branding.png",
    darkLogo: "https://lora.test.cloud.mxc.org/branding.png",
    status: "online",
    name: "Test",
  );

  @override
  DemoDhxRepository get dhx => DemoDhxRepository();

  @override
  DemoGatewayRepository get gateways => DemoGatewayRepository();

  @override
  DemoStakeRepository get stake => DemoStakeRepository();

  @override
  DemoTopupRepository get topup => DemoTopupRepository();

  @override
  DemoUserRepository get user => DemoUserRepository();

  @override
  DemoWalletRepository get wallet => DemoWalletRepository();

  @override
  DemoWithdrawRepository get withdraw => DemoWithdrawRepository();

  @override
  DemoOrganizationRepository get organization => DemoOrganizationRepository();

  @override
  DemoNetworkServerRepository get networkServer =>
      DemoNetworkServerRepository();

  @override
  DemoLoginRepository get auth => DemoLoginRepository();

  @override
  DemoExternalAccountsRepository get externalAccounts =>
      DemoExternalAccountsRepository();

  @override
  DemoRegistrationRepository get register => DemoRegistrationRepository();

  @override
  DemoTotpRepository get totp => DemoTotpRepository();

  @override
  DemoReportRepository get report => DemoReportRepository();

  @override
  DemoDeviceRepository get device => DemoDeviceRepository();

  @override
  Future<Map<String, List<Supernode>>> listSupernodes() async => {
        "MXCtest": [_supernode]
      };

  @override
  Future<Supernode> getSupernode() async => _supernode;
}
