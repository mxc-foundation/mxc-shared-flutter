import 'package:decimal/decimal.dart';

class StakeHistoryFrame {
  final DateTime timestamp;
  final Decimal amount;
  final String type;
  final Stake stake;
  StakeHistoryFrame({
    required this.timestamp,
    required this.amount,
    required this.type,
    required this.stake,
  });
}

class Stake {
  final String id;
  final DateTime startTime;
  final DateTime? endTime;
  final Decimal amount;
  final bool active;
  final DateTime? lockTill;
  final double boost;
  final double revenue;

  Stake({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.amount,
    required this.active,
    required this.lockTill,
    required this.boost,
    required this.revenue,
  });
}

class StakingPercentage {
  final Map<String, double> periodToBoost;
  final double interest;

  StakingPercentage({
    required this.periodToBoost,
    required this.interest,
  });
}
