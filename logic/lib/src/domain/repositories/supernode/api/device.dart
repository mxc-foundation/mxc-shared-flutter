import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DeviceRepository {
  DeviceRepository(this._client);

  final ChopperClient _client;

  Future<ListWithTotal<Device>> list({
    required int limit,
    required String applicationId,
    int offset = 0,
    String? search,
  }) async {
    final res = await _client.deviceService.list(
      offset: offset.toString(),
      limit: limit.toString(),
      search: search,
      applicationID: applicationId,
    );
    return res.body!.result!
        .map(
          (e) => Device(
            name: e.name.orDefault(),
            category: e.deviceProfileName.orDefault(),
            lastSeen: e.lastSeenAt,
          ),
        )
        .toList()
        .withTotal(res.body!.totalCount.toInt());
  }
}
