import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class NetworkServerRepository {
  NetworkServerRepository(this._client);

  final SupernodeClient _client;

  Future<List<NetworkServer>> list({
    String? orgId,
    int? limit,
    int? offset,
  }) async {
    final res = await _client.networkServerService.list(
      limit: (limit ?? Values.intMax).toString(),
      offset: (offset ?? 0).toString(),
      organizationID: orgId ?? _client.defaultOrganizationId,
    );
    return res.body!.result!
        .map(
          (e) => NetworkServer(
            id: e.id!,
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
