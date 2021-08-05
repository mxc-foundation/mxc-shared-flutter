import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/shared_mappers.dart';

class TopupRepository {
  final ChopperClient _client;

  TopupRepository(this._client);

  Future<List<Topup>> history({
    Token? currency,
    DateTime? from,
    DateTime? till,
    required String orgId,
  }) async {
    final history = await _client.topUpService.getTopUpHistory(
      body: ExtapiGetTopUpHistoryRequest(
        currency: currency?.toData(),
        from: from,
        till: till,
        orgId: orgId,
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
    required String orgId,
    Token? currency,
  }) async {
    final account = await _client.topUpService.getTopUpDestination(
      orgId: orgId,
      currency: currency?.toData(),
    );
    return account.body!.activeAccount!;
  }
}
