import 'package:decimal/decimal.dart';

abstract class Transaction {
  Decimal get amount;
  DateTime get timestamp;
  String get txHash;
}

class Topup implements Transaction {
  final Decimal amount;
  final DateTime timestamp;
  final String txHash;

  Topup({
    required this.amount,
    required this.timestamp,
    required this.txHash,
  });
}

class Withdraw implements Transaction {
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
