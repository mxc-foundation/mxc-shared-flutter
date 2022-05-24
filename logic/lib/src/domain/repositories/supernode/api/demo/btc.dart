import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';

class DemoBtcRepository implements BtcRepository{
  const DemoBtcRepository();

  Future<List<BtcBondInfo>> btcListLocks() async {
    return [
      BtcUnbonded(
        amount: Decimal.parse('222'),
        created: DateTime.parse('2022-05-10T13:26:01.923Z'),
        gatewayMac: 'DemoId5',
        id: '5',
        unlocked: DateTime.parse('2022-05-23T13:26:01.923Z'),
        coolingOffEnds: DateTime.parse('2022-05-22T13:26:01.923Z'),
      ),
      BtcUnbonded(
        amount: Decimal.parse('222'),
        created: DateTime.parse('2022-05-10T13:26:01.923Z'),
        gatewayMac: 'cc4f5cfffe2029ef',
        id: '4',
        unlocked: DateTime.parse('2022-05-23T13:26:01.923Z'),
        coolingOffEnds: DateTime.parse('2022-05-22T13:26:01.923Z'),
      ),
      BtcBonded(
        amount: Decimal.parse('222'),
        created: DateTime.parse('2022-05-15T13:26:01.923Z'),
        gatewayMac: 'cc4f5cfffe2029ef',
        id: '1',
        lockTill: DateTime.parse('2022-05-30T13:26:01.923Z'),
        unlockFrom: DateTime.parse('2022-05-28T13:26:01.923Z'),
      ),
    ];
  }
}
