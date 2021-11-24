enum ReportFormat { csv, pdf }

class FiatCurrency {
  FiatCurrency({
    required this.id,
    required this.description,
  });

  final String id;
  final String description;
}
