import 'package:mxc_logic/mxc_logic.dart';

class DemoGatewaysRepository implements GatewayRepository {
  DemoGatewaysRepository();

  @override
  Future<ListWithTotal<Gateway>> list({
    String? search,
    int? limit,
    int? offset,
    required String organizationId,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<List<Location>> locations() async {
    throw UnimplementedError();
  }

  @override
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
    throw UnimplementedError();
  }

  @override
  Future<GatewayRegisterResult> register({
    required String serialNumber,
    required String orgId,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<GatewayRegisterResult> registerReseller({
    required String serialNumber,
    required String orgId,
  }) async {
    throw UnimplementedError();
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
        id: "profileId1",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        name: "(OTAA_1.0.0) Device profile name",
        networkServerID: "networkServerID1",
        networkServerName: "networkServerName1",
      ),
      GatewayProfile(
        id: "profileId2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        name: "(OTAA_1.0.0) Device profile name",
        networkServerID: "networkServerID1",
        networkServerName: "networkServerName1",
      ),
      GatewayProfile(
        id: "profileId3",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        name: "(ABP_1.0.0) Device profile name",
        networkServerID: "networkServerID3",
        networkServerName: "networkServerName3",
      ),
      GatewayProfile(
        id: "profileId4",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        name: "(ABP_1.1.0) Device profile name",
        networkServerID: "networkServerID4",
        networkServerName: "networkServerName4",
      ),
    ].withTotal(4);
  }

  @override
  Future<List<GatewayStatisticFrame>> statistic(
    String gatewayId, {
    required FramesInterval interval,
    DateTime? startTimestamp,
    DateTime? endTimestamp,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<GatewayHealthSummary> health({
    required String orgId,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<GatewayMiningIncomeSummary> miningIncome({
    required String gatewayMac,
    required String orgId,
    DateTime? fromDate,
    DateTime? tillDate,
  }) async {
    throw UnimplementedError();
  }
}
