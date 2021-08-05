import 'package:chopper/chopper.dart';
import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/shared_mappers.dart';

class WalletRepository {
  final ChopperClient _client;

  WalletRepository(this._client);

  Future<Decimal> balance({
    required String orgId,
    required String userId,
    Token? currency,
  }) async {
    final res = await _client.walletService.getWalletBalance(
      userId: userId,
      orgId: orgId,
      currency: currency?.toData() ?? '',
    );
    return res.body!.balance.toDecimal();
  }

  Future<Decimal> miningIncome({
    required String orgId,
    Token? currency,
  }) async {
    final res = await _client.walletService.getWalletMiningIncome(
      orgId: orgId,
      currency: currency?.toData() ?? '',
    );
    return res.body!.miningIncome.toDecimal();
  }

  Future<Decimal> convertUsd({
    required String orgId,
    required String userId,
    required double mxcPrice,
  }) async {
    final res = await _client.walletService.getMXCprice(
      orgId: orgId,
      mxcPrice: mxcPrice.toString(),
      userId: userId,
    );
    return res.body!.mxcPrice.toDecimal();
  }

  Future<void> topUpMiningFuel({
    required String orgId,
    required Map<String, Decimal> macToAmount,
    Token? currency,
  }) async {
    await _client.walletService.topUpGatewayMiningFuel(
      body: ExtapiTopUpGatewayMiningFuelRequest(
        currency: currency?.toData() ?? '',
        orgId: orgId,
        topUps: macToAmount.entries
            .map(
              (e) => ExtapiGatewayMiningFuelChange(
                amount: e.value.toString(),
                gatewayMac: e.key,
              ),
            )
            .toList(),
      ),
    );
  }

  Future<void> withdrawMiningFuel({
    required String orgId,
    required Map<String, Decimal> macToAmount,
    Token? currency,
  }) async {
    await _client.walletService.withdrawGatewayMiningFuel(
      body: ExtapiWithdrawGatewayMiningFuelRequest(
        currency: currency?.toData() ?? '',
        orgId: orgId,
        withdrawals: macToAmount.entries
            .map(
              (e) => ExtapiGatewayMiningFuelChange(
                amount: e.value.toString(),
                gatewayMac: e.key,
              ),
            )
            .toList(),
      ),
    );
  }

  Future<double> downlinkPrice(String orgId) async {
    final res = await _client.walletService.getDlPrice(orgId: orgId);
    return res.body!.downLinkPrice!;
  }
}
