import 'package:chopper/chopper.dart';

import 'package:meta/meta.dart';
import 'package:mxc_logic/src/data/api/authentication.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'error_converter.dart';
import 'supernode/client_index.dart';

export 'supernode/client_index.dart';
export 'supernode/supernode.swagger.dart';

@internal
class SupernodeClient extends ChopperClient {
  final String Function() _getBaseUrl;

  SupernodeClient({
    required String Function() getSupernodeAddress,
    required String? Function()? getToken,
    required Future<String> Function(SupernodeClient)? refreshToken,
  })  : _getBaseUrl = getSupernodeAddress,
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
}
