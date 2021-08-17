import 'package:mxc_logic/src/data/data.dart';

import 'api/dhx.dart';
import 'api/gateway.dart';
import 'api/network_server.dart';
import 'api/organization.dart';
import 'api/stake.dart';
import 'api/topup.dart';
import 'api/wallet.dart';
import 'api/withdraw.dart';

export 'api/dhx.dart';
export 'api/gateway.dart';
export 'api/network_server.dart';
export 'api/organization.dart';
export 'api/stake.dart';
export 'api/topup.dart';
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

  void changeSupernode();
}

class ApiSupernodeRepository implements SupernodeRepository {
  ApiSupernodeRepository({
    required String Function() getSupernodeAddress,
  }) : _client = SupernodeClient(getSupernodeAddress: getSupernodeAddress);

  final SupernodeClient _client;

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
  NetworkServerRepository get networkServer =>
      NetworkServerRepository(_client!);
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
