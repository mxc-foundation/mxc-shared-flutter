import 'package:chopper/chopper.dart';
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
  ApiSupernodeRepository();

  ChopperClient? _client;

  static ChopperClient _createClient(String baseUrl) {
    return createClient(baseUrl);
  }

  void changeSupernode() {
    _client = _createClient(baseUrl);
  }

  @override
  DhxRepository get dhx => DhxRepository(_client!);

  @override
  GatewayRepository get gateways => GatewayRepository(_client!);

  @override
  StakeRepository get stake => StakeRepository(_client!);

  @override
  TopupRepository get topup => TopupRepository(_client!);

  @override
  UserRepository get user => UserRepository(_client!);

  @override
  WalletRepository get wallet => WalletRepository(_client!);

  @override
  WithdrawRepository get withdraw => WithdrawRepository(_client!);

  @override
  OrganizationRepository get organization => OrganizationRepository(_client!);

  @override
  NetworkServerRepository get networkServer =>
      NetworkServerRepository(_client!);
}

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

class SupernodeRepository implements SupernodeDaoHolder {
  SupernodeDemoDao get demo => SupernodeDemoDao(client);
  SupernodeMainDao get main => SupernodeMainDao(client);

  final AppCubit appCubit;
  final SupernodeCubit supernodeCubit;
  final SupernodeHttpClient client;

  factory SupernodeRepository({
    AppCubit appCubit,
    SupernodeCubit supernodeCubit,
  }) {
    final dio = Dio();
    final headersInterceptor = SupernodeHeadersInterceptor(
      getToken: () => supernodeCubit.state?.session?.token,
      getExpiration: () => supernodeCubit.state?.session?.expire,
      onLogOut: () => supernodeCubit.logout(),
      onTokenRefresh: (dio) => _refreshToken(dio, supernodeCubit),
      dio: dio,
    );
    final client = SupernodeHttpClient(
      getSupernode: () => supernodeCubit.state?.selectedNode,
      headersInterceptor: headersInterceptor,
      errorInterceptor: SupernodeErrorInterceptor(),
    );

    return SupernodeRepository._(appCubit, supernodeCubit, client);
  }

  SupernodeRepository._(this.appCubit, this.supernodeCubit, this.client);

  static SharedHttpClient _sharedClient([Dio dio]) =>
      SharedHttpClient(dio: dio);

  static Future<String> _refreshToken(
      Dio dio, SupernodeCubit supernodeCubit) async {
    final userInfo = supernodeCubit.state?.session;
    final node = supernodeCubit.state?.selectedNode;
    if (userInfo == null ||
        userInfo.username == null ||
        userInfo.password == null ||
        node == null) return null;
    final username = userInfo.username;
    final password = userInfo.password;
    final client = SupernodeHttpClient(
      errorInterceptor: null,
      headersInterceptor: null,
      getSupernode: () => node,
    );
    try {
      final res = await UserDao(client).login(username, password);
      supernodeCubit.setSupernodeToken(res.jwt);
      return res.jwt;
    } finally {
      client.dispose();
    }
  }

  Future<Map<String, Supernode>> loadSupernodes() {
    return SuperNodeGithubDao(_sharedClient()).superNodes();
  }

  SupernodeDaoHolder get _currentHolder => appCubit.state.isDemo ? demo : main;

  @override
  DhxDao get dhx => _currentHolder.dhx;

  @override
  GatewaysDao get gateways => _currentHolder.gateways;

  @override
  StakeDao get stake => _currentHolder.stake;

  @override
  TopupDao get topup => _currentHolder.topup;

  @override
  UserDao get user => _currentHolder.user;

  @override
  WalletDao get wallet => _currentHolder.wallet;

  @override
  WithdrawDao get withdraw => _currentHolder.withdraw;

  @override
  GatewaysLocationDao get gatewaysLocation => _currentHolder.gatewaysLocation;

  @override
  OrganizationDao get organization => _currentHolder.organization;

  @override
  NetworkServerDao get networkServer => _currentHolder.networkServer;

  @override
  ServerInfoDao get serverInfo => _currentHolder.serverInfo;
}
