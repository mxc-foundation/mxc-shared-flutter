import 'package:mxc_logic/mxc_logic.dart';

class DemoNetworkServerRepository implements NetworkServerRepository {
  DemoNetworkServerRepository();

  Future<List<NetworkServer>> list({
    String? orgId,
    int? limit,
    int? offset,
  }) async {
    return [
      NetworkServer(
        id: "DemoNetworkServerId1",
        name: "DemoNetworkName1",
        server: "DemoNetworkServer1",
      ),
      NetworkServer(
        id: "DemoNetworkServerId2",
        name: "DemoNetworkName2",
        server: "DemoNetworkServer2",
      ),
      NetworkServer(
        id: "DemoNetworkServerId3",
        name: "DemoNetworkName3",
        server: "DemoNetworkServer3",
      ),
    ];
  }

  Future<String> version() async {
    return "2.0.0";
  }
}
