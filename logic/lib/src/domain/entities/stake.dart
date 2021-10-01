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
  final StakeOption option;

  late final Decimal totalSum = amount + Decimal.parse(revenue.toString());

  bool get locked =>
      endTime == null &&
      (lockTill == null || lockTill!.isAfter(DateTime.now()));

  int get durationInDays =>
      (endTime ?? DateTime.now()).difference(startTime).inDays.abs();

  bool get unstaked => endTime != null;

  Stake({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.amount,
    required this.active,
    required this.lockTill,
    required this.boost,
    required this.revenue,
    required this.option,
  });
}

class StakeOption {
  final int? months;

  const StakeOption(this.months);

  static const flex = StakeOption(null);
  static const m6 = StakeOption(6);
  static const m9 = StakeOption(9);
  static const m12 = StakeOption(12);
  static const m24 = StakeOption(24);
  static const values = [flex, m6, m9, m12, m24];
}

typedef StakeBoostBundle = Map<StakeOption, StakeBoostRate>;

class StakeBoostRate {
  final double realRate;
  final int marketingRate;
  final double estimatedRate;

  StakeBoostRate({
    required this.realRate,
    required this.marketingRate,
    required this.estimatedRate,
  });
}
