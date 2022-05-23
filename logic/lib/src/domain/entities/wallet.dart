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
    required this.id,
    required this.created,
    required this.amount,
    required this.gatewayMac,
    this.unlockFrom,
    this.lockTill,
    this.unlocked,
    this.coolingOffEnds,
  });

  final String id;
  final DateTime created;
  final Decimal amount;
  final String gatewayMac;
  final DateTime? unlockFrom;
  final DateTime? lockTill;
  final DateTime? unlocked;
  final DateTime? coolingOffEnds;
}

class NoBtcMiningSessionException implements Exception {
  NoBtcMiningSessionException(this.url, this.message);

  final Uri? url;
  final String message;

  @override
  String toString() => '$message for $url';
}
