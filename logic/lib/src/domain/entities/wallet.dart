import 'package:decimal/decimal.dart';

class BtcMiningSession {
  final String sessionId;
  final int mxcLockAmount;
  final DateTime startSession;
  final DateTime endSession;
  final int mxcLockDurationDays;

  BtcMiningSession({
    required this.sessionId,
    required this.mxcLockAmount,
    required this.startSession,
    required this.endSession,
    required this.mxcLockDurationDays,
  });
}

class BtcLock {
  final String gatewayMac;
  final String sessionId;
  final int amountLocked;
  final Decimal btcRevenue;

  BtcLock({
    required this.gatewayMac,
    required this.sessionId,
    required this.amountLocked,
    required this.btcRevenue,
  });
}

class NoBtcMiningSessionException implements Exception {
  final Uri? url;
  final String message;

  NoBtcMiningSessionException(this.url, this.message);

  @override
  String toString() => '$message for $url';
}
