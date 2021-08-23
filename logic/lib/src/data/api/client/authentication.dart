import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';

import 'client.dart';

void _addAuthHeader(
  Map<String, String> map,
  String value, {
  bool override = false,
}) {
  const headerName = 'Grpc-Metadata-Authorization';
  if (override) {
    map[headerName] = value;
  } else {
    map[headerName] ??= value;
  }
}

class SupernodeAuthenticator extends Authenticator {
  late final SupernodeClient client;

  final Future<String?> Function(SupernodeClient) refreshToken;
  final String Function() getSupernodeAddress;

  SupernodeAuthenticator({
    required this.refreshToken,
    required this.getSupernodeAddress,
  }) {
    client = SupernodeClient(
      getSupernodeAddress: getSupernodeAddress,
      getToken: null,
      refreshToken: null,
    );
  }

  bool tokenExpired(Response response) =>
      response.statusCode == 401 && !response.bodyString.contains('OTP');

  @override
  FutureOr<Request?> authenticate(Request request, Response response) {
    if (!tokenExpired(response)) return null;
    return _authenticate(request, response);
  }

  Future<Request?> _authenticate(Request request, Response response) async {
    final newToken = await refreshToken(client);
    if (newToken == null) return null;
    _addAuthHeader(request.headers, newToken, override: true);
    return request;
  }
}

@immutable
class TokenInterceptor implements RequestInterceptor {
  final String? Function() getToken;

  const TokenInterceptor({
    required this.getToken,
  });

  @override
  Future<Request> onRequest(Request request) async {
    final token = getToken();
    if (token != null) _addAuthHeader(request.headers, token);
    return request;
  }
}
