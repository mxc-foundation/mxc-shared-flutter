import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoStakeRepository implements StakeRepository {
  const DemoStakeRepository();

  static StakeOption _mapStakeOption(DateTime? startTime, DateTime? lockTill) {
    return StakeOption(
      lockTill == null
          ? null
          : (lockTill.difference(startTime!).inDays / 30).floor(),
    );
  }

  @override
  Future<String> stake({
    required Decimal amount,
    required double? boostRate,
    required int? lockMonths,
    String? orgId,
  }) async {
    return 'DemoStakeStatus';
  }

  @override
  Future<String> unstake({
    required String stakeId,
    String? orgId,
  }) async {
    return 'DemoUnstakeStatus';
  }

  @override
  Future<List<StakeHistoryFrame>> history({
    String? orgId,
    Token? currency,
    DateTime? from,
    DateTime? till,
  }) async {
    return [
      StakeHistoryFrame(
        timestamp: DateTime.now(),
        amount: '10000'.toDecimal(),
        type: Mappers.stringToStakeHistoryType('STAKING'),
        stake: Stake(
          id: 'DemoStakeId1',
          startTime: DateTime.now().add(const Duration(days: -2)),
          endTime: DateTime.now().add(const Duration(days: -2)),
          amount: '10000'.toDecimal(),
          active: true,
          lockTill: DateTime.now(),
          boost: 10000,
          revenue: '10000'.toDouble(),
          option: _mapStakeOption(
            DateTime.now().add(const Duration(days: -2)),
            DateTime.now(),
          ),
          participantId: '0',
          claimedReward: false,
        ),
      ),
      StakeHistoryFrame(
        timestamp: DateTime.now(),
        amount: '10000'.toDecimal(),
        type: Mappers.stringToStakeHistoryType('UNSTAKING'),
        stake: Stake(
          id: 'DemoStakeId2',
          startTime: DateTime.now().add(const Duration(days: -1)),
          endTime: DateTime.now().add(const Duration(days: -1)),
          amount: '20000'.toDecimal(),
          active: true,
          lockTill: DateTime.now(),
          boost: 10000,
          revenue: '20000'.toDouble(),
          option: _mapStakeOption(
            DateTime.now().add(const Duration(days: -1)),
            DateTime.now(),
          ),
          participantId: '1',
          claimedReward: true,
        ),
      ),
    ];
  }

  @override
  Future<List<Stake>> list({String? orgId}) async {
    return [
      Stake(
        id: 'DemoStakeId1',
        startTime: DateTime.now().add(const Duration(days: -1)),
        endTime: DateTime.now().add(const Duration(days: -1)),
        amount: '10000'.toDecimal(),
        active: true,
        lockTill: DateTime.now(),
        boost: 10000,
        revenue: '10000'.toDouble(),
        option: _mapStakeOption(
          DateTime.now().add(const Duration(days: -1)),
          DateTime.now(),
        ),
        participantId: '3',
        claimedReward: true,
      ),
      Stake(
        id: 'DemoStakeId2',
        startTime: DateTime.now().add(const Duration(days: -1)),
        endTime: DateTime.now().add(const Duration(days: -1)),
        amount: '20000'.toDecimal(),
        active: true,
        lockTill: DateTime.now(),
        boost: 10000,
        revenue: '20000'.toDouble(),
        option: _mapStakeOption(
          DateTime.now().add(const Duration(days: -1)),
          DateTime.now(),
        ),
        participantId: '0',
        claimedReward: false,
      ),
    ];
  }

  @override
  Future<List<Stake>> listActive({
    String? orgId,
    Token? currency,
  }) async {
    return [
      Stake(
        id: 'DemoStakeId1',
        startTime: DateTime.now().add(const Duration(days: -1)),
        endTime: DateTime.now().add(const Duration(days: -1)),
        amount: '10000'.toDecimal(),
        active: true,
        lockTill: DateTime.now(),
        boost: 10000,
        revenue: '10000'.toDouble(),
        option: _mapStakeOption(
          DateTime.now().add(const Duration(days: -1)),
          DateTime.now(),
        ),
        participantId: '0',
        claimedReward: false,
      ),
      Stake(
        id: 'DemoStakeId2',
        startTime: DateTime.now().add(const Duration(days: -1)),
        endTime: DateTime.now().add(const Duration(days: -1)),
        amount: '20000'.toDecimal(),
        active: true,
        lockTill: DateTime.now(),
        boost: 10000,
        revenue: '20000'.toDouble(),
        option: _mapStakeOption(
          DateTime.now().add(const Duration(days: -1)),
          DateTime.now(),
        ),
        participantId: '6',
        claimedReward: true,
      ),
    ];
  }

  @override
  Future<Decimal> revenue({
    String? orgId,
    DateTime? till,
  }) async {
    return '123456'.toDecimal();
  }

  @override
  Future<StakeBoostBundle> stakingPercentage({Token? currency}) async {
    return {
      StakeOption.flex: StakeBoostRate(
        realRate: 10,
        marketingRate: 10,
        estimatedRate: 0.1,
      ),
      StakeOption.m6: StakeBoostRate(
        realRate: 20,
        marketingRate: 20,
        estimatedRate: 0.2,
      ),
      StakeOption.m9: StakeBoostRate(
        realRate: 30,
        marketingRate: 30,
        estimatedRate: 0.3,
      ),
      StakeOption.m12: StakeBoostRate(
        realRate: 40,
        marketingRate: 40,
        estimatedRate: 0.4,
      ),
      StakeOption.m24: StakeBoostRate(
        realRate: 50,
        marketingRate: 50,
        estimatedRate: 0.5,
      ),
    };
  }
}
