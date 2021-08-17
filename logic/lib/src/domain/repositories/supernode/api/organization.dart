import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';

class OrganizationRepository {
  final ChopperClient _client;

  OrganizationRepository(this._client);

  Future<void> update({
    required String id,
    required String displayName,
    required String name,
  }) async {
    await _client.organizationService.update(
      id: id,
      body: ExtapiUpdateOrganizationRequest(
        organization: ExtapiOrganization(
          id: id,
          displayName: displayName,
          name: name,
          canHaveGateways: true,
        ),
      ),
    );
  }

  Future<List<Organization>> list({
    required int offset,
    required int limit,
  }) async {
    final res = await _client.organizationService.list(
      offset: offset.toString(),
      limit: limit.toString(),
    );
    return res.body!.result!
        .map(
          (e) => Organization(
            name: e.name!,
            displayName: e.displayName!,
          ),
        )
        .toList();
  }
}
