import 'package:chopper/chopper.dart';
import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/entities/wallet.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class WalletRepository {
  final ChopperClient _client;

  WalletRepository(this._client);

  Future<Decimal> balance({
    required String orgId,
    Token? currency,
  }) async {
    final res = await _client.walletService.getWalletBalance(
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

  void btcAddLocks(
      {required String durationDays,
      required List<String> listMac,
      required String orgId,
      required String sessionId,
      required String totalAmount}) {
    _client.bTCMining.bTCAddLocks(
        body: ExtapiBTCAddLocksRequest(
            durationDays: durationDays,
            gatewayMac: listMac,
            orgId: orgId,
            sessionId: sessionId,
            totalAmount: totalAmount));
  }

  Future<BtcMiningSession> bTCMiningSession() async {
    final res = await _client.bTCMining.bTCMiningSession();
    return BtcMiningSession(
        sessionId: res.body!.sessionId!,
        mxcLockAmount: res.body!.mxcLockAmount!,
        mxcLockDurationDays: res.body!.mxcLockDurationDays!);
  }

  Future<List<String>> bTCListLocks(String orgId) async {
    final res = await _client.bTCMining.bTCListLocks(orgId: orgId);

    return res.body!.lock!.map((e) => e.gatewayMac!).toList();
  }
}
