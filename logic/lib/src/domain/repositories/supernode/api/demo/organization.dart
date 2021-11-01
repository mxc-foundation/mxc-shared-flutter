import 'package:mxc_logic/mxc_logic.dart';

class DemoOrganizationRepository implements OrganizationRepository {
  const DemoOrganizationRepository();

  @override
  Future<void> update({
    required String id,
    required String displayName,
    required String name,
  }) =>
      throw UnimplementedError();
      
  @override
  Future<List<Organization>> list({
    required int offset,
    required int limit,
  }) async {
    return [
      Organization(
        name: "DemoOrgName1",
        displayName: "DemoOrgDisplayName1",
      ),
      Organization(
        name: "DemoOrgName2",
        displayName: "DemoOrgDisplayName2",
      ),
      Organization(
        name: "DemoOrgName3",
        displayName: "DemoOrgDisplayName3",
      ),
    ];
  }
}
