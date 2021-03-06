import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:mxc_logic/src/domain/entities/supernode.dart';

class SupernodeGithubApi {
  SupernodeGithubApi(this.client);

  static Supernode _supernodeMapper(Map<String, dynamic> map) {
    return Supernode(
      region: map['region']! as String,
      url: map['url']! as String,
      logo: map['logo']! as String,
      darkLogo: (map['darkLogo'] ?? map['logo']) as String,
      status: map['status'] as String,
      name: map['name'] as String,
    );
  }

  final ChopperClient client;

  Future<Map<String, List<Supernode>>> listSupernodes() async {
    final res = await client.get<dynamic, dynamic>(
      'https://raw.githubusercontent.com/mxc-foundation/supernode-list/master/supernode.json',
      parameters: <String, dynamic>{
        'rad': DateTime.now()
            .microsecondsSinceEpoch
            .toString() // Prevent from caching
      },
      baseUrl: '',
    );

    final body = Map<String, dynamic>.from(jsonDecode(res.bodyString) as Map);

    final supernodesList = body.entries.map(
      (entry) => _supernodeMapper(<String, dynamic>{
        ...Map<String, dynamic>.from(entry.value as Map),
        'name': entry.key,
      }),
    );

    final supernodesByRegion = <String, List<Supernode>>{};
    for (final supernode in supernodesList) {
      supernodesByRegion[supernode.region] ??= [];
      supernodesByRegion[supernode.region]!.add(supernode);
    }
    return supernodesByRegion;
  }
}
