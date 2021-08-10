import 'package:chopper/chopper.dart';

import 'package:meta/meta.dart';
import 'error_converter.dart';
import 'supernode/client_index.dart';

export 'supernode/client_index.dart';
export 'supernode/supernode.swagger.dart';

@internal
ChopperClient createClient(String baseUrl) {
  return ChopperClient(
    baseUrl: baseUrl,
    converter: const JsonConverter(),
    services: [...supernodeServices],
    errorConverter: ChopperErrorConverter(),
  );
}
