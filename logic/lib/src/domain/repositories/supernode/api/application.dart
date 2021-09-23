import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/entities/application.dart';
import 'package:mxc_logic/src/domain/repositories/internal/shared_mappers.dart';

class ApplicationRepository {
  final ChopperClient _client;

  ApplicationRepository(this._client);

  Future<ListWithTotal<Application>> list({
    int offset = 0,
    int limit = 10,
    String? organizationID,
    String? search,
  }) async {
    final res = await _client.applicationService.list(
      offset: offset.toString(),
      limit: limit.toString(),
      organizationID: organizationID,
      search: search,
    );

    return res.body!.result!
        .map(
          (e) => Application(
            description: e.description.orDefault(),
            id: e.id.orDefault(),
            name: e.name.orDefault(),
            organizationID: e.organizationID.orDefault(),
            serviceProfileID: e.serviceProfileID.orDefault(),
            serviceProfileName: e.serviceProfileName.orDefault(),
          ),
        )
        .toList()
        .withTotal(res.body!.totalCount.toInt());
  }
}
