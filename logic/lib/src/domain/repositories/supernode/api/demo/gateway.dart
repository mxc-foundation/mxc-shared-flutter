import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoGatewayRepository implements GatewayRepository {
  const DemoGatewayRepository();

  @override
  Future<ListWithTotal<Gateway>> list({
    String? search,
    int? limit,
    int? offset,
    String? organizationId,
  }) async {
    const total = 40;
    offset ??= 0;
    limit ??= total;
    await Future<void>.delayed(const Duration(seconds: 3));
    return [
      for (var i = offset; i < min(offset + limit, total); i++)
        Gateway(
          id: 'DemoId$i',
          createdAt: DateTime.now().add(Duration(days: -i)),
          description: 'DemoDescription$i',
          firstSeenAt: DateTime.now().add(Duration(days: -i)),
          lastSeenAt: DateTime.now(),
          updatedAt: DateTime.now(),
          location: Location(0.0, 0.0),
          name: 'DemoName$i',
          networkServerID: 'DemoNetworkServerId$i',
          organizationID: 'DemoOrgID$i',
          reseller: false,
        ),
    ].withTotal(total);
  }

  @override
  Future<List<Location>> locations() async {
    return [
      Location(0.0, 0.0),
      Location(0.0, 0.1),
      Location(0.0, 0.2),
    ];
  }

  @override
  Future<void> add({
    required String id,
    required String name,
    required String description,
    required double altitude,
    required bool discoveryEnabled,
    required String networkServerId,
    required String? profileId,
    String? orgId,
  }) =>
      throw UnimplementedError();

  @override
  Future<GatewayRegisterResult> register({
    required String serialNumber,
    String? orgId,
  }) async {
    return GatewayRegisterResult(status: 'DemoGatewayRegisterStatus');
  }

  @override
  Future<List<GatewayProfile>> profiles({
    required String networkServerId,
    String? search,
    int? limit,
    int? offset,
  }) async {
    return [
      GatewayProfile(
        id: 'DemoId1',
        createdAt: DateTime.now().add(const Duration(days: -2)),
        updatedAt: DateTime.now().add(const Duration(days: -2)),
        name: 'DemoName1',
        networkServerID: 'DemoNetworkServerId1',
        networkServerName: 'DemoNetworkName1',
      ),
      GatewayProfile(
        id: 'DemoId2',
        createdAt: DateTime.now().add(const Duration(days: -1)),
        updatedAt: DateTime.now().add(const Duration(days: -1)),
        name: 'DemoName2',
        networkServerID: 'DemoNetworkServerId2',
        networkServerName: 'DemoNetworkName2',
      ),
      GatewayProfile(
        id: 'DemoId3',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        name: 'DemoName3',
        networkServerID: 'DemoNetworkServerId3',
        networkServerName: 'DemoNetworkName3',
      ),
    ];
  }

  @override
  Future<List<GatewayStatisticFrame>> statistic(
    String gatewayId, {
    required FramesInterval interval,
    DateTime? startTimestamp,
    DateTime? endTimestamp,
  }) async {
    return [
      GatewayStatisticFrame(
        txPacketsEmitted: 100,
        txPacketsReceived: 200,
        rxPacketsReceivedOK: 200,
        timestamp: DateTime.now().add(const Duration(days: -2)),
      ),
      GatewayStatisticFrame(
        txPacketsEmitted: 300,
        txPacketsReceived: 400,
        rxPacketsReceivedOK: 200,
        timestamp: DateTime.now().add(const Duration(days: -1)),
      ),
      GatewayStatisticFrame(
        txPacketsEmitted: 500,
        txPacketsReceived: 600,
        rxPacketsReceivedOK: 200,
        timestamp: DateTime.now(),
      ),
    ];
  }

  @override
  Future<void> delete(String id) => throw UnimplementedError();

  @override
  Future<GatewayHealthSummary> health({
    String? orgId,
  }) async {
    final gatewayHealths = [
      GatewayHealth(
        id: 'DemoId1',
        ageSeconds: 1,
        health: 99,
        miningFuel: '100'.toDecimal(),
        miningFuelHealth: 100,
        miningFuelMax: '100'.toDecimal(),
        totalMined: '100'.toDecimal(),
        uptimeHealth: 100,
        proximityFactor: 0,
        btcRing: 0.6,
        mxcRing: 0.6,
        dhxRing: 0.6,
      ),
      GatewayHealth(
        id: 'DemoId2',
        ageSeconds: 1,
        health: 99,
        miningFuel: '100'.toDecimal(),
        miningFuelHealth: 100,
        miningFuelMax: '100'.toDecimal(),
        totalMined: '100'.toDecimal(),
        uptimeHealth: 100,
        proximityFactor: 0,
        btcRing: 0.6,
        mxcRing: 0.6,
        dhxRing: 0.6,
      ),
      GatewayHealth(
        id: 'DemoId3',
        ageSeconds: 1,
        health: 99,
        miningFuel: '100'.toDecimal(),
        miningFuelHealth: 100,
        miningFuelMax: '100'.toDecimal(),
        totalMined: '100'.toDecimal(),
        uptimeHealth: 100,
        proximityFactor: 0,
        btcRing: 0.6,
        mxcRing: 0.6,
        dhxRing: 0.6,
      ),
      GatewayHealth(
        id: 'DemoId15',
        ageSeconds: 1,
        health: Random().nextDouble(),
        miningFuel: '100'.toDecimal(),
        miningFuelHealth: 100,
        miningFuelMax: '100'.toDecimal(),
        totalMined: '100'.toDecimal(),
        uptimeHealth: 100,
        proximityFactor: 0,
        btcRing: 0.6,
        mxcRing: 0.6,
        dhxRing: 0.6,
      ),
    ];

    final gatewayAvgHealth = GatewayAverageHealth(
      miningFuelHealth: 0.99,
      uptimeHealth: 0.88,
      health: 0.98,
      btcRing: 0.6,
      mxcRing: 0.6,
      dhxRing: 0.6,
    );
    var totalFuel = Decimal.zero;
    for (final health in gatewayHealths) {
      totalFuel += health.miningFuel;
    }
    return GatewayHealthSummary(
      gatewayHealths: gatewayHealths,
      average: gatewayAvgHealth,
      totalFueled: totalFuel,
    );
  }

  @override
  Future<GatewayMiningIncomeSummary> miningIncome({
    required String gatewayMac,
    String? orgId,
    DateTime? fromDate,
    DateTime? tillDate,
  }) async {
    return GatewayMiningIncomeSummary(
      daily: [
        GatewayDailyMiningIncome(
          amount: '100'.toDecimal(),
          date: DateTime.now().add(const Duration(days: -2)),
          health: 100,
          onlineSeconds: 100,
        ),
        GatewayDailyMiningIncome(
          amount: '200'.toDecimal(),
          date: DateTime.now().add(const Duration(days: -1)),
          health: 200,
          onlineSeconds: 200,
        ),
        GatewayDailyMiningIncome(
          amount: '300'.toDecimal(),
          date: DateTime.now(),
          health: 300,
          onlineSeconds: 300,
        ),
      ],
      totalAmount: '3'.toDecimal(),
    );
  }
}
