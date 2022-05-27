class ApiException implements Exception {
  ApiException(this.url, this.message, this.source);

  final Uri? url;
  final String message;
  final Object? source;

  @override
  String toString() => '$message for $url';
}

class TokenExpiredException extends ApiException {
  TokenExpiredException(Uri? url, String message, Object? source)
      : super(url, message, source);
}
