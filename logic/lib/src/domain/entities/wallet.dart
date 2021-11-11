import 'dart:math';

import 'package:decimal/decimal.dart';

class BtcMiningSession {
  final String sessionId;
  final int mxcLockAmount;
  final DateTime startSession;
  final DateTime endSession;
  final int _mxcLockDurationDays;

  int get mxcLockDurationDays =>
      _mxcLockDurationDays +
      max(0, startSession.difference(DateTime.now()).inDays);

  BtcMiningSession(
    this.sessionId,
    this.mxcLockAmount,
    this.startSession,
    this.endSession,
    this._mxcLockDurationDays,
  );
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
