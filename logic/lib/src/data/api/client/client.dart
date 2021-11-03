import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart';
import 'package:meta/meta.dart';
import 'package:mxc_logic/src/data/api/client/authentication.dart';

import '../supernode/supernode.swagger.dart';
import 'cert.dart';
import 'error_converter.dart';

@internal
class SupernodeClient extends ChopperClient {
  final String Function() _getBaseUrl;

  SupernodeClient({
    required String Function() getSupernodeAddress,
    required String? Function()? getToken,
    required Future<String?> Function(SupernodeClient)? refreshToken,
  })  : _getBaseUrl = getSupernodeAddress,
        super(
          converter: JsonSerializableConverter(),
          services: [...supernodeServices],
          client: IOClient(createHttpClientWithCert(isrgx1)),
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
