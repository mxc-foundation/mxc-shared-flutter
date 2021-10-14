import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/api/client/error_converter.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/entities/wallet.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class WalletRepository {
  final SupernodeClient _client;

  WalletRepository(this._client);

  Future<Decimal> balance({
    String? orgId,
    Token? currency,
  }) async {
    final res = await _client.walletService.getWalletBalance(
      orgId: orgId ?? _client.defaultOrganizationId,
      currency: currency?.toData() ?? '',
    );
    return res.body!.balance.toDecimal();
  }

  Future<Decimal> miningIncome({
    String? orgId,
    Token? currency,
  }) async {
    final res = await _client.walletService.getWalletMiningIncome(
      orgId: orgId ?? _client.defaultOrganizationId,
      currency: currency?.toData() ?? '',
    );
    return res.body!.miningIncome.toDecimal();
  }

  Future<Decimal> convertUsd({
    String? orgId,
    required String userId,
    required double mxcPrice,
  }) async {
    final res = await _client.walletService.getMXCprice(
      orgId: orgId ?? _client.defaultOrganizationId,
      mxcPrice: mxcPrice.toString(),
      userId: userId,
    );
    return res.body!.mxcPrice.toDecimal();
  }

  Future<void> topUpMiningFuel({
    String? orgId,
    required Map<String, Decimal> macToAmount,
  }) async {
    await _client.walletService.topUpGatewayMiningFuel(
      body: ExtapiTopUpGatewayMiningFuelRequest(
        currency: Token.mxc.toData(),
        orgId: orgId ?? _client.defaultOrganizationId,
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
    String? orgId,
    required Map<String, Decimal> macToAmount,
  }) async {
    await _client.walletService.withdrawGatewayMiningFuel(
      body: ExtapiWithdrawGatewayMiningFuelRequest(
        currency: Token.mxc.toData(),
        orgId: orgId ?? _client.defaultOrganizationId,
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

  Future<double> downlinkPrice({String? orgId}) async {
    final res = await _client.walletService
        .getDlPrice(orgId: orgId ?? _client.defaultOrganizationId);
    return res.body!.downLinkPrice!;
  }

  Future<void> btcAddLocks(
      {required String durationDays,
      required List<String> listMac,
      String? orgId,
      required String sessionId,
      required String totalAmount}) async {
    await _client.bTCMining.bTCAddLocks(
        body: ExtapiBTCAddLocksRequest(
            durationDays: durationDays,
            gatewayMac: listMac,
            orgId: orgId ?? _client.defaultOrganizationId,
            sessionId: sessionId,
            totalAmount: totalAmount));
  }

  Future<BtcMiningSession> bTCMiningSession() async {
    try {
      final res = await _client.bTCMining.bTCMiningSession();
      return BtcMiningSession(
          sessionId: res.body!.sessionId!,
          mxcLockAmount: res.body!.mxcLockAmount!.toInt(),
          startSession: res.body!.startDate!,
          endSession: res.body!.endDate!,
          mxcLockDurationDays: res.body!.mxcLockDurationDays!.toInt());
    } on ApiException catch (e) {
      final Object? error = e.source;
      if (error != null &&
          error is Map<String, dynamic> &&
          error['code'] == 5) {
        throw NoBtcMiningSessionException(e.url, e.message);
      }
      rethrow;
    }
  }

  Future<List<BtcLock>> bTCListLocks({String? orgId}) async {
    final res = await _client.bTCMining
        .bTCListLocks(orgId: orgId ?? _client.defaultOrganizationId);

    return res.body!.lock!
        .map((e) => BtcLock(gatewayMac: e.gatewayMac!, sessionId: e.sessionId!))
        .toList();
  }
}
