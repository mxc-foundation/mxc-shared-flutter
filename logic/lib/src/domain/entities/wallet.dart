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

  BtcLock({
    required this.gatewayMac,
    required this.sessionId,
  });
}
