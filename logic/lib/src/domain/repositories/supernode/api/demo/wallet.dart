import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoWalletRepository implements WalletRepository {
  DemoWalletRepository();

  Future<Decimal> balance({
    String? orgId,
    Token? currency,
  }) async {
    return "10000".toDecimal();
  }

  Future<Decimal> miningIncome({
    String? orgId,
    Token? currency,
  }) async {
    return "20000".toDecimal();
  }

  Future<Decimal> convertUsd({
    String? orgId,
    required String userId,
    required double mxcPrice,
  }) async {
    return "0.8".toDecimal();
  }

  Future<void> topUpMiningFuel({
    String? orgId,
    required Map<String, Decimal> macToAmount,
  }) =>
      throw UnimplementedError();

  Future<void> withdrawMiningFuel({
    String? orgId,
    required Map<String, Decimal> macToAmount,
  }) =>
      throw UnimplementedError();

  Future<double> downlinkPrice({String? orgId}) async {
    return 1000.123;
  }
}
