import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/api/client/client.dart';

class DemoReportRepository implements ReportRepository {
  const DemoReportRepository();

  @override
  Future<List<FiatCurrency>> supportedFiatCurrencies() async {
    return [
      FiatCurrency(
        id: 'DemoId1',
        description: 'DemoDescription1',
      ),
      FiatCurrency(
        id: 'DemoId2',
        description: 'DemoDescription2',
      ),
      FiatCurrency(
        id: 'DemoId3',
        description: 'DemoDescription3',
      ),
    ];
  }

  /// Gets mining income report and returns base64-encoded report
  @override
  Future<String> miningIncomeReport({
    required Token token,
    required ReportFormat format,
    required FiatCurrency fiatCurrency,
    required DateTime start,
    required DateTime end,
    required int decimals,
    String? organizationId,
  }) async {
    return 'DemoBase64EncodedReport';
  }

  @override
  SupernodeClient get client => throw UnimplementedError();
}
