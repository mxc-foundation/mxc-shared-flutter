import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DemoTopupRepository implements TopupRepository {
  const DemoTopupRepository();

  @override
  Future<List<Topup>> history({
    Token? currency,
    DateTime? from,
    DateTime? till,
    String? orgId,
  }) async {
    return [
      Topup(
        amount: '1000'.toDecimal(),
        timestamp: DateTime.now().add(const Duration(days: -2)),
        txHash: 'DemoTxHash123456789',
      ),
      Topup(
        amount: '2000'.toDecimal(),
        timestamp: DateTime.now().add(const Duration(days: -1)),
        txHash: 'DemoTxHash123456789',
      ),
      Topup(
        amount: '3000'.toDecimal(),
        timestamp: DateTime.now(),
        txHash: 'DemoTxHash123456789',
      ),
    ];
  }

  @override
  Future<String> account({
    String? orgId,
    Token? currency,
  }) async {
    return '0x00000000000000';
  }
}
