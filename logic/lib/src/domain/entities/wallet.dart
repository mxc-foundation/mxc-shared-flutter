import 'package:decimal/decimal.dart';

class BtcMiningSession {
  BtcMiningSession({
    required this.sessionId,
    required this.mxcLockAmount,
    required this.startSession,
    required this.endSession,
    required this.mxcLockDurationDays,
  });

  final String sessionId;
  final int mxcLockAmount;
  final DateTime startSession;
  final DateTime endSession;
  final int mxcLockDurationDays;
}

class BtcLock {
  BtcLock({
    required this.gatewayMac,
    required this.sessionId,
    required this.amountLocked,
    required this.btcRevenue,
  });

  final String gatewayMac;
  final String sessionId;
  final int amountLocked;
  final Decimal btcRevenue;
}

class NoBtcMiningSessionException implements Exception {
  NoBtcMiningSessionException(this.url, this.message);

  final Uri? url;
  final String message;

  @override
  String toString() => '$message for $url';
}
