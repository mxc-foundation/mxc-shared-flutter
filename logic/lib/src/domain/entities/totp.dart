class TotpConfiguration {
  TotpConfiguration({
    required this.qrCode,
    required this.recoveryCodes,
    required this.secret,
    required this.url,
  });

  final String qrCode;
  final List<String> recoveryCodes;
  final String secret;
  final String url;
}
