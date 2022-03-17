import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';

class DemoExternalAccountsRepository implements ExternalAccountsRepository {
  const DemoExternalAccountsRepository();

  @override
  SupernodeClient get client => throw UnimplementedError();

  @override
  Future<String> bind({required String externalAuthToken}) async {
    throw UnimplementedError();
  }

  @override
  Future<void> unbind({
    required ExternalAccountType service,
    String? organizationId,
  }) {
    throw UnimplementedError();
  }
}
