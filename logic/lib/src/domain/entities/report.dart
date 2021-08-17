enum ReportFormat { csv, pdf }

class FiatCurrency {
  final String id;
  final String description;
  FiatCurrency({
    required this.id,
    required this.description,
  });
}
