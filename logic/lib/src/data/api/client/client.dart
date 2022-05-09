import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart';
import 'package:meta/meta.dart';
import 'package:mxc_logic/internal.dart';
import 'package:mxc_logic/src/data/api/client/authentication.dart';

import 'cert.dart';
import 'error_converter.dart';

@internal
class SupernodeClient extends ChopperClient {
  SupernodeClient({
    required String Function() getSupernodeAddress,
    required String? Function()? getToken,
    required String? Function()? getDefaultOrganizationId,
    required Future<void> Function() onTokenExpired,
  })  : _getBaseUrl = getSupernodeAddress,
        _getDefaultOrganizationId = getDefaultOrganizationId ??
            (() {
              return null;
            }),
        _getToken = getToken ??
            (() {
              return null;
            }),
        super(
          converter: JsonSerializableConverter(),
          services: [...supernodeServices],
          client: IOClient(createHttpClientWithCert(isrgx1)),
          interceptors: <Object>[
            HttpLoggingInterceptor(),
            if (getToken != null) TokenInterceptor(getToken: getToken),
          ],
          authenticator: SupernodeAuthenticator(onTokenExpired: onTokenExpired),
          errorConverter: ChopperErrorConverter(getToken),
        );

  final String Function() _getBaseUrl;
  final String? Function() _getDefaultOrganizationId;
  final String? Function() _getToken;

  @override
  String get baseUrl => _getBaseUrl();

  String? get defaultOrganizationId => _getDefaultOrganizationId();

  String? get token => _getToken();
}
