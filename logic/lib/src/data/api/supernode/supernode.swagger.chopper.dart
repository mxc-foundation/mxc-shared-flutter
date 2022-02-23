// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supernode.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApplicationService extends ApplicationService {
  _$ApplicationService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApplicationService;

  @override
  Future<Response<ExtapiListApplicationResponse>> list(
      {String? limit,
      String? offset,
      String? organizationID,
      String? search,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'organizationID': organizationID,
      'search': search
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiListApplicationResponse,
        ExtapiListApplicationResponse>($request);
  }

  @override
  Future<Response<ExtapiCreateApplicationResponse>> create(
      {ExtapiCreateApplicationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiCreateApplicationResponse,
        ExtapiCreateApplicationResponse>($request);
  }

  @override
  Future<Response<dynamic>> update(
      {String? id,
      ExtapiUpdateApplicationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiListIntegrationResponse>> listIntegrations(
      {String? applicationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiListIntegrationResponse,
        ExtapiListIntegrationResponse>($request);
  }

  @override
  Future<Response<dynamic>> deleteHTTPIntegration(
      {String? applicationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/http';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetHTTPIntegrationResponse>> getHTTPIntegration(
      {String? applicationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/http';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetHTTPIntegrationResponse,
        ExtapiGetHTTPIntegrationResponse>($request);
  }

  @override
  Future<Response<dynamic>> deleteInfluxDBIntegration(
      {String? applicationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/influxdb';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetInfluxDBIntegrationResponse>> getInfluxDBIntegration(
      {String? applicationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/influxdb';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetInfluxDBIntegrationResponse,
        ExtapiGetInfluxDBIntegrationResponse>($request);
  }

  @override
  Future<Response<dynamic>> deleteLoRaCloudIntegration(
      {String? applicationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/loracloud';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetLoRaCloudIntegrationResponse>>
      getLoRaCloudIntegration(
          {String? applicationID,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/loracloud';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetLoRaCloudIntegrationResponse,
        ExtapiGetLoRaCloudIntegrationResponse>($request);
  }

  @override
  Future<Response<dynamic>> deleteMyDevicesIntegration(
      {String? applicationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/mydevices';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetMyDevicesIntegrationResponse>>
      getMyDevicesIntegration(
          {String? applicationID,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/mydevices';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetMyDevicesIntegrationResponse,
        ExtapiGetMyDevicesIntegrationResponse>($request);
  }

  @override
  Future<Response<dynamic>> deleteThingsBoardIntegration(
      {String? applicationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/thingsboard';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetThingsBoardIntegrationResponse>>
      getThingsBoardIntegration(
          {String? applicationID,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/thingsboard';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetThingsBoardIntegrationResponse,
        ExtapiGetThingsBoardIntegrationResponse>($request);
  }

  @override
  Future<Response<dynamic>> delete(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetApplicationResponse>> get(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetApplicationResponse,
        ExtapiGetApplicationResponse>($request);
  }

  @override
  Future<Response<dynamic>> createHTTPIntegration(
      {String? applicationID,
      ExtapiCreateHTTPIntegrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/http';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateHTTPIntegration(
      {String? applicationID,
      ExtapiUpdateHTTPIntegrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/http';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createInfluxDBIntegration(
      {String? applicationID,
      ExtapiCreateInfluxDBIntegrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/influxdb';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateInfluxDBIntegration(
      {String? applicationID,
      ExtapiUpdateInfluxDBIntegrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/influxdb';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createLoRaCloudIntegration(
      {String? applicationID,
      ExtapiCreateLoRaCloudIntegrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/loracloud';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateLoRaCloudIntegration(
      {String? applicationID,
      ExtapiUpdateLoRaCloudIntegrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/loracloud';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createMyDevicesIntegration(
      {String? applicationID,
      ExtapiCreateMyDevicesIntegrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/mydevices';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateMyDevicesIntegration(
      {String? applicationID,
      ExtapiUpdateMyDevicesIntegrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/mydevices';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createThingsBoardIntegration(
      {String? applicationID,
      ExtapiCreateThingsBoardIntegrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/thingsboard';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateThingsBoardIntegration(
      {String? applicationID,
      ExtapiUpdateThingsBoardIntegrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/applications/${applicationID}/integrations/thingsboard';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$BTCMiningService extends BTCMiningService {
  _$BTCMiningService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = BTCMiningService;

  @override
  Future<Response<ExtapiBTCListLocksResponse>> bTCListLocks(
      {String? orgId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/btc-mining/list-locks';
    final $params = <String, dynamic>{'orgId': orgId};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client
        .send<ExtapiBTCListLocksResponse, ExtapiBTCListLocksResponse>($request);
  }

  @override
  Future<Response<ExtapiBTCAddLocksResponse>> bTCAddLocks(
      {ExtapiBTCAddLocksRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/btc-mining/lock';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiBTCAddLocksResponse, ExtapiBTCAddLocksResponse>($request);
  }

  @override
  Future<Response<ExtapiBTCMiningSessionResponse>> bTCMiningSession(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/btc-mining/session';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiBTCMiningSessionResponse,
        ExtapiBTCMiningSessionResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ExternalUserService extends ExternalUserService {
  _$ExternalUserService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ExternalUserService;

  @override
  Future<Response<ExtapiConfirmBindingEmailResponse>> confirmBindingEmail(
      {ExtapiConfirmBindingEmailRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/confirm-external-email';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiConfirmBindingEmailResponse,
        ExtapiConfirmBindingEmailResponse>($request);
  }

  @override
  Future<Response<ExtapiAuthenticateWeChatUserResponse>> authenticateWeChatUser(
      {ExtapiAuthenticateWeChatUserRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/external-login/authenticate-wechat-user';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiAuthenticateWeChatUserResponse,
        ExtapiAuthenticateWeChatUserResponse>($request);
  }

  @override
  Future<Response<ExtapiBindExternalUserResponse>> bindExternalUser(
      {ExtapiBindExternalUserRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/external-login/bind-external-user';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiBindExternalUserResponse,
        ExtapiBindExternalUserResponse>($request);
  }

  @override
  Future<Response<ExtapiAuthenticateWeChatUserResponse>>
      debugAuthenticateWeChatUser(
          {ExtapiAuthenticateWeChatUserRequest? body,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/external-login/debug-authenticate-wechat-user';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiAuthenticateWeChatUserResponse,
        ExtapiAuthenticateWeChatUserResponse>($request);
  }

  @override
  Future<Response<ExtapiRegisterExternalUserResponse>> registerExternalUser(
      {ExtapiRegisterExternalUserRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/external-login/register-external-user';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiRegisterExternalUserResponse,
        ExtapiRegisterExternalUserResponse>($request);
  }

  @override
  Future<Response<ExtapiUnbindExternalUserResponse>> unbindExternalUser(
      {ExtapiUnbindExternalUserRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/external-login/unbind-external-user';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiUnbindExternalUserResponse,
        ExtapiUnbindExternalUserResponse>($request);
  }

  @override
  Future<Response<ExtapiVerifyEmailResponse>> verifyEmail(
      {ExtapiVerifyEmailRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/verify-external-email';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiVerifyEmailResponse, ExtapiVerifyEmailResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$DeviceProfileService extends DeviceProfileService {
  _$DeviceProfileService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DeviceProfileService;

  @override
  Future<Response<ExtapiListDeviceProfileResponse>> list(
      {String? limit,
      String? offset,
      String? organizationID,
      String? applicationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/device-profiles';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'organizationID': organizationID,
      'applicationID': applicationID
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiListDeviceProfileResponse,
        ExtapiListDeviceProfileResponse>($request);
  }

  @override
  Future<Response<ExtapiCreateDeviceProfileResponse>> create(
      {ExtapiCreateDeviceProfileRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/device-profiles';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiCreateDeviceProfileResponse,
        ExtapiCreateDeviceProfileResponse>($request);
  }

  @override
  Future<Response<dynamic>> update(
      {String? id,
      ExtapiUpdateDeviceProfileRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/device-profiles/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> delete(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/device-profiles/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetDeviceProfileResponse>> get(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/device-profiles/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetDeviceProfileResponse,
        ExtapiGetDeviceProfileResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$DeviceProvisioningService extends DeviceProvisioningService {
  _$DeviceProvisioningService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DeviceProvisioningService;

  @override
  Future<Response<ExtapiCreateResponse>> create(
      {ExtapiCreateRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/device-provision';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiCreateResponse, ExtapiCreateResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$DeviceService extends DeviceService {
  _$DeviceService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DeviceService;

  @override
  Future<Response<ExtapiGetDeviceHistoryResponse>> getDeviceHistory(
      {String? orgId,
      String? devId,
      String? offset,
      String? limit,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/device/${orgId}/device-history/${devId}';
    final $params = <String, dynamic>{'offset': offset, 'limit': limit};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetDeviceHistoryResponse,
        ExtapiGetDeviceHistoryResponse>($request);
  }

  @override
  Future<Response<ExtapiGetDeviceListResponse>> getDeviceList(
      {String? orgId,
      String? offset,
      String? limit,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/device/${orgId}/device-list';
    final $params = <String, dynamic>{'offset': offset, 'limit': limit};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetDeviceListResponse,
        ExtapiGetDeviceListResponse>($request);
  }

  @override
  Future<Response<ExtapiSetDeviceModeResponse>> setDeviceMode(
      {String? orgId,
      String? devId,
      ExtapiSetDeviceModeRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/device/${orgId}/device-mode/${devId}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiSetDeviceModeResponse,
        ExtapiSetDeviceModeResponse>($request);
  }

  @override
  Future<Response<ExtapiGetDSDeviceProfileResponse>> getDeviceProfile(
      {String? orgId,
      String? devId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/device/${orgId}/device-profile/${devId}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetDSDeviceProfileResponse,
        ExtapiGetDSDeviceProfileResponse>($request);
  }

  @override
  Future<Response<ExtapiListDeviceResponse>> list(
      {String? limit,
      String? offset,
      String? applicationID,
      String? search,
      String? multicastGroupID,
      String? serviceProfileID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'applicationID': applicationID,
      'search': search,
      'multicastGroupID': multicastGroupID,
      'serviceProfileID': serviceProfileID
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client
        .send<ExtapiListDeviceResponse, ExtapiListDeviceResponse>($request);
  }

  @override
  Future<Response<dynamic>> create(
      {ExtapiCreateDeviceRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> delete(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetDeviceResponse>> get(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<ExtapiGetDeviceResponse, ExtapiGetDeviceResponse>($request);
  }

  @override
  Future<Response<dynamic>> deactivate(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/activation';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetDeviceActivationResponse>> getActivation(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/activation';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetDeviceActivationResponse,
        ExtapiGetDeviceActivationResponse>($request);
  }

  @override
  Future<Response<ApiDevicesDevEUIEventsGet$Response>> streamEventLogs(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/events';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ApiDevicesDevEUIEventsGet$Response,
        ApiDevicesDevEUIEventsGet$Response>($request);
  }

  @override
  Future<Response<ApiDevicesDevEUIFramesGet$Response>> streamFrameLogs(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/frames';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ApiDevicesDevEUIFramesGet$Response,
        ApiDevicesDevEUIFramesGet$Response>($request);
  }

  @override
  Future<Response<ExtapiGetRandomDevAddrResponse>> getRandomDevAddr(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization,
      Object? body}) {
    final $url = '/api/devices/${devEUI}/getRandomDevAddr';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiGetRandomDevAddrResponse,
        ExtapiGetRandomDevAddrResponse>($request);
  }

  @override
  Future<Response<dynamic>> deleteKeys(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/keys';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetDeviceKeysResponse>> getKeys(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/keys';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetDeviceKeysResponse,
        ExtapiGetDeviceKeysResponse>($request);
  }

  @override
  Future<Response<dynamic>> update(
      {String? devEUI,
      ExtapiUpdateDeviceRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> activate(
      {String? devEUI,
      ExtapiActivateDeviceRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/activate';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createKeys(
      {String? devEUI,
      ExtapiCreateDeviceKeysRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/keys';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateKeys(
      {String? devEUI,
      ExtapiUpdateDeviceKeysRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/keys';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$FUOTADeploymentService extends FUOTADeploymentService {
  _$FUOTADeploymentService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FUOTADeploymentService;

  @override
  Future<Response<ExtapiCreateFUOTADeploymentForDeviceResponse>>
      createForDevice(
          {String? devEUI,
          ExtapiCreateFUOTADeploymentForDeviceRequest? body,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/fuota-deployments';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiCreateFUOTADeploymentForDeviceResponse,
        ExtapiCreateFUOTADeploymentForDeviceResponse>($request);
  }

  @override
  Future<Response<ExtapiListFUOTADeploymentResponse>> list(
      {String? limit,
      String? offset,
      String? applicationID,
      String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/fuota-deployments';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'applicationID': applicationID,
      'devEUI': devEUI
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiListFUOTADeploymentResponse,
        ExtapiListFUOTADeploymentResponse>($request);
  }

  @override
  Future<Response<ExtapiListFUOTADeploymentDevicesResponse>>
      listDeploymentDevices(
          {String? fuotaDeploymentID,
          String? limit,
          String? offset,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/fuota-deployments/${fuotaDeploymentID}/devices';
    final $params = <String, dynamic>{'limit': limit, 'offset': offset};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiListFUOTADeploymentDevicesResponse,
        ExtapiListFUOTADeploymentDevicesResponse>($request);
  }

  @override
  Future<Response<ExtapiGetFUOTADeploymentDeviceResponse>> getDeploymentDevice(
      {String? fuotaDeploymentID,
      String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url =
        '/api/fuota-deployments/${fuotaDeploymentID}/devices/${devEUI}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetFUOTADeploymentDeviceResponse,
        ExtapiGetFUOTADeploymentDeviceResponse>($request);
  }

  @override
  Future<Response<ExtapiGetFUOTADeploymentResponse>> get(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/fuota-deployments/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetFUOTADeploymentResponse,
        ExtapiGetFUOTADeploymentResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$DeviceQueueService extends DeviceQueueService {
  _$DeviceQueueService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DeviceQueueService;

  @override
  Future<Response<dynamic>> flush(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/queue';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiListDeviceQueueItemsResponse>> list(
      {String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/queue';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiListDeviceQueueItemsResponse,
        ExtapiListDeviceQueueItemsResponse>($request);
  }

  @override
  Future<Response<ExtapiEnqueueDeviceQueueItemResponse>> enqueue(
      {String? devEUI,
      ExtapiEnqueueDeviceQueueItemRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/devices/${devEUI}/queue';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiEnqueueDeviceQueueItemResponse,
        ExtapiEnqueueDeviceQueueItemResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$DFIService extends DFIService {
  _$DFIService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DFIService;

  @override
  Future<Response<ExtapiDFIAuthenticateUserResponse>> authenticateUser(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/dfi/profile';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiDFIAuthenticateUserResponse,
        ExtapiDFIAuthenticateUserResponse>($request);
  }

  @override
  Future<Response<ExtapiTopUpResponse>> topUp(
      {String? organizationID,
      String? amount,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dfi/top-up';
    final $params = <String, dynamic>{
      'organizationID': organizationID,
      'amount': amount
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiTopUpResponse, ExtapiTopUpResponse>($request);
  }

  @override
  Future<Response<ExtapiWithdrawResponse>> withdraw(
      {String? organizationID,
      String? amount,
      String? dFIPoolBalance,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dfi/withdraw';
    final $params = <String, dynamic>{
      'organizationID': organizationID,
      'amount': amount,
      'DFIPoolBalance': dFIPoolBalance
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client
        .send<ExtapiWithdrawResponse, ExtapiWithdrawResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$DHXServcieService extends DHXServcieService {
  _$DHXServcieService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DHXServcieService;

  @override
  Future<Response<ExtapiDHXBondResponse>> dHXBond(
      {ExtapiDHXBondRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dhx-mining/bond';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiDHXBondResponse, ExtapiDHXBondResponse>($request);
  }

  @override
  Future<Response<ExtapiDHXBondInfoResponse>> dHXBondInfo(
      {ExtapiDHXBondInfoRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dhx-mining/bond-info';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiDHXBondInfoResponse, ExtapiDHXBondInfoResponse>($request);
  }

  @override
  Future<Response<ExtapiDHXCreateCouncilResponse>> dHXCreateCouncil(
      {ExtapiDHXCreateCouncilRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dhx-mining/create-council';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiDHXCreateCouncilResponse,
        ExtapiDHXCreateCouncilResponse>($request);
  }

  @override
  Future<Response<ExtapiDHXCreateStakeResponse>> dHXCreateStake(
      {ExtapiDHXCreateStakeRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dhx-mining/create-stake';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiDHXCreateStakeResponse,
        ExtapiDHXCreateStakeResponse>($request);
  }

  @override
  Future<Response<ExtapiDHXEstimateMiningResponse>> dHXEstimateMining(
      {String? orgId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dhx-mining/estimate';
    final $params = <String, dynamic>{'orgId': orgId};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiDHXEstimateMiningResponse,
        ExtapiDHXEstimateMiningResponse>($request);
  }

  @override
  Future<Response<ExtapiDHXMiningHistoryResponse>> dHXMiningHistory(
      {String? orgId,
      String? from,
      String? till,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dhx-mining/history';
    final $params = <String, dynamic>{
      'orgId': orgId,
      'from': from,
      'till': till
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiDHXMiningHistoryResponse,
        ExtapiDHXMiningHistoryResponse>($request);
  }

  @override
  Future<Response<ExtapiDHXGetLastMiningResponse>> dHXGetLastMining(
      {String? orgId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dhx-mining/last-mining';
    final $params = <String, dynamic>{'orgId': orgId};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiDHXGetLastMiningResponse,
        ExtapiDHXGetLastMiningResponse>($request);
  }

  @override
  Future<Response<ExtapiDHXListCouncilsResponse>> dHXListCouncils(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/dhx-mining/list-councils';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiDHXListCouncilsResponse,
        ExtapiDHXListCouncilsResponse>($request);
  }

  @override
  Future<Response<ExtapiDHXListStakesResponse>> dHXListStakes(
      {String? chairOrgId,
      String? organizationId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dhx-mining/list-stakes';
    final $params = <String, dynamic>{
      'chairOrgId': chairOrgId,
      'organizationId': organizationId
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiDHXListStakesResponse,
        ExtapiDHXListStakesResponse>($request);
  }

  @override
  Future<Response<ExtapiDHXUnbondResponse>> dHXUnbond(
      {ExtapiDHXUnbondRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/dhx-mining/unbond';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiDHXUnbondResponse, ExtapiDHXUnbondResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$GatewayProfileService extends GatewayProfileService {
  _$GatewayProfileService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GatewayProfileService;

  @override
  Future<Response<ExtapiListGatewayProfilesResponse>> list(
      {String? limit,
      String? offset,
      String? networkServerID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateway-profiles';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'networkServerID': networkServerID
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiListGatewayProfilesResponse,
        ExtapiListGatewayProfilesResponse>($request);
  }

  @override
  Future<Response<ExtapiCreateGatewayProfileResponse>> create(
      {ExtapiCreateGatewayProfileRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateway-profiles';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiCreateGatewayProfileResponse,
        ExtapiCreateGatewayProfileResponse>($request);
  }

  @override
  Future<Response<dynamic>> update(
      {String? id,
      ExtapiUpdateGatewayProfileRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateway-profiles/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> delete(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateway-profiles/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetGatewayProfileResponse>> get(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateway-profiles/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetGatewayProfileResponse,
        ExtapiGetGatewayProfileResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$GatewayService extends GatewayService {
  _$GatewayService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GatewayService;

  @override
  Future<Response<ExtapiManualTriggerUpdateFirmwareResponse>>
      manualTriggerUpdateFirmware(
          {ExtapiManualTriggerUpdateFirmwareRequest? body,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/gateway/update-firmware';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiManualTriggerUpdateFirmwareResponse,
        ExtapiManualTriggerUpdateFirmwareResponse>($request);
  }

  @override
  Future<Response<ExtapiGetGatewayHistoryResponse>> getGatewayHistory(
      {String? orgId,
      String? gwId,
      String? offset,
      String? limit,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateway/${orgId}/gateway-history/${gwId}';
    final $params = <String, dynamic>{'offset': offset, 'limit': limit};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetGatewayHistoryResponse,
        ExtapiGetGatewayHistoryResponse>($request);
  }

  @override
  Future<Response<ExtapiGetGatewayListResponse>> getGatewayList(
      {String? orgId,
      String? offset,
      String? limit,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateway/${orgId}/gateway-list';
    final $params = <String, dynamic>{'offset': offset, 'limit': limit};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetGatewayListResponse,
        ExtapiGetGatewayListResponse>($request);
  }

  @override
  Future<Response<ExtapiSetGatewayModeResponse>> setGatewayMode(
      {String? orgId,
      String? gwId,
      ExtapiSetGatewayModeRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateway/${orgId}/gateway-mode/${gwId}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiSetGatewayModeResponse,
        ExtapiSetGatewayModeResponse>($request);
  }

  @override
  Future<Response<ExtapiGetGSGatewayProfileResponse>> getGatewayProfile(
      {String? orgId,
      String? gwId,
      String? offset,
      String? limit,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateway/${orgId}/gateway-profile/${gwId}';
    final $params = <String, dynamic>{'offset': offset, 'limit': limit};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetGSGatewayProfileResponse,
        ExtapiGetGSGatewayProfileResponse>($request);
  }

  @override
  Future<Response<ExtapiListGatewayResponse>> list(
      {int? limit,
      int? offset,
      String? organizationID,
      String? search,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'organizationID': organizationID,
      'search': search
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client
        .send<ExtapiListGatewayResponse, ExtapiListGatewayResponse>($request);
  }

  @override
  Future<Response<dynamic>> create(
      {ExtapiCreateGatewayRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiListGatewayLocationsResponse>> listLocations(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways-loc';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiListGatewayLocationsResponse,
        ExtapiListGatewayLocationsResponse>($request);
  }

  @override
  Future<Response<ExtapiInsertNewDefaultGatewayConfigResponse>>
      insertNewDefaultGatewayConfig(
          {ExtapiInsertNewDefaultGatewayConfigRequest? body,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/default-config/add';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiInsertNewDefaultGatewayConfigResponse,
        ExtapiInsertNewDefaultGatewayConfigResponse>($request);
  }

  @override
  Future<Response<ExtapiBatchResetDefaultGatewatConfigResponse>>
      batchResetDefaultGatewatConfig(
          {ExtapiBatchResetDefaultGatewatConfigRequest? body,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/default-config/batch-reset';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiBatchResetDefaultGatewatConfigResponse,
        ExtapiBatchResetDefaultGatewatConfigResponse>($request);
  }

  @override
  Future<Response<ExtapiGetDefaultGatewayConfigResponse>>
      getDefaultGatewayConfig(
          {String? model,
          String? region,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/default-config/get';
    final $params = <String, dynamic>{'model': model, 'region': region};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetDefaultGatewayConfigResponse,
        ExtapiGetDefaultGatewayConfigResponse>($request);
  }

  @override
  Future<Response<ExtapiResetDefaultGatewatConfigByIDResponse>>
      resetDefaultGatewatConfigByID(
          {ExtapiResetDefaultGatewatConfigByIDRequest? body,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/default-config/reset';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiResetDefaultGatewatConfigByIDResponse,
        ExtapiResetDefaultGatewatConfigByIDResponse>($request);
  }

  @override
  Future<Response<ExtapiUpdateDefaultGatewayConfigResponse>>
      updateDefaultGatewayConfig(
          {ExtapiUpdateDefaultGatewayConfigRequest? body,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/default-config/update';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiUpdateDefaultGatewayConfigResponse,
        ExtapiUpdateDefaultGatewayConfigResponse>($request);
  }

  @override
  Future<Response<ExtapiGetGwConfigResponse>> getGwConfig(
      {String? gatewayId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/getconfig/${gatewayId}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<ExtapiGetGwConfigResponse, ExtapiGetGwConfigResponse>($request);
  }

  @override
  Future<Response<ExtapiGetGwPwdResponse>> getGwPwd(
      {String? gatewayId,
      String? sn,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/getpassword/${gatewayId}';
    final $params = <String, dynamic>{'sn': sn};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client
        .send<ExtapiGetGwPwdResponse, ExtapiGetGwPwdResponse>($request);
  }

  @override
  Future<Response<ExtapiRegisterResponse>> register(
      {ExtapiRegisterRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/register';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiRegisterResponse, ExtapiRegisterResponse>($request);
  }

  @override
  Future<Response<ExtapiRegisterResellerResponse>> registerReseller(
      {ExtapiRegisterResellerRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/register-reseller';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiRegisterResellerResponse,
        ExtapiRegisterResellerResponse>($request);
  }

  @override
  Future<Response<ExtapiSetAutoUpdateFirmwareResponse>> setAutoUpdateFirmware(
      {String? gatewayId,
      ExtapiSetAutoUpdateFirmwareRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/set-auto-update/${gatewayId}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiSetAutoUpdateFirmwareResponse,
        ExtapiSetAutoUpdateFirmwareResponse>($request);
  }

  @override
  Future<Response<ExtapiUpdateGwConfigResponse>> updateGwConfig(
      {String? gatewayId,
      ExtapiUpdateGwConfigRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/updateconfig/${gatewayId}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiUpdateGwConfigResponse,
        ExtapiUpdateGwConfigResponse>($request);
  }

  @override
  Future<Response<dynamic>> update(
      {String? id,
      ExtapiUpdateGatewayRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ApiGatewaysGatewayIDFramesGet$Response>> streamFrameLogs(
      {String? gatewayID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/${gatewayID}/frames';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ApiGatewaysGatewayIDFramesGet$Response,
        ApiGatewaysGatewayIDFramesGet$Response>($request);
  }

  @override
  Future<Response<ExtapiGetLastPingResponse>> getLastPing(
      {String? gatewayID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/${gatewayID}/pings/last';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<ExtapiGetLastPingResponse, ExtapiGetLastPingResponse>($request);
  }

  @override
  Future<Response<ExtapiGetGatewayStatsResponse>> getStats(
      {String? gatewayID,
      String? interval,
      String? startTimestamp,
      String? endTimestamp,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/${gatewayID}/stats';
    final $params = <String, dynamic>{
      'interval': interval,
      'startTimestamp': startTimestamp,
      'endTimestamp': endTimestamp
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetGatewayStatsResponse,
        ExtapiGetGatewayStatsResponse>($request);
  }

  @override
  Future<Response<dynamic>> delete(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetGatewayResponse>> get(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/gateways/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<ExtapiGetGatewayResponse, ExtapiGetGatewayResponse>($request);
  }

  @override
  Future<Response<ExtapiListGatewayResponse>> listNewGateways(
      {int? limit,
      int? offset,
      String? organizationID,
      String? search,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/new-gateways';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'organizationID': organizationID,
      'search': search
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client
        .send<ExtapiListGatewayResponse, ExtapiListGatewayResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$InternalService extends InternalService {
  _$InternalService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = InternalService;

  @override
  Future<Response<ExtapiBrandingResponse>> branding(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/branding';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<ExtapiBrandingResponse, ExtapiBrandingResponse>($request);
  }

  @override
  Future<Response<ExtapiPasswordResetResp>> confirmPasswordReset(
      {ExtapiConfirmPasswordResetReq? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/confirm-password-reset';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiPasswordResetResp, ExtapiPasswordResetResp>($request);
  }

  @override
  Future<Response<ExtapiLoginResponse>> login(
      {ExtapiLoginRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/login';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiLoginResponse, ExtapiLoginResponse>($request);
  }

  @override
  Future<Response<ExtapiLoginResponse>> login2FA(
      {ExtapiLogin2FARequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/login-2fa';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiLoginResponse, ExtapiLoginResponse>($request);
  }

  @override
  Future<Response<ExtapiProfileResponse>> profile(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/profile';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiProfileResponse, ExtapiProfileResponse>($request);
  }

  @override
  Future<Response<dynamic>> registerUser(
      {ExtapiRegisterUserRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/registration';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiConfirmRegistrationResponse>> confirmRegistration(
      {ExtapiConfirmRegistrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/registration-confirm';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiConfirmRegistrationResponse,
        ExtapiConfirmRegistrationResponse>($request);
  }

  @override
  Future<Response<dynamic>> finishRegistration(
      {ExtapiFinishRegistrationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/registration-finish';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiPasswordResetResp>> requestPasswordReset(
      {ExtapiPasswordResetReq? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/request-password-reset';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiPasswordResetResp, ExtapiPasswordResetResp>($request);
  }

  @override
  Future<Response<ExtapiGlobalSearchResponse>> globalSearch(
      {String? search,
      String? limit,
      String? offset,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/search';
    final $params = <String, dynamic>{
      'search': search,
      'limit': limit,
      'offset': offset
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client
        .send<ExtapiGlobalSearchResponse, ExtapiGlobalSearchResponse>($request);
  }

  @override
  Future<Response<ExtapiGetTOTPConfigurationResponse>> getTOTPConfiguration(
      {ExtapiGetTOTPConfigurationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/totp-configuration';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiGetTOTPConfigurationResponse,
        ExtapiGetTOTPConfigurationResponse>($request);
  }

  @override
  Future<Response<ExtapiTOTPStatusResponse>> disableTOTP(
      {ExtapiTOTPStatusRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/totp-disable';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiTOTPStatusResponse, ExtapiTOTPStatusResponse>($request);
  }

  @override
  Future<Response<ExtapiTOTPStatusResponse>> enableTOTP(
      {ExtapiTOTPStatusRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/totp-enable';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiTOTPStatusResponse, ExtapiTOTPStatusResponse>($request);
  }

  @override
  Future<Response<ExtapiGetRecoveryCodesResponse>> getRecoveryCodes(
      {ExtapiGetRecoveryCodesRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/totp-recovery-codes';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiGetRecoveryCodesResponse,
        ExtapiGetRecoveryCodesResponse>($request);
  }

  @override
  Future<Response<ExtapiTOTPStatusResponse>> getTOTPStatus(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/totp-status';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<ExtapiTOTPStatusResponse, ExtapiTOTPStatusResponse>($request);
  }

  @override
  Future<Response<ExtapiGoogleRecaptchaResponse>> getVerifyingGoogleRecaptcha(
      {ExtapiGoogleRecaptchaRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/internal/verify-g-recaptcha';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiGoogleRecaptchaResponse,
        ExtapiGoogleRecaptchaResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$MosquittoAuthService extends MosquittoAuthService {
  _$MosquittoAuthService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MosquittoAuthService;

  @override
  Future<Response<ExtapiCheckACLResponse>> checkACL(
      {ExtapiCheckACLRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/mosquitto-auth/acl-check';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiCheckACLResponse, ExtapiCheckACLResponse>($request);
  }

  @override
  Future<Response<ExtapiJWTAuthenticationResponse>> jWTAuthentication(
      {ExtapiJWTAuthenticationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/mosquitto-auth/get-user';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiJWTAuthenticationResponse,
        ExtapiJWTAuthenticationResponse>($request);
  }

  @override
  Future<Response<ExtapiGetJWTResponse>> getJWT(
      {ExtapiGetJWTRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/mosquitto-auth/login';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiGetJWTResponse, ExtapiGetJWTResponse>($request);
  }

  @override
  Future<Response<ExtapiSendCommandToDeviceResponse>> sendCommandToDevice(
      {String? devEui,
      String? organizationId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/mosquitto-auth/send-command';
    final $params = <String, dynamic>{
      'devEui': devEui,
      'organizationId': organizationId
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiSendCommandToDeviceResponse,
        ExtapiSendCommandToDeviceResponse>($request);
  }

  @override
  Future<Response<ExtapiSubsribeApplicationEventsResponse>>
      subsribeApplicationEvents(
          {String? applicationId,
          String? organizationId,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/mosquitto-auth/subscribe-application-events';
    final $params = <String, dynamic>{
      'applicationId': applicationId,
      'organizationId': organizationId
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiSubsribeApplicationEventsResponse,
        ExtapiSubsribeApplicationEventsResponse>($request);
  }

  @override
  Future<Response<ExtapiSubsribeDeviceEventsResponse>> subsribeDeviceEvents(
      {String? devEui,
      String? organizationId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/mosquitto-auth/subscribe-device-events';
    final $params = <String, dynamic>{
      'devEui': devEui,
      'organizationId': organizationId
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiSubsribeDeviceEventsResponse,
        ExtapiSubsribeDeviceEventsResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$MulticastGroupService extends MulticastGroupService {
  _$MulticastGroupService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MulticastGroupService;

  @override
  Future<Response<ExtapiListMulticastGroupResponse>> list(
      {String? limit,
      String? offset,
      String? organizationID,
      String? devEUI,
      String? serviceProfileID,
      String? search,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/multicast-groups';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'organizationID': organizationID,
      'devEUI': devEUI,
      'serviceProfileID': serviceProfileID,
      'search': search
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiListMulticastGroupResponse,
        ExtapiListMulticastGroupResponse>($request);
  }

  @override
  Future<Response<ExtapiCreateMulticastGroupResponse>> create(
      {ExtapiCreateMulticastGroupRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/multicast-groups';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiCreateMulticastGroupResponse,
        ExtapiCreateMulticastGroupResponse>($request);
  }

  @override
  Future<Response<dynamic>> delete(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/multicast-groups/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetMulticastGroupResponse>> get(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/multicast-groups/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetMulticastGroupResponse,
        ExtapiGetMulticastGroupResponse>($request);
  }

  @override
  Future<Response<dynamic>> update(
      {String? id,
      ExtapiUpdateMulticastGroupRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/multicast-groups/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> addDevice(
      {String? multicastGroupID,
      ExtapiAddDeviceToMulticastGroupRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/multicast-groups/${multicastGroupID}/devices';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> removeDevice(
      {String? multicastGroupID,
      String? devEUI,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/multicast-groups/${multicastGroupID}/devices/${devEUI}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> flushQueue(
      {String? multicastGroupID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/multicast-groups/${multicastGroupID}/queue';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiListMulticastGroupQueueItemsResponse>> listQueue(
      {String? multicastGroupID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/multicast-groups/${multicastGroupID}/queue';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiListMulticastGroupQueueItemsResponse,
        ExtapiListMulticastGroupQueueItemsResponse>($request);
  }

  @override
  Future<Response<ExtapiEnqueueMulticastQueueItemResponse>> enqueue(
      {String? multicastGroupID,
      ExtapiEnqueueMulticastQueueItemRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/multicast-groups/${multicastGroupID}/queue';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiEnqueueMulticastQueueItemResponse,
        ExtapiEnqueueMulticastQueueItemResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$NetworkServerService extends NetworkServerService {
  _$NetworkServerService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NetworkServerService;

  @override
  Future<Response<ExtapiListNetworkServerResponse>> list(
      {String? limit,
      String? offset,
      String? organizationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/network-servers';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'organizationID': organizationID
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiListNetworkServerResponse,
        ExtapiListNetworkServerResponse>($request);
  }

  @override
  Future<Response<ExtapiCreateNetworkServerResponse>> create(
      {ExtapiCreateNetworkServerRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/network-servers';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiCreateNetworkServerResponse,
        ExtapiCreateNetworkServerResponse>($request);
  }

  @override
  Future<Response<dynamic>> delete(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/network-servers/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetNetworkServerResponse>> get(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/network-servers/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetNetworkServerResponse,
        ExtapiGetNetworkServerResponse>($request);
  }

  @override
  Future<Response<dynamic>> update(
      {String? id,
      ExtapiUpdateNetworkServerRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/network-servers/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$OrganizationService extends OrganizationService {
  _$OrganizationService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OrganizationService;

  @override
  Future<Response<ExtapiListOrganizationResponse>> list(
      {String? limit,
      String? offset,
      String? search,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/organizations';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'search': search
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiListOrganizationResponse,
        ExtapiListOrganizationResponse>($request);
  }

  @override
  Future<Response<ExtapiCreateOrganizationResponse>> create(
      {ExtapiCreateOrganizationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/organizations';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiCreateOrganizationResponse,
        ExtapiCreateOrganizationResponse>($request);
  }

  @override
  Future<Response<dynamic>> delete(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/organizations/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetOrganizationResponse>> get(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/organizations/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetOrganizationResponse,
        ExtapiGetOrganizationResponse>($request);
  }

  @override
  Future<Response<dynamic>> update(
      {String? id,
      ExtapiUpdateOrganizationRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/organizations/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiListOrganizationUsersResponse>> listUsers(
      {String? organizationID,
      int? limit,
      int? offset,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/organizations/${organizationID}/users';
    final $params = <String, dynamic>{'limit': limit, 'offset': offset};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiListOrganizationUsersResponse,
        ExtapiListOrganizationUsersResponse>($request);
  }

  @override
  Future<Response<dynamic>> deleteUser(
      {String? organizationID,
      String? userID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/organizations/${organizationID}/users/${userID}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetOrganizationUserResponse>> getUser(
      {String? organizationID,
      String? userID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/organizations/${organizationID}/users/${userID}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetOrganizationUserResponse,
        ExtapiGetOrganizationUserResponse>($request);
  }

  @override
  Future<Response<dynamic>> addUser(
      {String? organizationID,
      ExtapiAddOrganizationUserRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/organizations/${organizationID}/users';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateUser(
      {String? organizationID,
      String? userID,
      ExtapiUpdateOrganizationUserRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/organizations/${organizationID}/users/${userID}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ReportService extends ReportService {
  _$ReportService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ReportService;

  @override
  Future<Response<ApiReportMiningIncomeCsvGet$Response>> miningReportCSV(
      {String? organizationId,
      List<String>? currency,
      String? fiatCurrency,
      String? start,
      String? end,
      int? decimals,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/report/mining-income/csv';
    final $params = <String, dynamic>{
      'organizationId': organizationId,
      'currency': currency,
      'fiatCurrency': fiatCurrency,
      'start': start,
      'end': end,
      'decimals': decimals
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ApiReportMiningIncomeCsvGet$Response,
        ApiReportMiningIncomeCsvGet$Response>($request);
  }

  @override
  Future<Response<ApiReportMiningIncomePdfGet$Response>> miningReportPDF(
      {String? organizationId,
      List<String>? currency,
      String? fiatCurrency,
      String? start,
      String? end,
      int? decimals,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/report/mining-income/pdf';
    final $params = <String, dynamic>{
      'organizationId': organizationId,
      'currency': currency,
      'fiatCurrency': fiatCurrency,
      'start': start,
      'end': end,
      'decimals': decimals
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ApiReportMiningIncomePdfGet$Response,
        ApiReportMiningIncomePdfGet$Response>($request);
  }

  @override
  Future<Response<ExtapiGetFiatCurrencyListResponse>> getFiatCurrencyList(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/report/supported-fiat-currencies';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetFiatCurrencyListResponse,
        ExtapiGetFiatCurrencyListResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ServerInfoService extends ServerInfoService {
  _$ServerInfoService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ServerInfoService;

  @override
  Future<Response<ExtapiGetAppserverVersionResponse>> getAppserverVersion(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/server-info/appserver-version';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetAppserverVersionResponse,
        ExtapiGetAppserverVersionResponse>($request);
  }

  @override
  Future<Response<ExtapiGetMxprotocolServerVersionResponse>>
      getMxprotocolServerVersion(
          {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/server-info/mxprotocol-server-version';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetMxprotocolServerVersionResponse,
        ExtapiGetMxprotocolServerVersionResponse>($request);
  }

  @override
  Future<Response<ExtapiGetServerRegionResponse>> getServerRegion(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/server-info/server-region';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetServerRegionResponse,
        ExtapiGetServerRegionResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ServiceProfileService extends ServiceProfileService {
  _$ServiceProfileService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ServiceProfileService;

  @override
  Future<Response<ExtapiListServiceProfileResponse>> list(
      {String? limit,
      String? offset,
      String? organizationID,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/service-profiles';
    final $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'organizationID': organizationID
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiListServiceProfileResponse,
        ExtapiListServiceProfileResponse>($request);
  }

  @override
  Future<Response<ExtapiCreateServiceProfileResponse>> create(
      {ExtapiCreateServiceProfileRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/service-profiles';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiCreateServiceProfileResponse,
        ExtapiCreateServiceProfileResponse>($request);
  }

  @override
  Future<Response<dynamic>> delete(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/service-profiles/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetServiceProfileResponse>> get(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/service-profiles/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetServiceProfileResponse,
        ExtapiGetServiceProfileResponse>($request);
  }

  @override
  Future<Response<dynamic>> update(
      {String? id,
      ExtapiUpdateServiceProfileRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/service-profiles/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SettingsService extends SettingsService {
  _$SettingsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SettingsService;

  @override
  Future<Response<ExtapiGetSettingsResponse>> getSettings(
      {String? grpcMetadataXOTP, String? grpcMetadataAuthorization}) {
    final $url = '/api/settings';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<ExtapiGetSettingsResponse, ExtapiGetSettingsResponse>($request);
  }

  @override
  Future<Response<ExtapiModifySettingsResponse>> modifySettings(
      {ExtapiModifySettingsRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/settings';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiModifySettingsResponse,
        ExtapiModifySettingsResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ShopifyIntegrationService extends ShopifyIntegrationService {
  _$ShopifyIntegrationService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ShopifyIntegrationService;

  @override
  Future<Response<ExtapiGetOrdersByUserResponse>> getOrdersByUser(
      {String? email,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/shopify-integration/orders';
    final $params = <String, dynamic>{'email': email};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetOrdersByUserResponse,
        ExtapiGetOrdersByUserResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$StakingService extends StakingService {
  _$StakingService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = StakingService;

  @override
  Future<Response<ExtapiStakingPercentageResponse>> getStakingPercentage(
      {String? currency,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/staking/staking_percentage';
    final $params = <String, dynamic>{'currency': currency};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiStakingPercentageResponse,
        ExtapiStakingPercentageResponse>($request);
  }

  @override
  Future<Response<ExtapiGetActiveStakesResponse>> getActiveStakes(
      {String? orgId,
      String? currency,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/staking/${orgId}/activestakes';
    final $params = <String, dynamic>{'currency': currency};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetActiveStakesResponse,
        ExtapiGetActiveStakesResponse>($request);
  }

  @override
  Future<Response<ExtapiStakingHistoryResponse>> getStakingHistory(
      {String? orgId,
      String? currency,
      String? from,
      String? till,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/staking/${orgId}/history';
    final $params = <String, dynamic>{
      'currency': currency,
      'from': from,
      'till': till
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiStakingHistoryResponse,
        ExtapiStakingHistoryResponse>($request);
  }

  @override
  Future<Response<ExtapiStakingRevenueResponse>> getStakingRevenue(
      {String? orgId,
      String? currency,
      String? from,
      String? till,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/staking/${orgId}/revenue';
    final $params = <String, dynamic>{
      'currency': currency,
      'from': from,
      'till': till
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiStakingRevenueResponse,
        ExtapiStakingRevenueResponse>($request);
  }

  @override
  Future<Response<ExtapiStakeResponse>> stake(
      {String? orgId,
      ExtapiStakeRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/staking/${orgId}/stake';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiStakeResponse, ExtapiStakeResponse>($request);
  }

  @override
  Future<Response<ExtapiStakeInfoResponse>> stakeInfo(
      {String? orgId,
      String? stakeId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/staking/${orgId}/stake-info';
    final $params = <String, dynamic>{'stakeId': stakeId};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client
        .send<ExtapiStakeInfoResponse, ExtapiStakeInfoResponse>($request);
  }

  @override
  Future<Response<ExtapiUnstakeResponse>> unstake(
      {String? orgId,
      ExtapiUnstakeRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/staking/${orgId}/unstake';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiUnstakeResponse, ExtapiUnstakeResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TopUpService extends TopUpService {
  _$TopUpService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TopUpService;

  @override
  Future<Response<ExtapiGetTopUpDestinationResponse>> getTopUpDestination(
      {String? orgId,
      String? currency,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/top-up/account';
    final $params = <String, dynamic>{'orgId': orgId, 'currency': currency};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetTopUpDestinationResponse,
        ExtapiGetTopUpDestinationResponse>($request);
  }

  @override
  Future<Response<ExtapiGetTopUpHistoryResponse>> getTopUpHistory(
      {ExtapiGetTopUpHistoryRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/top-up/history';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiGetTopUpHistoryResponse,
        ExtapiGetTopUpHistoryResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$UserService extends UserService {
  _$UserService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserService;

  @override
  Future<Response<ExtapiListUserResponse>> list(
      {String? limit,
      String? offset,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/users';
    final $params = <String, dynamic>{'limit': limit, 'offset': offset};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client
        .send<ExtapiListUserResponse, ExtapiListUserResponse>($request);
  }

  @override
  Future<Response<ExtapiCreateUserResponse>> create(
      {ExtapiCreateUserRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/users';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiCreateUserResponse, ExtapiCreateUserResponse>($request);
  }

  @override
  Future<Response<ExtapiGetUserEmailResponse>> getUserEmail(
      {String? userEmail,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/users/email/${userEmail}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<ExtapiGetUserEmailResponse, ExtapiGetUserEmailResponse>($request);
  }

  @override
  Future<Response<ExtapiGetOTPCodeResponse>> getOTPCode(
      {String? userEmail,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/users/otp/${userEmail}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<ExtapiGetOTPCodeResponse, ExtapiGetOTPCodeResponse>($request);
  }

  @override
  Future<Response<dynamic>> delete(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/users/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtapiGetUserResponse>> get(
      {String? id,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/users/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetUserResponse, ExtapiGetUserResponse>($request);
  }

  @override
  Future<Response<ExtapiUpdateUserResponse>> update(
      {String? id,
      ExtapiUpdateUserRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/users/${id}';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiUpdateUserResponse, ExtapiUpdateUserResponse>($request);
  }

  @override
  Future<Response<dynamic>> updatePassword(
      {String? userId,
      ExtapiUpdateUserPasswordRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/users/${userId}/password';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$WalletService extends WalletService {
  _$WalletService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WalletService;

  @override
  Future<Response<ExtapiGetWalletBalanceResponse>> getWalletBalance(
      {String? userId,
      String? orgId,
      String? currency,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/balance';
    final $params = <String, dynamic>{
      'userId': userId,
      'orgId': orgId,
      'currency': currency
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetWalletBalanceResponse,
        ExtapiGetWalletBalanceResponse>($request);
  }

  @override
  Future<Response<ExtapiGetGatewayMiningHealthResponse>> getGatewayMiningHealth(
      {String? orgId,
      List<String>? gatewayMac,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/mining_health';
    final $params = <String, dynamic>{'orgId': orgId, 'gatewayMac': gatewayMac};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetGatewayMiningHealthResponse,
        ExtapiGetGatewayMiningHealthResponse>($request);
  }

  @override
  Future<Response<ExtapiGetWalletMiningIncomeResponse>> getWalletMiningIncome(
      {String? orgId,
      String? currency,
      String? from,
      String? till,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/mining_income';
    final $params = <String, dynamic>{
      'orgId': orgId,
      'currency': currency,
      'from': from,
      'till': till
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetWalletMiningIncomeResponse,
        ExtapiGetWalletMiningIncomeResponse>($request);
  }

  @override
  Future<Response<ExtapiGetGatewayMiningIncomeResponse>> getGatewayMiningIncome(
      {String? gatewayMac,
      String? orgId,
      String? fromDate,
      String? tillDate,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/mining_income_gw';
    final $params = <String, dynamic>{
      'gatewayMac': gatewayMac,
      'orgId': orgId,
      'fromDate': fromDate,
      'tillDate': tillDate
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetGatewayMiningIncomeResponse,
        ExtapiGetGatewayMiningIncomeResponse>($request);
  }

  @override
  Future<Response<ExtapiGetMiningInfoResponse>> getMiningInfo(
      {String? orgId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/mining_info';
    final $params = <String, dynamic>{'orgId': orgId};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetMiningInfoResponse,
        ExtapiGetMiningInfoResponse>($request);
  }

  @override
  Future<Response<ExtapiGetMXCpriceResponse>> getMXCprice(
      {String? userId,
      String? orgId,
      String? mxcPrice,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/mxc_price';
    final $params = <String, dynamic>{
      'userId': userId,
      'orgId': orgId,
      'mxcPrice': mxcPrice
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client
        .send<ExtapiGetMXCpriceResponse, ExtapiGetMXCpriceResponse>($request);
  }

  @override
  Future<Response<ExtapiTopUpGatewayMiningFuelResponse>> topUpGatewayMiningFuel(
      {ExtapiTopUpGatewayMiningFuelRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/top-up-mining-fuel';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiTopUpGatewayMiningFuelResponse,
        ExtapiTopUpGatewayMiningFuelResponse>($request);
  }

  @override
  Future<Response<ExtapiGetTransactionHistoryResponse>> getTransactionHistory(
      {String? orgId,
      String? currency,
      String? from,
      String? till,
      List<String>? paymentType,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/tx-history';
    final $params = <String, dynamic>{
      'orgId': orgId,
      'currency': currency,
      'from': from,
      'till': till,
      'paymentType': paymentType
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetTransactionHistoryResponse,
        ExtapiGetTransactionHistoryResponse>($request);
  }

  @override
  Future<Response<ExtapiWithdrawGatewayMiningFuelResponse>>
      withdrawGatewayMiningFuel(
          {ExtapiWithdrawGatewayMiningFuelRequest? body,
          String? grpcMetadataXOTP,
          String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/withdraw-mining-fuel';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiWithdrawGatewayMiningFuelResponse,
        ExtapiWithdrawGatewayMiningFuelResponse>($request);
  }

  @override
  Future<Response<ExtapiGetDownLinkPriceResponse>> getDlPrice(
      {String? orgId,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/${orgId}/downlink_price';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ExtapiGetDownLinkPriceResponse,
        ExtapiGetDownLinkPriceResponse>($request);
  }

  @override
  Future<Response<ExtapiGetVmxcTxHistoryResponse>> getVmxcTxHistory(
      {String? orgId,
      String? offset,
      String? limit,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/${orgId}/tx-history';
    final $params = <String, dynamic>{'offset': offset, 'limit': limit};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetVmxcTxHistoryResponse,
        ExtapiGetVmxcTxHistoryResponse>($request);
  }

  @override
  Future<Response<ExtapiGetNetworkUsageHistResponse>> getNetworkUsageHist(
      {String? orgId,
      String? currency,
      String? from,
      String? till,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/wallet/${orgId}/usage-history';
    final $params = <String, dynamic>{
      'currency': currency,
      'from': from,
      'till': till
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetNetworkUsageHistResponse,
        ExtapiGetNetworkUsageHistResponse>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$WithdrawService extends WithdrawService {
  _$WithdrawService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WithdrawService;

  @override
  Future<Response<ExtapiGetWithdrawFeeResponse>> getWithdrawFee(
      {String? currency,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/withdraw/get-withdraw-fee';
    final $params = <String, dynamic>{'currency': currency};
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetWithdrawFeeResponse,
        ExtapiGetWithdrawFeeResponse>($request);
  }

  @override
  Future<Response<ExtapiGetWithdrawHistoryResponse>> getWithdrawHistory(
      {String? orgId,
      String? currency,
      String? from,
      String? till,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/withdraw/history';
    final $params = <String, dynamic>{
      'orgId': orgId,
      'currency': currency,
      'from': from,
      'till': till
    };
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<ExtapiGetWithdrawHistoryResponse,
        ExtapiGetWithdrawHistoryResponse>($request);
  }

  @override
  Future<Response<ExtapiModifyWithdrawFeeResponse>> modifyWithdrawFee(
      {ExtapiModifyWithdrawFeeRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/withdraw/modify-withdraw-fee';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<ExtapiModifyWithdrawFeeResponse,
        ExtapiModifyWithdrawFeeResponse>($request);
  }

  @override
  Future<Response<ExtapiGetWithdrawResponse>> getWithdraw(
      {ExtapiGetWithdrawRequest? body,
      String? grpcMetadataXOTP,
      String? grpcMetadataAuthorization}) {
    final $url = '/api/withdraw/req';
    final $headers = {
      if (grpcMetadataXOTP != null) 'Grpc-Metadata-X-OTP': grpcMetadataXOTP,
      if (grpcMetadataAuthorization != null)
        'Grpc-Metadata-Authorization': grpcMetadataAuthorization,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ExtapiGetWithdrawResponse, ExtapiGetWithdrawResponse>($request);
  }
}
