import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class ReportRepository {
  final ChopperClient client;

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
    required String organizationId,
    required FiatCurrency fiatCurrency,
    required DateTime start,
    required DateTime end,
    required int decimals,
  }) async {
    late final String content;
    switch (format) {
      case ReportFormat.csv:
        final res = await client.reportService.miningReportCSV(
          currency: ["ETH_MXC"],
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
          currency: ["ETH_MXC"],
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