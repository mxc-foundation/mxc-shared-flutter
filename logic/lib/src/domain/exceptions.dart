class DomainException implements Exception {
  DomainException(this.message);

  final String message;
}

class TokenExpiredException implements Exception {}
