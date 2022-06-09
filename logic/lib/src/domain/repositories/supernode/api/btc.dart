import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class BtcRepository {
  BtcRepository(this._client);

  final SupernodeClient _client;

  Future<List<BtcBondInfo>> btcListLocks() async {
    final res = await _client.bTCMining
        .bTCListLocks(orgId: _client.defaultOrganizationId);

    final list = res.body!.lock!;

    final resList = list.map((btcLock) {
      return btcLock.unlocked != null
          ? BtcUnbonded(
              id: btcLock.id!,
              created: btcLock.created!,
              amount: btcLock.amount!.toDecimal(),
              gatewayMac: btcLock.gatewayMac!,
              unlocked: btcLock.unlocked!,
              coolingOffEnds: btcLock.coolingOffEnds!,
            )
          : BtcBonded(
              id: btcLock.id!,
              created: btcLock.created!,
              amount: btcLock.amount!.toDecimal(),
              gatewayMac: btcLock.gatewayMac!,
              unlockFrom: btcLock.unlockFrom!,
              lockTill: btcLock.lockTill!,
            );
    }).toList();

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

  Future<void> lock({
    required Decimal amount,
    required String gatewayMac,
  }) async {
    final res = await _client.bTCMining.bTCLock(
      body: ExtapiBTCLockRequest(
        amount: amount.toString(),
        gatewayMac: gatewayMac,
        orgId: _client.defaultOrganizationId,
      ),
    );
    assert(res.body?.lockId != null);
  }

  Future<void> unlock({
    required String lockId,
  }) async {
    await _client.bTCMining.bTCUnlock(
      body: ExtapiBTCUnlockRequest(
        lockId: lockId,
        orgId: _client.defaultOrganizationId,
      ),
    );
  }
}
