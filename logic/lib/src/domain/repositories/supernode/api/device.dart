import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class DeviceRepository {
  final ChopperClient _client;

  DeviceRepository(this._client);

  Future<ListWithTotal<Device>> list(
      {int offset = 0,
      int limit = 10,
      String? applicationID,
      String? search,
      String? multicastGroupID,
      String? serviceProfileID}) async {
    final res = await _client.deviceService.list(
        offset: offset.toString(),
        limit: limit.toString(),
        //organizationID: organizationID,
        search: search,
        multicastGroupID: multicastGroupID,
        serviceProfileID: serviceProfileID);
    return res.body!.result!
        .map(
          (e) => Device(
              applicationID: e.applicationID.orDefault(),
              description: e.description.orDefault(),
              devEUI: e.devEUI.orDefault(),
              deviceProfileID: e.deviceProfileID.orDefault(),
              deviceProfileName: e.deviceProfileName.orDefault(),
              deviceStatusBattery: e.deviceStatusBattery.orDefault(),
              deviceStatusBatteryLevel: e.deviceStatusBatteryLevel.orDefault(),
              deviceStatusBatteryLevelUnavailable:
                  e.deviceStatusBatteryLevelUnavailable.orDefault(),
              deviceStatusExternalPowerSource:
                  e.deviceStatusExternalPowerSource.orDefault(),
              deviceStatusMargin: e.deviceStatusMargin.orDefault(),
              lastSeen: e.lastSeenAt,
              name: e.name.orDefault()),
        )
        .toList()
        .withTotal(res.body!.totalCount.toInt());
  }
}
