import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';
import 'package:mxc_logic/mxc_logic.dart';

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
  final StreamController<void> _onTokenExpired = StreamController.broadcast();
  Stream<void> get onTokenExpired => _onTokenExpired.stream;

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
    _onTokenExpired.add(null);
    throw TokenExpiredException();
  }

  void dispose() {
    _onTokenExpired.close();
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
    final token = getToken()?.toLowerCase();
    if (token != null) {
      final headers = {...request.headers};
      _addAuthHeader(headers, token);
      return request.copyWith(headers: headers);
    }
    return request;
  }
}
