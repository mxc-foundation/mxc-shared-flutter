import 'package:chopper/chopper.dart';
import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class StakeRepository {
  final ChopperClient _client;

  StakeRepository(this._client);

  Future<String> stake({
    required String orgId,
    required Decimal amount,
    required double? boostRate,
    required int? lockMonths,
  }) async {
    final res = await _client.stakingService.stake(
      orgId: orgId,
      body: ExtapiStakeRequest(
        amount: amount.toString(),
        boost: boostRate?.toString(),
        lockPeriods: lockMonths?.toString(),
      ),
    );
    return res.body!.status!;
  }

  Future<String> unstake({
    required String orgId,
    required String stakeId,
    required String otpCode,
  }) async {
    final res = await _client.stakingService.unstake(
      orgId: orgId,
      grpcMetadataXOTP: otpCode,
      body: ExtapiUnstakeRequest(
        orgId: orgId,
        stakeId: stakeId,
      ),
    );
    return res.body!.status!;
  }

  Future<List<StakeHistoryFrame>> history({
    required String orgId,
    Token? currency,
    DateTime? from,
    DateTime? till,
  }) async {
    final res = await _client.stakingService.getStakingHistory(
      orgId: orgId,
      currency: currency?.toData(),
      from: from?.toData(),
      till: till?.toData(),
    );
    return res.body!.stakingHist!
        .map(
          (e) => StakeHistoryFrame(
            timestamp: e.timestamp!,
            amount: e.amount.toDecimal(),
            type: e.type!,
            stake: Stake(
              id: e.stake!.id!,
              startTime: e.stake!.startTime!,
              endTime: e.stake!.endTime,
              amount: e.stake!.amount.toDecimal(),
              active: e.stake!.active!,
              lockTill: e.stake!.lockTill,
              boost: e.stake!.boost.toDouble(),
              revenue: e.stake!.revenue.toDouble(),
            ),
          ),
        )
        .toList();
  }

  Future<List<Stake>> listActive({
    required String orgId,
    Token? currency,
  }) async {
    final res = await _client.stakingService.getActiveStakes(
      orgId: orgId,
      currency: currency?.toData(),
    );
    return res.body!.actStake!
        .map((e) => Stake(
              id: e.id!,
              active: e.active!,
              amount: e.amount.toDecimal(),
              boost: e.boost.toDouble(),
              endTime: e.endTime,
              lockTill: e.lockTill,
              revenue: e.revenue.toDouble(),
              startTime: e.startTime!,
            ))
        .toList();
  }

  Future<Decimal> revenue({
    required String orgId,
    DateTime? till,
  }) async {
    final res = await _client.stakingService.getStakingRevenue(
      orgId: orgId,
      till: till?.toData(),
    );
    return res.body!.amount.toDecimal();
  }

  Future<StakingPercentage> stakingPercentage({Token? currency}) async {
    final res = await _client.stakingService.getStakingPercentage(
      currency: currency?.toData(),
    );
    return StakingPercentage(
      interest: res.body!.stakingInterest!,
      periodToBoost: res.body!.lockBoosts!
          .asMap()
          .map((_, e) => MapEntry(e.lockPeriods!, e.boost.toDouble())),
    );
  }
}
