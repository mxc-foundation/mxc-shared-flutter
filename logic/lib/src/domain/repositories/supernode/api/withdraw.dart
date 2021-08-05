import 'package:chopper/chopper.dart';
import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/shared_mappers.dart';

class WithdrawRepository {
  final ChopperClient _client;

  WithdrawRepository(this._client);

  Future<bool> withdraw({
    required String orgId,
    required Decimal amount,
    required Token currency,
    required String address,
    required String otp,
  }) async {
    final res = await _client.withdrawService.getWithdraw(
      body: ExtapiGetWithdrawRequest(
        amount: amount.toString(),
        currency: currency.toData(),
        ethAddress: address,
        orgId: orgId,
      ),
      grpcMetadataXOTP: otp,
    );
    return res.body!.status!;
  }

  Future<List<Withdraw>> history({
    Token? currency,
    DateTime? from,
    DateTime? till,
    required String orgId,
  }) async {
    final res = await _client.withdrawService.getWithdrawHistory(
      currency: currency?.toData(),
      from: from?.toData(),
      till: till?.toData(),
      orgId: orgId,
    );
    return res.body!.withdrawHistory!
        .map(
          (e) => Withdraw(
            amount: e.amount.toDecimal(),
            failReason: e.denyComment,
            timestamp: e.timestamp!,
            txHash: e.txHash!,
            txStatus: e.txStatus!,
            withdrawFee: e.withdrawFee.toDecimal(),
          ),
        )
        .toList();
  }

  Future<Decimal> fee({Token currency = Token.mxc}) async {
    final res = await _client.withdrawService.getWithdrawFee(
      currency: currency.toData(),
    );
    return res.body!.withdrawFee.toDecimal();
  }
}
