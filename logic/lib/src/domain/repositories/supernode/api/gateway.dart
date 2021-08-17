import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class GatewayRepository {
  final ChopperClient _client;

  GatewayRepository(this._client);

  Future<ListWithTotal<Gateway>> list({
    String? search,
    int? limit,
    int? offset,
    required String organizationId,
  }) async {
    final res = await _client.gatewayService.list(
      search: search,
      limit: limit,
      offset: offset,
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
    required String orgId,
    required bool discoveryEnabled,
    required String networkServerId,
    required String profileId,
  }) async {
    await _client.gatewayService.create(
      body: ExtapiCreateGatewayRequest(
        gateway: ExtapiGateway(
          id: id,
          name: name,
          description: description,
          organizationID: orgId,
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
    required String orgId,
  }) async {
    final res = await _client.gatewayService.register(
      body: ExtapiRegisterRequest(
        organizationId: orgId,
        sn: serialNumber,
      ),
    );
    return GatewayRegisterResult(status: res.body!.status!);
  }

  Future<GatewayRegisterResult> registerReseller({
    required String serialNumber,
    required String orgId,
  }) async {
    final res = await _client.gatewayService.registerReseller(
      body: ExtapiRegisterResellerRequest(
        organizationId: orgId,
        manufacturerNr: serialNumber,
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
      limit: limit?.toString(),
      offset: offset?.toString(),
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
    required String orgId,
  }) async {
    final res =
        await _client.walletService.getGatewayMiningHealth(orgId: orgId);
    final gatewayHealths = res.body!.gatewayHealth!
        .map(
          (e) => GatewayHealth(
            id: e.id!,
            ageSeconds: e.ageSeconds.toInt(),
            health: e.health.orDefault(),
            miningFuel: e.miningFuel.toDecimal(),
            miningFuelHealth: e.miningFuelHealth.orDefault(),
            miningFuelMax: e.miningFuelMax.toDecimal(),
            totalMined: e.totalMined.toDecimal(),
            uptimeHealth: e.uptimeHealth.orDefault(),
          ),
        )
        .toList();
    final gatewayAvgHealth = GatewayAverageHealth(
      miningFuelHealth:
          res.body!.miningHealthAverage!.miningFuelHealth.orDefault(),
      uptimeHealth: res.body!.miningHealthAverage!.uptimeHealth.orDefault(),
      health: res.body!.miningHealthAverage!.overall.orDefault(),
    );
    return GatewayHealthSummary(
      gatewayHealths: gatewayHealths,
      average: gatewayAvgHealth,
    );
  }

  Future<GatewayMiningIncomeSummary> miningIncome({
    required String gatewayMac,
    required String orgId,
    DateTime? fromDate,
    DateTime? tillDate,
  }) async {
    final res = await _client.walletService.getGatewayMiningIncome(
      gatewayMac: gatewayMac,
      orgId: orgId,
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
