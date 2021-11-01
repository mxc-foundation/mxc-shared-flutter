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
    return [
      Gateway(
        id: "DemoId1",
        createdAt: DateTime.now().add(Duration(days: -2)),
        description: "DemoDescription1",
        firstSeenAt: DateTime.now().add(Duration(days: -2)),
        lastSeenAt: DateTime.now(),
        updatedAt: DateTime.now(),
        location: Location(0.0, 0.0),
        name: "DemoName1",
        networkServerID: "DemoNetworkServerId1",
        organizationID: "DemoOrgID1",
        reseller: false,
      ),
      Gateway(
        id: "DemoId2",
        createdAt: DateTime.now().add(Duration(days: -1)),
        description: "DemoDescription2",
        firstSeenAt: DateTime.now().add(Duration(days: -1)),
        lastSeenAt: DateTime.now(),
        updatedAt: DateTime.now(),
        location: Location(0.0, 0.0),
        name: "DemoName2",
        networkServerID: "DemoNetworkServerId2",
        organizationID: "DemoOrgID2",
        reseller: false,
      ),
      Gateway(
        id: "DemoId3",
        createdAt: DateTime.now(),
        description: "DemoDescription3",
        firstSeenAt: DateTime.now(),
        lastSeenAt: DateTime.now(),
        updatedAt: DateTime.now(),
        location: Location(0.0, 0.0),
        name: "DemoName3",
        networkServerID: "DemoNetworkServerId3",
        organizationID: "DemoOrgID3",
        reseller: false,
      )
    ].withTotal(3);
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
    return GatewayRegisterResult(status: "DemoGatewayRegisterStatus");
  }

  @override
  Future<GatewayRegisterResult> registerReseller({
    required String serialNumber,
    String? orgId,
  }) async {
    return GatewayRegisterResult(status: "DemoGatewayRegisterResellerStatus");
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
        id: "DemoId1",
        createdAt: DateTime.now().add(Duration(days: -2)),
        updatedAt: DateTime.now().add(Duration(days: -2)),
        name: "DemoName1",
        networkServerID: "DemoNetworkServerId1",
        networkServerName: "DemoNetworkName1",
      ),
      GatewayProfile(
        id: "DemoId2",
        createdAt: DateTime.now().add(Duration(days: -1)),
        updatedAt: DateTime.now().add(Duration(days: -1)),
        name: "DemoName2",
        networkServerID: "DemoNetworkServerId2",
        networkServerName: "DemoNetworkName2",
      ),
      GatewayProfile(
        id: "DemoId3",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        name: "DemoName3",
        networkServerID: "DemoNetworkServerId3",
        networkServerName: "DemoNetworkName3",
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
        timestamp: DateTime.now().add(Duration(days: -2)),
      ),
      GatewayStatisticFrame(
        txPacketsEmitted: 300,
        txPacketsReceived: 400,
        rxPacketsReceivedOK: 200,
        timestamp: DateTime.now().add(Duration(days: -1)),
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
        id: "DemoId1",
        ageSeconds: 1,
        health: 99,
        miningFuel: "100".toDecimal(),
        miningFuelHealth: 100,
        miningFuelMax: "100".toDecimal(),
        totalMined: "100".toDecimal(),
        uptimeHealth: 100,
      ),
      GatewayHealth(
        id: "DemoId2",
        ageSeconds: 1,
        health: 99,
        miningFuel: "100".toDecimal(),
        miningFuelHealth: 100,
        miningFuelMax: "100".toDecimal(),
        totalMined: "100".toDecimal(),
        uptimeHealth: 100,
      ),
      GatewayHealth(
        id: "DemoId3",
        ageSeconds: 1,
        health: 99,
        miningFuel: "100".toDecimal(),
        miningFuelHealth: 100,
        miningFuelMax: "100".toDecimal(),
        totalMined: "100".toDecimal(),
        uptimeHealth: 100,
      ),
    ];

    final gatewayAvgHealth = GatewayAverageHealth(
      miningFuelHealth: 0.99,
      uptimeHealth: 0.88,
      health: 0.98,
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
          amount: "100".toDecimal(),
          date: DateTime.now().add(Duration(days: -2)),
          health: 100,
          onlineSeconds: 100,
        ),
        GatewayDailyMiningIncome(
          amount: "200".toDecimal(),
          date: DateTime.now().add(Duration(days: -1)),
          health: 200,
          onlineSeconds: 200,
        ),
        GatewayDailyMiningIncome(
          amount: "300".toDecimal(),
          date: DateTime.now(),
          health: 300,
          onlineSeconds: 300,
        ),
      ],
      totalAmount: "3".toDecimal(),
    );
  }
}
