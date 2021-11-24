import 'dart:math';

import 'package:decimal/decimal.dart';

class BtcMiningSession {
  BtcMiningSession(
    this.sessionId,
    this.mxcLockAmount,
    this.startSession,
    this.endSession,
    this._mxcLockDurationDays,
  );

  final String sessionId;
  final int mxcLockAmount;
  final DateTime startSession;
  final DateTime endSession;
  final int _mxcLockDurationDays;

  /// Lock duration from backend session config, extended if session start date is in the future
  int get mxcLockDurationDays =>
      _mxcLockDurationDays +
      max(0, startSession.difference(DateTime.now()).inDays);

  /// Lock duration from backend session config, needed for lock API call
  int get mxcLockDurationDaysFromBackend => _mxcLockDurationDays;
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
