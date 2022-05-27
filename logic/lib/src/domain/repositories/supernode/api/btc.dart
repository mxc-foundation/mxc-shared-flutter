import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class BtcRepository {
  BtcRepository(this._client);

  final SupernodeClient _client;

  Future<List<BtcBondInfo>> btcListLocks() async {
    final res = await _client.bTCMining
        .bTCListLocks(orgId: _client.defaultOrganizationId);

    final now = DateTime.now();
    final list = res.body!.lock!;

    final resList = list
        .map((e) => e.lockTill!.toLocal().isBefore(now)
            ? BtcBonded(
                id: e.id!,
                created: e.created!,
                amount: e.amount!.toDecimal(),
                gatewayMac: e.gatewayMac!,
                unlockFrom: e.unlockFrom!,
                lockTill: e.lockTill!,
              )
            : BtcUnbonded(
                id: e.id!,
                created: e.created!,
                amount: e.amount!.toDecimal(),
                gatewayMac: e.gatewayMac!,
                unlocked: e.unlocked!,
                coolingOffEnds: e.coolingOffEnds!,
              ))
        .toList();

    resList.sort((a, b) => b.id.compareTo(a.id));
    return resList;
  }

  Future<BtcMined> btcMined() async {
    final res =
        await _client.bTCMining.bTCMined(orgId: _client.defaultOrganizationId);

    return BtcMined(
      totalAmount: res.body!.totalAmount!.toDecimal(),
      gatewayMining: res.body!.gatewayMining!
          .map((e) => GatewayMining(
                gatewayMac: e.gatewayMac!,
                amount: e.amount!.toDecimal(),
              ))
          .toList(),
    );
  }
}
