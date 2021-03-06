import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class WalletRepository {
  WalletRepository(this._client);

  final SupernodeClient _client;

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

  @Deprecated('APIs do not support anymore')
  Future<void> btcAddLocks({
    required String durationDays,
    required List<String> listMac,
    required String sessionId,
    required String totalAmount,
  }) async {
    throw Exception('No bTCAddLocks method');
  }

  Future<BtcMiningSession> bTCMiningSession() async {
    const int errorCodeNoSession = 5;
    try {
      final res = await _client.bTCMining.bTCMiningSession();
      return BtcMiningSession(
          res.body!.sessionId!,
          res.body!.mxcLockAmount!.toInt(),
          res.body!.startDate!,
          res.body!.endDate!,
          res.body!.mxcLockDurationDays!.toInt());
    } on ApiException catch (e) {
      final Object? error = e.source;
      if (error != null &&
          error is Map<String, dynamic> &&
          error['code'] == errorCodeNoSession) {
        throw NoBtcMiningSessionException(e.url, e.message);
      }
      rethrow;
    }
  }

  Future<List<BtcLock>> bTCListLocks() async {
    final res = await _client.bTCMining
        .bTCListLocks(orgId: _client.defaultOrganizationId);

    return res.body!.lock!
        .map(
          (e) => BtcLock(
            id: e.id!,
            created: e.created!,
            amount: e.amount!.toDecimal(),
            gatewayMac: e.gatewayMac!,
            unlockFrom: e.unlockFrom!,
            lockTill: e.lockTill!,
            unlocked: e.unlocked!,
            coolingOffEnds: e.coolingOffEnds!,
          ),
        )
        .toList();
  }
}
