import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DeviceRepository {
  final ChopperClient _client;

  DeviceRepository(this._client);

  Future<ListWithTotal<Device>> list({
    int offset = 0,
    required int limit,
    String? search,
  }) async {
    final res = await _client.deviceService.list(
      offset: offset.toString(),
      limit: limit.toString(),
      search: search,
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
