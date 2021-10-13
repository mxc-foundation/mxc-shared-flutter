import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class TopupRepository {
  final SupernodeClient _client;

  TopupRepository(this._client);

  Future<List<Topup>> history({
    Token? currency,
    DateTime? from,
    DateTime? till,
    String? orgId,
  }) async {
    final history = await _client.topUpService.getTopUpHistory(
      body: ExtapiGetTopUpHistoryRequest(
        currency: currency?.toData(),
        from: (from ?? Values.dateMin).toUtc(),
        till: (till ?? Values.dateMax).toUtc(),
        orgId: orgId ?? _client.defaultOrganizationId,
      ),
    );
    return history.body!.topupHistory!
        .map(
          (e) => Topup(
            amount: e.amount.toDecimal(),
            timestamp: e.timestamp!,
            txHash: e.txHash!,
          ),
        )
        .toList();
  }

  Future<String> account({
    String? orgId,
    Token? currency,
  }) async {
    final account = await _client.topUpService.getTopUpDestination(
      orgId: orgId ?? _client.defaultOrganizationId,
      currency: currency?.toData(),
    );
    return account.body!.activeAccount!;
  }
}
