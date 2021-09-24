import 'package:decimal/decimal.dart';

enum StakeHistoryType { staking, unstaking, unknown }

class StakeHistoryFrame {
  final DateTime timestamp;
  final Decimal amount;
  final StakeHistoryType type;
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
  final int? months;

  bool get locked =>
      endTime == null &&
      (lockTill == null || lockTill!.isAfter(DateTime.now()));

  int get durationInDays =>
      (endTime ?? DateTime.now()).difference(startTime).inDays.abs();

  Stake({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.amount,
    required this.active,
    required this.lockTill,
    required this.boost,
    required this.revenue,
    required this.months,
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
