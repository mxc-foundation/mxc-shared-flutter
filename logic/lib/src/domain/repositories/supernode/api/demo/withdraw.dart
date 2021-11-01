import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoWithdrawRepository implements WithdrawRepository {
  const DemoWithdrawRepository();

  @override
  Future<bool> withdraw({
    String? orgId,
    required Decimal amount,
    required Token currency,
    required String address,
    required String otp,
  }) async {
    return true;
  }

  @override
  Future<List<Withdraw>> history({
    Token? currency,
    DateTime? from,
    DateTime? till,
    String? orgId,
  }) async {
    return [
      Withdraw(
        amount: "1000".toDecimal(),
        failReason: "DemoFailReason1",
        timestamp: DateTime.now().add(const Duration(days: -2)),
        txHash: "X10000000000000",
        txStatus: "DemoStatus1",
        withdrawFee: "500".toDecimal(),
      ),
      Withdraw(
        amount: "2000".toDecimal(),
        failReason: "DemoFailReason2",
        timestamp: DateTime.now().add(const Duration(days: -1)),
        txHash: "X20000000000000",
        txStatus: "DemoStatus2",
        withdrawFee: "500".toDecimal(),
      ),
      Withdraw(
        amount: "3000".toDecimal(),
        failReason: "DemoFailReason3",
        timestamp: DateTime.now().add(const Duration(days: -2)),
        txHash: "X30000000000000",
        txStatus: "DemoStatus3",
        withdrawFee: "500".toDecimal(),
      )
    ];
  }

  @override
  Future<Decimal> fee({Token currency = Token.mxc}) async {
    return "300".toDecimal();
  }
}
