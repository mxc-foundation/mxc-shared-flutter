import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class WithdrawRepository {
  WithdrawRepository(this._client);

  final SupernodeClient _client;

  Future<bool> withdraw({
    String? orgId,
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
        orgId: orgId ?? _client.defaultOrganizationId,
      ),
      grpcMetadataXOTP: otp,
    );
    return res.body!.status!;
  }

  Future<List<Withdraw>> history({
    Token? currency,
    DateTime? from,
    DateTime? till,
    String? orgId,
  }) async {
    final res = await _client.withdrawService.getWithdrawHistory(
      currency: currency?.toData(),
      from: (from ?? Values.dateMin).toData(),
      till: (till ?? Values.dateMax).toData(),
      orgId: orgId ?? _client.defaultOrganizationId,
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

  Future<Decimal> fee({Token currency = Token.mxc, String? amount}) async {
    final res = await _client.withdrawService.getWithdrawFee(
      currency: currency.toData(),
      amount: amount
    );
    return res.body!.withdrawFee.toDecimal();
  }
}
