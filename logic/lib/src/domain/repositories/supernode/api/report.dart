import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class ReportRepository {
  final SupernodeClient client;

  ReportRepository(this.client);

  Future<List<FiatCurrency>> supportedFiatCurrencies() async {
    final res = await client.reportService.getFiatCurrencyList();
    return res.body!.fiatCurrencyList!
        .map(
          (e) => FiatCurrency(
            id: e.id!,
            description: e.description.orDefault(),
          ),
        )
        .toList();
  }

  /// Gets mining income report and returns base64-encoded report
  Future<String> miningIncomeReport({
    required ReportFormat format,
    required FiatCurrency fiatCurrency,
    required DateTime start,
    required DateTime end,
    required int decimals,
    String? organizationId,
  }) async {
    late final String content;
    organizationId ??= client.defaultOrganizationId;
    switch (format) {
      case ReportFormat.csv:
        final res = await client.reportService.miningReportCSV(
          currency: [Token.mxc.toData()],
          decimals: decimals,
          fiatCurrency: fiatCurrency.id,
          organizationId: organizationId,
          start: start.toUtc().toIso8601String(),
          end: end.toUtc().toIso8601String(),
        );
        content = res.body!.result!.data!;
        return content;
      case ReportFormat.pdf:
        final res = await client.reportService.miningReportPDF(
          currency: [Token.mxc.toData()],
          decimals: decimals,
          fiatCurrency: fiatCurrency.id,
          organizationId: organizationId,
          start: start.toUtc().toIso8601String(),
          end: end.toUtc().toIso8601String(),
        );
        content = res.body!.result!.data!;
        return content;
    }
  }
}
