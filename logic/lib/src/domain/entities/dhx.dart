import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';

class Council {
  final String id;
  final String chairOrgId;
  final String name;
  final double lastMpower;

  Council({
    required this.id,
    required this.chairOrgId,
    required this.name,
    required this.lastMpower,
  });
}

class DhxStake {
  final String id;
  final double amount;
  final double boost;
  final bool closed;
  final String councilId;
  final String councilName;
  final DateTime created;
  final Token currency;
  final double dhxMined;
  final DateTime? lockTill;
  final String organizationId;

  DhxStake({
    required this.id,
    required this.amount,
    required this.boost,
    required this.closed,
    required this.councilId,
    required this.councilName,
    required this.created,
    required this.currency,
    required this.dhxMined,
    required this.lockTill,
    required this.organizationId,
  });
}

class DhxBondInfo {
  final Decimal bonded;
  final List<DhxUnbonding> unbonding;
  final Decimal totalUnbonded;
  final List<DhxCoolingOff> coolingOff;
  final Decimal totalCooledOff;

  DhxBondInfo({
    required this.bonded,
    required this.unbonding,
    required this.coolingOff,
    required this.totalCooledOff,
    required this.totalUnbonded,
  });
}

class DhxUnbonding {
  final double amount;
  final DateTime created;

  DhxUnbonding(this.amount, this.created);
}

class DhxCoolingOff {
  final double amount;
  final DateTime created;

  DhxCoolingOff(this.amount, this.created);
}

class CreateCouncilResult {
  final String councilId;
  final String stakeId;

  CreateCouncilResult(this.councilId, this.stakeId);
}

class YesterdayMining {
  final DateTime date;
  final double dhx;
  final double mpower;

  YesterdayMining(this.date, this.dhx, this.mpower);
}
