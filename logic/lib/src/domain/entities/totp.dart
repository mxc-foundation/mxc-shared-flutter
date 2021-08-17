class TotpConfiguration {
  final String qrCode;
  final List<String> recoveryCodes;
  final String secret;
  final String url;

  TotpConfiguration({
    required this.qrCode,
    required this.recoveryCodes,
    required this.secret,
    required this.url,
  });
}
