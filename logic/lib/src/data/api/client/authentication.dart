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
    map[headerName] = 'Bearer ' + value;
  } else {
    map[headerName] ??= 'Bearer ' + value;
  }
}

class SupernodeAuthenticator extends Authenticator {
  SupernodeAuthenticator({
    required this.refreshToken,
    required this.getSupernodeAddress,
  }) {
    client = SupernodeClient(
      getSupernodeAddress: getSupernodeAddress,
      getToken: null,
      refreshToken: null,
      getDefaultOrganizationId: null,
    );
  }

  late final SupernodeClient client;

  final Future<String?> Function(SupernodeClient) refreshToken;
  final String Function() getSupernodeAddress;

  bool tokenExpired(Response response) =>
      response.statusCode == 401 &&
      !response.bodyString.contains('OTP') &&
      !response.bodyString.contains('global admin') &&
      !response.bodyString.contains('invalid email');

  @override
  FutureOr<Request?> authenticate(Request request, Response response,
      [Request? originalRequest]) {
    if (!tokenExpired(response)) return null;
    return _authenticate(request, response);
  }

  Future<Request?> _authenticate(Request request, Response response) async {
    final newToken = await refreshToken(client);
    if (newToken == null) return null;
    final headers = {...request.headers};
    _addAuthHeader(headers, newToken, override: true);
    return request.copyWith(headers: headers);
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
