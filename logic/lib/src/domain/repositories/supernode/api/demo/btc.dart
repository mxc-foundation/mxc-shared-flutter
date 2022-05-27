import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';

class DemoBtcRepository implements BtcRepository {
  const DemoBtcRepository();

  @override
  Future<List<BtcBondInfo>> btcListLocks() async {
    List<BtcBondInfo> res = [];

    for (int i = 0; i < 5; i++) {
      res.add(
        BtcUnbonded(
          amount: Decimal.parse('$i'),
          created: DateTime.now().subtract(Duration(days: i)),
          gatewayMac: 'DemoId$i',
          id: '$i',
          unlocked: DateTime.now().add(Duration(days: i + 5)),
          coolingOffEnds: DateTime.now().add(Duration(days: i)),
        ),
      );
    }

    for (int i = 0; i < 5; i++) {
      res.add(
        BtcBonded(
          amount: Decimal.parse('$i'),
          created: DateTime.now().subtract(Duration(days: i)),
          gatewayMac: 'DemoId$i',
          id: '$i',
          lockTill: DateTime.now().add(Duration(days: i + 2)),
          unlockFrom: DateTime.now().add(Duration(days: i)),
        ),
      );
    }

    return res;
  }

  @override
  Future<BtcMined> btcMined() async {
    List<GatewayMining> gatewayMinings = [];

    for (int i = 0; i < 5; i++) {
      gatewayMinings.add(
        GatewayMining(
          gatewayMac: 'DemoId$i',
          amount: Decimal.parse('$i'),
        ),
      );
    }

    return BtcMined(
        totalAmount: gatewayMinings.fold(Decimal.zero,
            (previousValue, element) => previousValue + element.amount),
        gatewayMining: gatewayMinings);
  }
}
