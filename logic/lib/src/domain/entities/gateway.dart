import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';

class Gateway {
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
}

class GatewayProfile {
  GatewayProfile({
    required this.id,
    required this.createdAt,
    required this.networkServerID,
    required this.updatedAt,
    required this.name,
    required this.networkServerName,
  });

  final String id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String name;
  final String networkServerID;
  final String networkServerName;
}

class GatewayRegisterResult {
  GatewayRegisterResult({
    required this.status,
  });

  final String status;
}

enum FramesInterval { day }

class GatewayStatisticFrame {
  GatewayStatisticFrame({
    required this.txPacketsEmitted,
    required this.txPacketsReceived,
    required this.rxPacketsReceivedOK,
    required this.timestamp,
  });

  final int txPacketsEmitted;
  final int txPacketsReceived;
  final int rxPacketsReceivedOK;
  final DateTime timestamp;
}

class GatewayHealth {
  GatewayHealth({
    required this.id,
    required this.ageSeconds,
    required this.health,
    required this.miningFuel,
    required this.miningFuelHealth,
    required this.miningFuelMax,
    required this.totalMined,
    required this.uptimeHealth,
    required this.proximityFactor,
    required this.mxcRing,
    required this.dhxRing,
    required this.btcRing,
  });

  final String id;
  final int ageSeconds;
  final double health;
  final Decimal miningFuel;
  final double miningFuelHealth;
  final Decimal miningFuelMax;
  final Decimal totalMined;
  final double uptimeHealth;
  final double proximityFactor;

  final double mxcRing;
  final double dhxRing;
  final double btcRing;
}

class GatewayAverageHealth {
  GatewayAverageHealth({
    required this.miningFuelHealth,
    required this.uptimeHealth,
    required this.health,
    required this.mxcRing,
    required this.btcRing,
    required this.dhxRing,
  });

  final double miningFuelHealth;
  final double uptimeHealth;
  final double health;

  final double mxcRing;
  final double btcRing;
  final double dhxRing;
}

class GatewayHealthSummary {
  GatewayHealthSummary({
    required this.gatewayHealths,
    required this.average,
    required this.totalFueled,
  });

  final List<GatewayHealth> gatewayHealths;
  final GatewayAverageHealth average;
  final Decimal totalFueled;
}

class GatewayDailyMiningIncome {
  GatewayDailyMiningIncome({
    required this.amount,
    required this.date,
    required this.health,
    required this.onlineSeconds,
  });

  final Decimal amount;
  final DateTime date;
  final double health;
  final int onlineSeconds;
}

class GatewayMiningIncomeSummary {
  GatewayMiningIncomeSummary({
    required this.totalAmount,
    required this.daily,
  });

  final Decimal totalAmount;
  final List<GatewayDailyMiningIncome> daily;
}
