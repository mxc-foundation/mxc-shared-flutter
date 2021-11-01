import 'package:mxc_logic/mxc_logic.dart';

class DemoDeviceRepository implements DeviceRepository {
  const DemoDeviceRepository();

  @override
  Future<ListWithTotal<Device>> list({
    required int limit,
    required String applicationId,
    int offset = 0,
    String? search,
  }) async {
    return [
      Device(
        name: "DemoName1",
        category: "DemoCateory1",
        lastSeen: DateTime.now().add(Duration(days: -2)),
      ),
      Device(
        name: "DemoName2",
        category: "DemoCateory2",
        lastSeen: DateTime.now().add(Duration(days: -1)),
      ),
      Device(
        name: "DemoName3",
        category: "DemoCateory3",
        lastSeen: DateTime.now(),
      ),
    ].withTotal(3);
  }
}
