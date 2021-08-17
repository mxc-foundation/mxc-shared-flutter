import 'package:mxc_logic/mxc_logic.dart';

import '../supernode.dart';

class DhxDemoRepository implements DhxRepository {
  @override
  Future<List<Council>> listCouncils() async {
    return [
      Council(
        chairOrgId: '123',
        name: 'Council',
        id: 'demo1',
        lastMpower: 1000000,
      ),
      Council(
        chairOrgId: '123',
        name: 'Council 2',
        id: 'demo1',
        lastMpower: 1500000,
      ),
    ];
  }

  @override
  Future<CreateCouncilResult> createCouncil({
    required double amount,
    required double boost,
    required int lockMonths,
    required String name,
    required String organizationId,
  }) async {
    return CreateCouncilResult('demo-council', 'demo-stake');
  }

  Future<String> createStake({
    required double amount,
    required double boost,
    required String councilId,
    required int lockMonths,
    required String organizationId,
  }) async {
    return 'demo-stake';
  }

  @override
  Future<YesterdayMining> lastMining() async {
    return YesterdayMining(DateTime.now(), 100000, 90000);
  }

  @override
  Future<List<DhxStake>> listStakes({
    String chairOrgId = '0',
    String organizationId = '0',
  }) async {
    return [
      DhxStake(
        amount: 123123,
        boost: 0.40,
        closed: false,
        councilId: "demo1",
        councilName: "Council 1",
        created: DateTime(2020, 12, 18, 15, 5),
        lockTill: DateTime(2021, 12, 18, 15, 5),
        currency: Token.mxc,
        dhxMined: 11111,
        id: "demoStake",
        organizationId: "testOrgId",
      )
    ];
  }

  @override
  Future<DhxBondInfo> bondInfo({String? organizationId}) {
    throw UnimplementedError();
  }

  @override
  Future<void> bondDhx(double amount, String organizationId) {
    throw UnimplementedError();
  }

  @override
  Future<void> unbondDhx(double amount, String organizationId) {
    throw UnimplementedError();
  }
}
