import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';

class NetworkServerRepository {
  final ChopperClient _client;

  NetworkServerRepository(this._client);

  Future<List<NetworkServer>> list({
    required String orgId,
    int? limit,
    int? offset,
  }) async {
    final res = await _client.networkServerService.list(
      limit: limit.toString(),
      offset: offset.toString(),
      organizationID: orgId,
    );
    return res.body!.result!
        .map(
          (e) => NetworkServer(
            name: e.name!,
            server: e.server!,
          ),
        )
        .toList();
  }

  Future<String> version() async {
    final res = await _client.serverInfoService.getAppserverVersion();
    return res.body!.version!;
  }
}
