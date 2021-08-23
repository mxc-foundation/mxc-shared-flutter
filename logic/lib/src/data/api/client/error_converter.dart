import 'dart:async';

import 'package:chopper/chopper.dart';

class ChopperErrorConverter extends ErrorConverter {
  @override
  FutureOr<Response> convertError<BodyType, InnerType>(Response response) {
    final error = response.error;
    if (error is Map<String, dynamic>) {
      throw ApiException(
        (error['message'] ?? error['error'] ?? 'Unknown error') as String,
      );
    }
    if (response.statusCode == 404) {
      throw ApiException(
        'Resource not found: ${response.base.request?.url.toString()}',
      );
    }
    throw ApiException('Unknown error');
  }
}

class ApiException implements Exception {
  final String error;

  ApiException(this.error);
}
