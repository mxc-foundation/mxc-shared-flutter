import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoWalletRepository implements WalletRepository {
  const DemoWalletRepository();

  @override
  Future<Decimal> balance({
    String? orgId,
    Token? currency,
  }) async {
    return "10000".toDecimal();
  }

  @override
  Future<Decimal> miningIncome({
    String? orgId,
    Token? currency,
  }) async {
    return "20000".toDecimal();
  }

  @override
  Future<Decimal> convertUsd({
    String? orgId,
    required String userId,
    required double mxcPrice,
  }) async {
    return "0.8".toDecimal();
  }

  @override
  Future<void> topUpMiningFuel({
    String? orgId,
    required Map<String, Decimal> macToAmount,
  }) =>
      throw UnimplementedError();

  @override
  Future<void> withdrawMiningFuel({
    String? orgId,
    required Map<String, Decimal> macToAmount,
  }) =>
      throw UnimplementedError();

  @override
  Future<double> downlinkPrice({String? orgId}) async {
    return 1000.123;
  }

  @override
  Future<List<BtcLock>> bTCListLocks() {
    // TODO: implement bTCListLocks
    throw UnimplementedError();
  }

  @override
  Future<BtcMiningSession> bTCMiningSession() {
    // TODO: implement bTCMiningSession
    throw UnimplementedError();
  }

  @override
  Future<void> btcAddLocks({
    required String durationDays,
    required List<String> listMac,
    required String sessionId,
    required String totalAmount,
  }) {
    // TODO: implement btcAddLocks
    throw UnimplementedError();
  }
}
