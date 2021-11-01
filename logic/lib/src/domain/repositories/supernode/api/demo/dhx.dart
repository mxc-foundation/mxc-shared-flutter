import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoDhxRepository implements DhxRepository {
  const DemoDhxRepository();

  static late final Map<int, LockOption> _monthsToOption = {
    for (final o in LockOption.values) o.months: o,
  };

  static LockOption _mapLockOption(DateTime lockTill, DateTime created) {
    final months = (lockTill.difference(created).inDays / 30).floor();
    return _monthsToOption[months] ??
        LockOption(
          months,
          const LockBoostRate(0),
        );
  }

  @override
  Future<List<Council>> listCouncils() async {
    return [
      Council(
        chairOrgId: 'DemoChairOrgId1',
        name: 'DemoCouncilName1',
        id: 'DemoId1',
        lastMpower: 1000000.0,
      ),
      Council(
        chairOrgId: 'DemoChairOrgId2',
        name: 'DemoCouncilName2',
        id: 'DemoId2',
        lastMpower: 2000000.0,
      ),
    ];
  }

  @override
  Future<List<Lock>> listLocks({
    String? organizationId,
    String? chairOrgId,
  }) async {
    return [
      Lock(
        id: 'DemoId1',
        startTime: DateTime.now().add(const Duration(days: -1)),
        organizationId: 'DemoOrgId1',
        amount: 100000.0,
        boost: 200000.0,
        closed: true,
        councilId: 'DemoCouncilId1',
        councilName: 'DemoCouncilName1',
        currency: Token.mxc,
        dhxMined: 3000000.0,
        lockTill: DateTime.now(),
        option: _mapLockOption(
          DateTime.now(),
          DateTime.now().add(const Duration(days: -2)),
        ),
      ),
      Lock(
        id: 'DemoId2',
        startTime: DateTime.now().add(const Duration(days: -1)),
        organizationId: 'DemoOrgId2',
        amount: 100000.0,
        boost: 200000.0,
        closed: true,
        councilId: 'DemoCouncilId2',
        councilName: 'DemoCouncilName2',
        currency: Token.mxc,
        dhxMined: 3000000.0,
        lockTill: DateTime.now(),
        option: _mapLockOption(
          DateTime.now(),
          DateTime.now().add(const Duration(days: -2)),
        ),
      ),
      Lock(
        id: 'DemoId3',
        startTime: DateTime.now().add(const Duration(days: -1)),
        organizationId: 'DemoOrgId3',
        amount: 100000.0,
        boost: 200000.0,
        closed: true,
        councilId: 'DemoCouncilId3',
        councilName: 'DemoCouncilName3',
        currency: Token.mxc,
        dhxMined: 3000000.0,
        lockTill: DateTime.now(),
        option: _mapLockOption(
          DateTime.now(),
          DateTime.now().add(const Duration(days: -2)),
        ),
      )
    ];
  }

  @override
  Future<DhxBondInfo> bondInfo({
    String? organizationId,
  }) async {
    return DhxBondInfo(
      bonded: Decimal.parse('1000000'),
      unbonding: [
        DhxUnbonding(
          100000.0,
          DateTime.now().add(const Duration(days: -2)),
        ),
        DhxUnbonding(
          200000.0,
          DateTime.now().add(const Duration(days: -1)),
        ),
        DhxUnbonding(
          300000.0,
          DateTime.now(),
        ),
      ],
      totalUnbonded: '20000000'.toDecimal(),
      coolingOff: [
        DhxCoolingOff(
          100000.0,
          DateTime.now().add(const Duration(days: -2)),
        ),
        DhxCoolingOff(
          200000.0,
          DateTime.now().add(const Duration(days: -1)),
        ),
        DhxCoolingOff(
          300000.0,
          DateTime.now(),
        )
      ],
      totalCooledOff: '3000000'.toDecimal(),
    );
  }

  @override
  Future<void> bondDhx({
    required Decimal amount,
    String? organizationId,
  }) =>
      throw UnimplementedError();

  @override
  Future<void> unbondDhx({
    required Decimal amount,
    String? organizationId,
  }) =>
      throw UnimplementedError();

  @override
  Future<CreateCouncilResult> createCouncil({
    required Decimal amount,
    required double boost,
    required int lockMonths,
    required String name,
    String? organizationId,
  }) async {
    return CreateCouncilResult('DemoCouncilId1', 'DemoStakeId1');
  }

  @override
  Future<String> createStake({
    required Decimal amount,
    required double boost,
    required String councilId,
    required int lockMonths,
    String? organizationId,
  }) async {
    return 'DemoStakeId1';
  }

  @override
  Future<YesterdayMining?> lastMining() async {
    return YesterdayMining(
      DateTime.now(),
      '1000000'.toDecimal(),
      '2000000'.toDecimal(),
    );
  }
}
