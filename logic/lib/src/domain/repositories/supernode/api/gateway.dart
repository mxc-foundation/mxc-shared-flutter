import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class GatewayRepository {
  GatewayRepository(this._client);

  final SupernodeClient _client;

  Future<ListWithTotal<Gateway>> list({
    String? search,
    int? limit,
    int? offset,
    String? organizationId,
  }) async {
    organizationId ??= _client.defaultOrganizationId;
    final res = await _client.gatewayService.list(
      search: search,
      organizationID: organizationId,
    );
    return res.body!.result!
        .map(
          (e) => Gateway(
            id: e.id!,
            createdAt: e.createdAt!,
            description: e.description.orDefault(),
            firstSeenAt: e.firstSeenAt,
            lastSeenAt: e.lastSeenAt,
            updatedAt: e.updatedAt,
            location: e.location.toDomain(),
            name: e.name.orDefault(),
            networkServerID: e.networkServerID!,
            organizationID: e.organizationID!,
            reseller: e.organizationID != organizationId,
          ),
        )
        .toList()
        .withTotal(res.body!.totalCount.toInt());
  }

  Future<List<Location>> locations() async {
    final res = await _client.gatewayService.listLocations();
    return res.body!.result!
        .map((e) => Location(e.location!.latitude!, e.location!.longitude!))
        .toList();
  }

  Future<void> add({
    required String id,
    required String name,
    required String description,
    required double altitude,
    required bool discoveryEnabled,
    required String networkServerId,
    required String? profileId,
    String? orgId,
  }) async {
    await _client.gatewayService.create(
      body: ExtapiCreateGatewayRequest(
        gateway: ExtapiGateway(
          id: id,
          name: name,
          description: description,
          organizationID: orgId ?? _client.defaultOrganizationId,
          discoveryEnabled: discoveryEnabled,
          networkServerID: networkServerId,
          gatewayProfileID: profileId,
          location: CommonLocation(
            accuracy: 0,
            altitude: altitude,
            latitude: 0,
            longitude: 0,
            source: CommonLocationSource.unknown,
          ),
        ),
      ),
    );
  }

  Future<GatewayRegisterResult> register({
    required String serialNumber,
    String? orgId,
  }) async {
    final res = await _client.gatewayService.register(
      body: ExtapiRegisterRequest(
        organizationId: orgId ?? _client.defaultOrganizationId,
        sn: serialNumber,
      ),
    );
    return GatewayRegisterResult(status: res.body!.status!);
  }

  Future<List<GatewayProfile>> profiles({
    required String networkServerId,
    String? search,
    int? limit,
    int? offset,
  }) async {
    final res = await _client.gatewayProfileService.list(
      networkServerID: networkServerId,
      limit: (limit ?? Values.intMax).toString(),
      offset: (offset ?? 0).toString(),
    );
    return res.body!.result!
        .map(
          (e) => GatewayProfile(
            id: e.id!,
            createdAt: e.createdAt!,
            updatedAt: e.updatedAt,
            name: e.name.orDefault(),
            networkServerID: e.networkServerID!,
            networkServerName: e.networkServerName.orDefault(),
          ),
        )
        .toList();
  }

  Future<List<GatewayStatisticFrame>> statistic(
    String gatewayId, {
    required FramesInterval interval,
    DateTime? startTimestamp,
    DateTime? endTimestamp,
  }) async {
    final res = await _client.gatewayService.getStats(
      gatewayID: gatewayId,
      endTimestamp: endTimestamp?.toData(),
      startTimestamp: startTimestamp?.toData(),
      interval: interval.toData(),
    );
    return res.body!.result!
        .map(
          (e) => GatewayStatisticFrame(
            txPacketsEmitted: e.txPacketsEmitted!,
            txPacketsReceived: e.txPacketsReceived!,
            rxPacketsReceivedOK: e.rxPacketsReceivedOK!,
            timestamp: e.timestamp!,
          ),
        )
        .toList();
  }

  Future<void> delete(String id) async {
    await _client.gatewayService.delete(id: id);
  }

  Future<GatewayHealthSummary> health({
    String? orgId,
  }) async {
    final res = await _client.walletService.getGatewayMiningHealth(
      orgId: orgId ?? _client.defaultOrganizationId,
    );

    final gatewayHealths = <GatewayHealth>[];
    double mxcRingValue = 0;
    double dhxRingValue = 0;
    double btcRingValue = 0;
    for (final e in res.body!.gatewayHealth!) {
      gatewayHealths.add(GatewayHealth(
        id: e.id!,
        ageSeconds: e.ageSeconds.toInt(),
        health: e.health.orDefault(),
        miningFuel: e.miningFuel.toDecimal(),
        miningFuelHealth: e.miningFuelHealth.orDefault(),
        miningFuelMax: e.miningFuelMax.toDecimal(),
        totalMined: e.totalMined.toDecimal(),
        uptimeHealth: e.uptimeHealth.orDefault(),
        proximityFactor: e.proximityFactor.orDefault(),
        btcRing: e.btcRing.orDefault(),
        dhxRing: e.dhxRing.orDefault(),
        mxcRing: e.mxcRing.orDefault(),
      ));
      mxcRingValue += e.mxcRing.orDefault();
      dhxRingValue += e.dhxRing.orDefault();
      btcRingValue += e.btcRing.orDefault();
    }
    if (gatewayHealths.isNotEmpty) {
      mxcRingValue /= gatewayHealths.length;
      dhxRingValue /= gatewayHealths.length;
      btcRingValue /= gatewayHealths.length;
    }

    final gatewayAvgHealth = GatewayAverageHealth(
      miningFuelHealth:
          res.body!.miningHealthAverage!.miningFuelHealth.orDefault(),
      uptimeHealth: res.body!.miningHealthAverage!.uptimeHealth.orDefault(),
      health: res.body!.miningHealthAverage!.overall.orDefault(),
      mxcRing: mxcRingValue,
      dhxRing: dhxRingValue,
      btcRing: btcRingValue,
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

  Future<GatewayMiningIncomeSummary> miningIncome({
    required String gatewayMac,
    String? orgId,
    DateTime? fromDate,
    DateTime? tillDate,
  }) async {
    final res = await _client.walletService.getGatewayMiningIncome(
      gatewayMac: gatewayMac,
      orgId: orgId ?? _client.defaultOrganizationId,
      fromDate: fromDate?.toData(),
      tillDate: tillDate?.toData(),
    );
    return GatewayMiningIncomeSummary(
      daily: res.body!.dailyStats!
          .map(
            (e) => GatewayDailyMiningIncome(
              amount: e.amount.toDecimal(),
              date: e.date!,
              health: e.health.orDefault(),
              onlineSeconds: e.onlineSeconds.toInt(),
            ),
          )
          .toList(),
      totalAmount: res.body!.total.toDecimal(),
    );
  }
}
