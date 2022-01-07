import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:chopper/chopper.dart';

class ChopperErrorConverter extends ErrorConverter {
  @override
  FutureOr<Response> convertError<BodyType, InnerType>(Response response) {
    late final Object? error;
    try {
      error = jsonDecode(response.bodyString);
    } on FormatException {
      error = null;
    }
    if (error is Map<String, dynamic>) {
      final exception = ApiException(
        response.base.request?.url,
        (error['message'] ?? error['error'] ?? 'Unknown error') as String,
        error,
      );
      if (exception.message.contains('couldn' 't find JWT token')) {
        log(
          'Missing JWT Token. This situation is expected if logging out has been performed',
          error: exception,
        );
      } else {
        throw ApiException(
          response.base.request?.url,
          (error['message'] ?? error['error'] ?? 'Unknown error') as String,
          error,
        );
      }
    }
    if (response.statusCode == 404) {
      throw ApiException(
        response.base.request?.url,
        'Resource not found.',
        error,
      );
    }
    throw ApiException(
      response.base.request?.url,
      'Unknown error. ${response.bodyString}',
      error,
    );
  }
}

class ApiException implements Exception {
  ApiException(this.url, this.message, this.source);

  final Uri? url;
  final String message;
  final Object? source;

  @override
  String toString() => '$message for $url';
}
