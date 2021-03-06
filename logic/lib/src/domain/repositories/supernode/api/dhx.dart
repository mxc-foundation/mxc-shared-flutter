import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DhxRepository {
  DhxRepository(this._client);

  final SupernodeClient _client;

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

  Future<List<Council>> listCouncils() async {
    final res = await _client.dHXServcie.dHXListCouncils();
    return res.body!.council!
        .map(
          (e) => Council(
            id: e.id!,
            chairOrgId: e.chairOrgId!,
            name: e.name.orDefault(),
            lastMpower: e.lastMpower.toDouble(),
          ),
        )
        .toList();
  }

  Future<List<Lock>> listLocks({
    String? organizationId,
    String? chairOrgId,
  }) async {
    final res = await _client.dHXServcie.dHXListStakes(
      chairOrgId: chairOrgId,
      organizationId: organizationId ?? _client.defaultOrganizationId,
    );
    final list = res.body!.stake;
    final resList = list!
        .map(
          (e) => Lock(
            id: e.id!,
            startTime: e.created!,
            organizationId: e.organizationId.orDefault(),
            amount: e.amount.toDouble(),
            boost: e.boost.toDouble(),
            closed: e.closed ?? false,
            councilId: e.councilId!,
            councilName: e.councilName.orDefault(),
            currency: Token.mxc,
            dhxMined: e.dhxMined.toDouble(),
            lockTill: e.lockTill!,
            option: _mapLockOption(e.lockTill!, e.created!),
          ),
        )
        .toList();

    resList.sort((a, b) => b.id.compareTo(a.id));
    return resList;
  }

  Future<DhxBondInfo> bondInfo({
    String? organizationId,
  }) async {
    final res = await _client.dHXServcie.dHXBondInfo(
      body: ExtapiDHXBondInfoRequest(
        orgId: organizationId ?? _client.defaultOrganizationId,
      ),
    );
    return DhxBondInfo(
      bonded: Decimal.parse(res.body!.dhxBonded!),
      unbonding: res.body!.dhxUnbonding!
          .map(
            (e) => DhxUnbonding(
              e.amount.toDouble(),
              e.created!,
            ),
          )
          .toList(),
      totalUnbonded: res.body!.dhxUnbondingTotal.toDecimal(),
      coolingOff: res.body!.dhxCoolingOff!
          .map(
            (e) => DhxCoolingOff(
              e.amount.toDouble(),
              e.created!,
            ),
          )
          .toList(),
      totalCooledOff: res.body!.dhxCoolingOffTotal.toDecimal(),
    );
  }

  Future<void> bondDhx({
    required Decimal amount,
    String? organizationId,
  }) async {
    await _client.dHXServcie.dHXBond(
      body: ExtapiDHXBondRequest(
        amount: amount.toString(),
        orgId: organizationId ?? _client.defaultOrganizationId,
      ),
    );
  }

  Future<void> unbondDhx({
    required Decimal amount,
    String? organizationId,
  }) async {
    await _client.dHXServcie.dHXUnbond(
      body: ExtapiDHXUnbondRequest(
        amount: amount.toString(),
        orgId: organizationId ?? _client.defaultOrganizationId,
      ),
    );
  }

  Future<CreateCouncilResult> createCouncil({
    required Decimal amount,
    required double boost,
    required int lockMonths,
    required String name,
    String? organizationId,
  }) async {
    final res = await _client.dHXServcie.dHXCreateCouncil(
      body: ExtapiDHXCreateCouncilRequest(
        amount: amount.toString(),
        boost: boost.toString(),
        lockMonths: lockMonths.toString(),
        name: name,
        organizationId: organizationId ?? _client.defaultOrganizationId,
        currency: Token.mxc.toData(),
      ),
    );
    return CreateCouncilResult(res.body!.councilId!, res.body!.stakeId!);
  }

  Future<String> createStake({
    required Decimal amount,
    required double boost,
    required String councilId,
    required int lockMonths,
    String? organizationId,
  }) async {
    final res = await _client.dHXServcie.dHXCreateStake(
      body: ExtapiDHXCreateStakeRequest(
        amount: amount.toString(),
        boost: boost.toString(),
        councilId: councilId,
        lockMonths: lockMonths.toString(),
        organizationId: organizationId ?? _client.defaultOrganizationId,
        currency: Token.mxc.toData(),
      ),
    );
    return res.body!.stakeId!;
  }

  Future<YesterdayMining?> lastMining() async {
    final res = await _client.dHXServcie.dHXGetLastMining();
    if (res.body == null || res.body?.date == null) return null;
    return YesterdayMining(
        res.body!.date!,
        res.body!.dhxAllocated.toDecimal(),
        res.body!.miningPower.toDecimal(),
        res.body!.globalMiningPower.toDecimal());
  }
}
