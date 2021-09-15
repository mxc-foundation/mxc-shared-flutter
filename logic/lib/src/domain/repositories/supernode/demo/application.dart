import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/entities/application.dart';

class ApplicationDemoRepository {

  ApplicationDemoRepository();

  Future<ListWithTotal<Application>> list({
    required int offset,
    required int limit,
    String? organizationID,
    String? search,
  }) async {
    return [
      Application(
        description: "description1",
        id: "applicationID1",
        name: "name1",
        organizationID: "organizationID1",
        serviceProfileID: "serviceProfileID1",
        serviceProfileName: "serviceProfileName1",
      ),
      Application(
        description: "description2",
        id: "applicationID2",
        name: "name2",
        organizationID: "organizationID2",
        serviceProfileID: "serviceProfileID2",
        serviceProfileName: "serviceProfileName2",
      ),
    ].withTotal(2);
  }
}
