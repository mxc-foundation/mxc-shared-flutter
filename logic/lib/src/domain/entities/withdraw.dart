import 'package:decimal/decimal.dart';

class Withdraw {
  final Decimal amount;
  final DateTime timestamp;
  final String txHash;
  final String txStatus;
  final Decimal withdrawFee;
  final String? failReason;

  Withdraw({
    required this.amount,
    required this.timestamp,
    required this.txHash,
    required this.txStatus,
    required this.withdrawFee,
    required this.failReason,
  });
}
