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

class Lock {
  final String id;
  final double amount;
  final double boost;
  final bool closed;
  final String councilId;
  final String councilName;
  final DateTime startTime;
  final Token currency;
  final double dhxMined;
  final DateTime lockTill;
  final String organizationId;
  final LockOption option;

  bool get unlockable => lockTill.isBefore(DateTime.now());

  int get durationInDays => DateTime.now().difference(startTime).inDays.abs();

  Lock({
    required this.id,
    required this.amount,
    required this.boost,
    required this.closed,
    required this.councilId,
    required this.councilName,
    required this.startTime,
    required this.currency,
    required this.dhxMined,
    required this.lockTill,
    required this.organizationId,
    required this.option,
  });
}

class LockOption {
  final int months;

  const LockOption(this.months);

  static const m3 = LockOption(3);
  static const m9 = LockOption(9);
  static const m12 = LockOption(12);
  static const m24 = LockOption(24);
  static const values = [m3, m9, m12, m24];
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
