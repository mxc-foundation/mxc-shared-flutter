import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';
import 'package:mxc_logic/src/data/api/client/authentication.dart';

import '../supernode/client_index.dart';
import '../supernode/supernode.swagger.dart';
import 'error_converter.dart';

@internal
class SupernodeClient extends ChopperClient {
  final String Function() _getBaseUrl;
  final String? Function() _getDefaultOrganizationId;
  final String? Function() _getToken;

  SupernodeClient({
    required String Function() getSupernodeAddress,
    required String? Function()? getToken,
    required Future<String?> Function(SupernodeClient)? refreshToken,
    required String? Function()? getDefaultOrganizationId,
  })  : _getBaseUrl = getSupernodeAddress,
        _getDefaultOrganizationId = getDefaultOrganizationId ?? (() {}),
        _getToken = getToken ?? (() {}),
        super(
          converter: JsonSerializableConverter(),
          services: [...supernodeServices],
          authenticator: refreshToken == null
              ? null
              : SupernodeAuthenticator(
                  refreshToken: refreshToken,
                  getSupernodeAddress: getSupernodeAddress,
                ),
          interceptors: <Object>[
            HttpLoggingInterceptor(),
            if (getToken != null) TokenInterceptor(getToken: getToken),
          ],
          errorConverter: ChopperErrorConverter(),
        );

  @override
  String get baseUrl => _getBaseUrl();

  String? get defaultOrganizationId => _getDefaultOrganizationId();

  String? get token => _getToken();
}
