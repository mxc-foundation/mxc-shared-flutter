import 'package:decimal/decimal.dart';

abstract class Transaction {
  Decimal get amount;
  DateTime get timestamp;
  String get txHash;
}

class Topup implements Transaction {
  @override
  final Decimal amount;

  @override
  final DateTime timestamp;

  @override
  final String txHash;

  Topup({
    required this.amount,
    required this.timestamp,
    required this.txHash,
  });
}

class Withdraw implements Transaction {
  @override
  final Decimal amount;

  @override
  final DateTime timestamp;

  @override
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
