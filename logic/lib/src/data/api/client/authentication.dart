import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';

void _addAuthHeader(
  Map<String, String> map,
  String value, {
  bool override = false,
}) {
  const headerName = 'Grpc-Metadata-Authorization';
  if (override) {
    map[headerName] = 'Bearer ' + value;
  } else {
    map[headerName] ??= 'Bearer ' + value;
  }
}

class SupernodeAuthenticator extends Authenticator {
  SupernodeAuthenticator({
    required this.onTokenExpired,
  });

  final Future<void> Function() onTokenExpired;

  bool tokenExpired(Response response) =>
      response.statusCode == 401 &&
      (response.bodyString.contains(
              'authentication failed: invalid authorization header') ||
          response.bodyString
              .contains('authentication failed: token does not exist') ||
          response.bodyString
              .contains('not authenticated: token does not exist'));

  @override
  FutureOr<Request?> authenticate(Request request, Response response,
      [Request? originalRequest]) async {
    if (!tokenExpired(response)) return null;
    await onTokenExpired();
    return null;
  }
}

@immutable
class TokenInterceptor implements RequestInterceptor {
  const TokenInterceptor({
    required this.getToken,
  });

  final String? Function() getToken;

  @override
  Future<Request> onRequest(Request request) async {
    final token = getToken();
    if (token != null) {
      final headers = {...request.headers};
      _addAuthHeader(headers, token);
      return request.copyWith(headers: headers);
    }
    return request;
  }
}
