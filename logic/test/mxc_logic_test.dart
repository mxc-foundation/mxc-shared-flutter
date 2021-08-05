import 'package:chopper/chopper.dart';
import 'package:mxc_logic/src/api/supernode/client_index.dart';
import 'package:mxc_logic/src/api/supernode/supernode.swagger.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () async {
    final client = ChopperClient(
      baseUrl: "https://lora.build.cloud.mxc.org/",
      converter: JsonConverter(),
      services: [...supernodeServices],
    );
    await client.applicationService.createHTTPIntegration(
      applicationID: "applicationID",
      body: ExtapiCreateHTTPIntegrationRequest(
        integration: ExtapiHTTPIntegration(errorNotificationURL: ""),
      ),
    );
  });
}
