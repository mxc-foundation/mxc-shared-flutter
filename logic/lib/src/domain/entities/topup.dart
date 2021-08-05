import 'package:decimal/decimal.dart';

class Topup {
  final Decimal amount;
  final DateTime timestamp;
  final String txHash;

  Topup({
    required this.amount,
    required this.timestamp,
    required this.txHash,
  });
}
