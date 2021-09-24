import 'package:chopper/chopper.dart';
import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DhxRepository {
  final ChopperClient _client;

  DhxRepository(this._client);

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

  Future<List<DhxStake>> listStakes({
    required String chairOrgId,
    required String organizationId,
  }) async {
    final res = await _client.dHXServcie.dHXListStakes(
      chairOrgId: chairOrgId,
      organizationId: organizationId,
    );
    final list = res.body!.stake;
    return list!
        .map(
          (e) => DhxStake(
            id: e.id!,
            created: e.created!,
            organizationId: e.organizationId.orDefault(),
            amount: e.amount.toDouble(),
            boost: e.boost.toDouble(),
            closed: e.closed ?? false,
            councilId: e.councilId!,
            councilName: e.councilName.orDefault(),
            currency: Token.mxc,
            dhxMined: e.dhxMined.toDouble(),
            lockTill: e.lockTill,
          ),
        )
        .toList();
  }

  Future<DhxBondInfo> bondInfo({
    required String organizationId,
  }) async {
    final res = await _client.dHXServcie.dHXBondInfo(
      body: ExtapiDHXBondInfoRequest(orgId: organizationId),
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

  Future<void> bondDhx(double amount, String organizationId) async {
    await _client.dHXServcie.dHXBond(
      body: ExtapiDHXBondRequest(
        amount: amount.toString(),
        orgId: organizationId,
      ),
    );
  }

  Future<void> unbondDhx(double amount, String organizationId) async {
    await _client.dHXServcie.dHXUnbond(
      body: ExtapiDHXUnbondRequest(
        amount: amount.toString(),
        orgId: organizationId,
      ),
    );
  }

  Future<CreateCouncilResult> createCouncil({
    required double amount,
    required double boost,
    required int lockMonths,
    required String name,
    required String organizationId,
  }) async {
    final res = await _client.dHXServcie.dHXCreateCouncil(
      body: ExtapiDHXCreateCouncilRequest(
        amount: amount.toString(),
        boost: boost.toString(),
        lockMonths: lockMonths.toString(),
        name: name,
        organizationId: organizationId,
        currency: Token.mxc.toData(),
      ),
    );
    return CreateCouncilResult(res.body!.councilId!, res.body!.stakeId!);
  }

  Future<String> createStake({
    required double amount,
    required double boost,
    required String councilId,
    required int lockMonths,
    required String organizationId,
  }) async {
    final res = await _client.dHXServcie.dHXCreateStake(
      body: ExtapiDHXCreateStakeRequest(
        amount: amount.toString(),
        boost: boost.toString(),
        councilId: councilId,
        lockMonths: lockMonths.toString(),
        organizationId: organizationId,
        currency: Token.mxc.toData(),
      ),
    );
    return res.body!.stakeId!;
  }

  Future<YesterdayMining> lastMining() async {
    final res = await _client.dHXServcie.dHXGetLastMining();
    return YesterdayMining(
      res.body!.date!,
      res.body!.dhxAllocated.toDouble(),
      res.body!.miningPower.toDouble(),
    );
  }
}
