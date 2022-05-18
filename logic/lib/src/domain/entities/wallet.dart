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
    required this.amount,
    required this.btcRevenue,
    required this.created,
    required this.gatewayMac,
    required this.id,
    required this.lockTill,
    required this.sessionId,
  });

  final Decimal amount;
  final Decimal btcRevenue;
  final DateTime created;
  final String gatewayMac;
  final String id;
  final DateTime lockTill;
  final String sessionId;
}

class NoBtcMiningSessionException implements Exception {
  NoBtcMiningSessionException(this.url, this.message);

  final Uri? url;
  final String message;

  @override
  String toString() => '$message for $url';
}
