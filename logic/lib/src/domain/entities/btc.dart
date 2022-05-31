import 'package:decimal/decimal.dart';

abstract class BtcBondInfo {
  const BtcBondInfo({
    required this.id,
    required this.created,
    required this.amount,
    required this.gatewayMac,
    this.btcMined,
  });

  final String id;
  final DateTime created;
  final Decimal amount;
  final String gatewayMac;
  final Decimal? btcMined;

  static const btcBondDuration = Duration(days: 58);

  bool get passed58Days;
}

class BtcBonded implements BtcBondInfo {
  BtcBonded({
    required this.id,
    required this.created,
    required this.amount,
    required this.gatewayMac,
    required this.unlockFrom,
    required this.lockTill,
    this.btcMined,
  });

  @override
  final String id;

  @override
  final DateTime created;

  @override
  final Decimal amount;

  @override
  final String gatewayMac;

  @override
  final Decimal? btcMined;

  final DateTime unlockFrom;

  final DateTime lockTill;

  @override
  bool get passed58Days {
    return DateTime.now().isAfter(created.add(BtcBondInfo.btcBondDuration));
  }
}

class BtcUnbonded implements BtcBondInfo {
  BtcUnbonded({
    required this.id,
    required this.created,
    required this.amount,
    required this.gatewayMac,
    required this.unlocked,
    required this.coolingOffEnds,
    this.btcMined,
  });

  @override
  final String id;

  @override
  final DateTime created;

  @override
  final Decimal amount;

  @override
  final String gatewayMac;

  @override
  final Decimal? btcMined;

  final DateTime unlocked;
  final DateTime coolingOffEnds;

  @override
  bool get passed58Days {
    return false;
  }
}

class GatewayMining {
  GatewayMining({
    required this.gatewayMac,
    required this.amount,
  });

  final String gatewayMac;
  final Decimal amount;
}

class BtcMined {
  BtcMined({
    required this.totalAmount,
    required this.gatewayMining,
  });

  final Decimal totalAmount;
  final List<GatewayMining> gatewayMining;
}
