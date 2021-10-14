import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';

class Gateway {
  final String id;
  final DateTime createdAt;
  final String description;
  final DateTime? firstSeenAt;
  final DateTime? lastSeenAt;
  final DateTime? updatedAt;
  final Location? location;
  final String name;
  final String networkServerID;
  final String organizationID;
  final bool reseller;

  Gateway({
    required this.id,
    required this.createdAt,
    required this.description,
    required this.firstSeenAt,
    required this.lastSeenAt,
    required this.updatedAt,
    required this.location,
    required this.name,
    required this.networkServerID,
    required this.organizationID,
    required this.reseller,
  });
}

class GatewayProfile {
  final String id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String name;
  final String networkServerID;
  final String networkServerName;

  GatewayProfile({
    required this.id,
    required this.createdAt,
    required this.networkServerID,
    required this.updatedAt,
    required this.name,
    required this.networkServerName,
  });
}

class GatewayRegisterResult {
  final String status;

  GatewayRegisterResult({
    required this.status,
  });
}

enum FramesInterval { day }

class GatewayStatisticFrame {
  final int txPacketsEmitted;
  final int txPacketsReceived;
  final int rxPacketsReceivedOK;
  final DateTime timestamp;

  GatewayStatisticFrame({
    required this.txPacketsEmitted,
    required this.txPacketsReceived,
    required this.rxPacketsReceivedOK,
    required this.timestamp,
  });
}

class GatewayHealth {
  final String id;
  final int ageSeconds;
  final double health;
  final Decimal miningFuel;
  final double miningFuelHealth;
  final Decimal miningFuelMax;
  final Decimal totalMined;
  final double uptimeHealth;

  GatewayHealth({
    required this.id,
    required this.ageSeconds,
    required this.health,
    required this.miningFuel,
    required this.miningFuelHealth,
    required this.miningFuelMax,
    required this.totalMined,
    required this.uptimeHealth,
  });
}

class GatewayAverageHealth {
  final double miningFuelHealth;
  final double uptimeHealth;
  final double health;

  GatewayAverageHealth({
    required this.miningFuelHealth,
    required this.uptimeHealth,
    required this.health,
  });
}

class GatewayHealthSummary {
  final List<GatewayHealth> gatewayHealths;
  final GatewayAverageHealth average;
  final Decimal totalFueled;

  GatewayHealthSummary({
    required this.gatewayHealths,
    required this.average,
    required this.totalFueled,
  });
}

class GatewayDailyMiningIncome {
  final Decimal amount;
  final DateTime date;
  final double health;
  final int onlineSeconds;

  GatewayDailyMiningIncome({
    required this.amount,
    required this.date,
    required this.health,
    required this.onlineSeconds,
  });
}

class GatewayMiningIncomeSummary {
  final Decimal totalAmount;
  final List<GatewayDailyMiningIncome> daily;

  GatewayMiningIncomeSummary({
    required this.totalAmount,
    required this.daily,
  });
}
