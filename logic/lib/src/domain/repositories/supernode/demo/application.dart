import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/domain/entities/application.dart';
import 'package:mxc_logic/src/domain/repositories/supernode/api/application.dart';

class ApplicationDemoRepository implements ApplicationRepository {
  ApplicationDemoRepository();

  Future<ListWithTotal<Application>> list({
    int offset = 0,
    int limit = 10,
    String? organizationID,
    String? search,
  }) async {
    return [
      Application(
        description: "description1",
        id: "applicationID1",
        name: "category_name1",
        organizationID: "organizationID1",
        serviceProfileID: "serviceProfileID1",
        serviceProfileName: "serviceProfileName1",
      ),
      Application(
        description: "description2",
        id: "applicationID2",
        name: "catagory_name2",
        organizationID: "organizationID2",
        serviceProfileID: "serviceProfileID2",
        serviceProfileName: "serviceProfileName2",
      ),
    ].withTotal(2);
  }
}
