import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart';
import 'package:meta/meta.dart';
import 'package:mxc_logic/internal.dart';
import 'package:mxc_logic/src/data/api/client/authentication.dart';

import 'cert.dart';
import 'error_converter.dart';

@internal
class SupernodeClient extends ChopperClient {
  SupernodeClient._({
    required SupernodeAuthenticator authenticator,
    required String Function() getSupernodeAddress,
    required String? Function()? getDefaultOrganizationId,
    required String? Function()? getToken,
  })  : _authenticator = authenticator,
        _getBaseUrl = getSupernodeAddress,
        _getDefaultOrganizationId = getDefaultOrganizationId ?? (() => null),
        _getToken = getToken ?? (() => null),
        super(
          converter: JsonSerializableConverter(),
          services: [...supernodeServices],
          client: IOClient(createHttpClientWithCert(isrgx1)),
          interceptors: <Object>[
            HttpLoggingInterceptor(),
            if (getToken != null) TokenInterceptor(getToken: getToken),
          ],
          authenticator: authenticator,
          errorConverter: ChopperErrorConverter(getToken),
        );

  factory SupernodeClient({
    required String Function() getSupernodeAddress,
    required String? Function()? getToken,
    required String? Function()? getDefaultOrganizationId,
  }) {
    final authenticator = SupernodeAuthenticator();
    return SupernodeClient._(
      authenticator: authenticator,
      getSupernodeAddress: getSupernodeAddress,
      getDefaultOrganizationId: getDefaultOrganizationId,
      getToken: getToken,
    );
  }

  final SupernodeAuthenticator _authenticator;

  final String Function() _getBaseUrl;
  final String? Function() _getDefaultOrganizationId;
  final String? Function() _getToken;

  Stream<void> get onTokenExpired => _authenticator.onTokenExpired;

  @override
  String get baseUrl => _getBaseUrl();

  String? get defaultOrganizationId => _getDefaultOrganizationId();

  String? get token => _getToken();

  @override
  void dispose() {
    super.dispose();
    _authenticator.dispose();
  }
}
