import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class StakeRepository {
  StakeRepository(this._client);

  final SupernodeClient _client;

  static StakeOption _mapStakeOption(DateTime? startTime, DateTime? lockTill) {
    return StakeOption(
      lockTill == null
          ? null
          : (lockTill.difference(startTime!).inDays / 30).floor(),
    );
  }

  Future<String> stake({
    required Decimal amount,
    required double? boostRate,
    required int? lockMonths,
    String? orgId,
  }) async {
    final res = await _client.stakingService.stake(
      orgId: orgId ?? _client.defaultOrganizationId,
      body: ExtapiStakeRequest(
        amount: amount.toString(),
        boost: boostRate?.toString(),
        lockPeriods: lockMonths?.toString(),
      ),
    );
    return res.body!.status!;
  }

  Future<String> unstake({
    required String stakeId,
    required String otpCode,
    String? orgId,
  }) async {
    final res = await _client.stakingService.unstake(
      orgId: orgId ?? _client.defaultOrganizationId,
      grpcMetadataXOTP: otpCode,
      body: ExtapiUnstakeRequest(
        orgId: orgId ?? _client.defaultOrganizationId,
        stakeId: stakeId,
      ),
    );
    return res.body!.status!;
  }

  Future<List<StakeHistoryFrame>> history({
    String? orgId,
    Token? currency,
    DateTime? from,
    DateTime? till,
  }) async {
    final res = await _client.stakingService.getStakingHistory(
      orgId: orgId ?? _client.defaultOrganizationId,
      currency: currency?.toData(),
      from: (from ?? Values.dateMin).toData(),
      till: (till ?? Values.dateMax).toData(),
    );
    return res.body!.stakingHist!
        .map(
          (e) => StakeHistoryFrame(
            timestamp: e.timestamp!,
            amount: e.amount.toDecimal(),
            type: Mappers.stringToStakeHistoryType(e.type),
            stake: Stake(
              id: e.stake!.id!,
              startTime: e.stake!.startTime!,
              endTime: e.stake!.endTime,
              amount: e.stake!.amount.toDecimal(),
              active: e.stake!.active!,
              lockTill: e.stake!.lockTill,
              boost: e.stake!.boost.toDouble(),
              revenue: e.stake!.revenue.toDouble(),
              option: _mapStakeOption(e.stake!.startTime, e.stake!.lockTill),
            ),
          ),
        )
        .toList();
  }

  Future<List<Stake>> list({String? orgId}) async {
    final history = await this.history(
      orgId: orgId ?? _client.defaultOrganizationId,
    );
    return history
        .map((e) => e.stake)
        .toList()
        .asMap()
        .map((key, value) => MapEntry(value.id, value))
        .values
        .toList();
  }

  Future<List<Stake>> listActive({
    String? orgId,
    Token? currency,
  }) async {
    final res = await _client.stakingService.getActiveStakes(
      orgId: orgId ?? _client.defaultOrganizationId,
      currency: currency?.toData(),
    );
    return res.body!.actStake!
        .map(
          (e) => Stake(
            id: e.id!,
            active: e.active!,
            amount: e.amount.toDecimal(),
            boost: e.boost.toDouble(),
            endTime: e.endTime,
            lockTill: e.lockTill,
            revenue: e.revenue.toDouble(),
            startTime: e.startTime!,
            option: _mapStakeOption(e.startTime, e.lockTill),
          ),
        )
        .toList();
  }

  Future<Decimal> revenue({
    String? orgId,
    DateTime? till,
  }) async {
    final res = await _client.stakingService.getStakingRevenue(
      orgId: orgId ?? _client.defaultOrganizationId,
      till: till?.toData(),
    );
    return res.body!.amount.toDecimal();
  }

  Future<StakeBoostBundle> stakingPercentage({Token? currency}) async {
    final res = await _client.stakingService.getStakingPercentage(
      currency: currency?.toData(),
    );
    final monthToOption = StakeOption.values.asMap().map(
          (_, e) => MapEntry(e.months?.toString(), e),
        );
    final realRates = res.body!.lockBoosts!.asMap().map(
          (_, e) => MapEntry(
            monthToOption[e.lockPeriods!]!,
            e.boost.toDouble(),
          ),
        );
    realRates[StakeOption.flex] = 0;

    final stakingInterest = res.body!.stakingInterest! * 100;

    final rates = realRates.map(
      (key, boost) => MapEntry(
        key,
        StakeBoostRate(
          realRate: boost,
          marketingRate:
              (((boost + 1) / (realRates[StakeOption.m12]! + 1)) * 100 - 100)
                  .round(),
          estimatedRate:
              (stakingInterest * (1 + boost) * 1000).floorToDouble() / 1000,
        ),
      ),
    );
    return rates;
  }
}
