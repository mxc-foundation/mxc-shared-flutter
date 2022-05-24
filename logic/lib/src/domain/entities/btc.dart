import 'package:decimal/decimal.dart';

abstract class BtcBondInfo {
  BtcBondInfo({
    required this.id,
    required this.created,
    required this.amount,
    required this.gatewayMac,
  });

  final String id;
  final DateTime created;
  final Decimal amount;
  final String gatewayMac;
}

class BtcBonded implements BtcBondInfo {
  BtcBonded({
    required this.id,
    required this.created,
    required this.amount,
    required this.gatewayMac,
    this.unlockFrom,
    this.lockTill,
  });

  @override
  final String id;

  @override
  final DateTime created;

  @override
  final Decimal amount;

  @override
  final String gatewayMac;

  final DateTime? unlockFrom;
  final DateTime? lockTill;
}

class BtcUnbonded implements BtcBondInfo {
  BtcUnbonded({
    required this.id,
    required this.created,
    required this.amount,
    required this.gatewayMac,
    this.unlocked,
    this.coolingOffEnds,
  });

  @override
  final String id;

  @override
  final DateTime created;

  @override
  final Decimal amount;

  @override
  final String gatewayMac;

  final DateTime? unlocked;
  final DateTime? coolingOffEnds;
}
