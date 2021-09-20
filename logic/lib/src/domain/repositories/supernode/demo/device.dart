import 'package:mxc_logic/mxc_logic.dart';

class DeviceDemoRepository {
  DeviceDemoRepository();
  
  @override
  Future<ListWithTotal<Device>> list({
    int offset = 0,
    required int limit,
    String? applicationID,
    String? search,
    String? multicastGroupID,
    String? serviceProfileID
  }) async {
    return [
      Device(
        applicationID: "applicationID1",
        name: "device_name1",
        description: "description1",
        devEUI: "devEUI1",
        deviceProfileID: "deviceProfileID1",
        deviceProfileName: "deviceProfileName1",
        deviceStatusBattery: 1,
        deviceStatusBatteryLevel: 1.1,
        deviceStatusBatteryLevelUnavailable: true,
        deviceStatusExternalPowerSource: false,
        deviceStatusMargin: 1,
        lastSeen: DateTime.now(),
      ),
       Device(
        applicationID: "applicationID2",
        name: "name2",
        description: "description2",
        devEUI: "devEUI2",
        deviceProfileID: "deviceProfileID2",
        deviceProfileName: "deviceProfileName2",
        deviceStatusBattery: 2,
        deviceStatusBatteryLevel: 2.2,
        deviceStatusBatteryLevelUnavailable: true,
        deviceStatusExternalPowerSource: false,
        deviceStatusMargin: 2,
        lastSeen: DateTime.now()
      ),
    ].withTotal(2);
  }
}