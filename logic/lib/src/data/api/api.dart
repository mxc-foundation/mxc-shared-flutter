import 'package:chopper/chopper.dart';

import 'package:meta/meta.dart';
import 'error_converter.dart';
import 'supernode/client_index.dart';

export 'supernode/client_index.dart';
export 'supernode/supernode.swagger.dart';

@internal
class SupernodeClient extends ChopperClient {
  SupernodeClient({
    required String Function() getSupernodeAddress,
  })  : _getBaseUrl = getSupernodeAddress,
        super(
          converter: const JsonConverter(),
          services: [...supernodeServices],
          errorConverter: ChopperErrorConverter(),
        );

  final String Function() _getBaseUrl;
  @override
  String get baseUrl => _getBaseUrl();
}
