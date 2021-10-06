// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supernode.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonLocation _$CommonLocationFromJson(Map<String, dynamic> json) {
  return CommonLocation(
    accuracy: json['accuracy'] as int?,
    altitude: (json['altitude'] as num?)?.toDouble(),
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    source: commonLocationSourceFromJson(json['source'] as String?),
  );
}

Map<String, dynamic> _$CommonLocationToJson(CommonLocation instance) =>
    <String, dynamic>{
      'accuracy': instance.accuracy,
      'altitude': instance.altitude,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'source': commonLocationSourceToJson(instance.source),
    };

ExtapiActivateDeviceRequest _$ExtapiActivateDeviceRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiActivateDeviceRequest(
    deviceActivation: json['deviceActivation'] == null
        ? null
        : ExtapiDeviceActivation.fromJson(
            json['deviceActivation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiActivateDeviceRequestToJson(
        ExtapiActivateDeviceRequest instance) =>
    <String, dynamic>{
      'deviceActivation': instance.deviceActivation?.toJson(),
    };

ExtapiAddDeviceToMulticastGroupRequest
    _$ExtapiAddDeviceToMulticastGroupRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiAddDeviceToMulticastGroupRequest(
    devEUI: json['devEUI'] as String?,
    multicastGroupID: json['multicastGroupID'] as String?,
  );
}

Map<String, dynamic> _$ExtapiAddDeviceToMulticastGroupRequestToJson(
        ExtapiAddDeviceToMulticastGroupRequest instance) =>
    <String, dynamic>{
      'devEUI': instance.devEUI,
      'multicastGroupID': instance.multicastGroupID,
    };

ExtapiAddOrganizationUserRequest _$ExtapiAddOrganizationUserRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiAddOrganizationUserRequest(
    organizationUser: json['organizationUser'] == null
        ? null
        : ExtapiOrganizationUser.fromJson(
            json['organizationUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiAddOrganizationUserRequestToJson(
        ExtapiAddOrganizationUserRequest instance) =>
    <String, dynamic>{
      'organizationUser': instance.organizationUser?.toJson(),
    };

ExtapiApplication _$ExtapiApplicationFromJson(Map<String, dynamic> json) {
  return ExtapiApplication(
    description: json['description'] as String?,
    id: json['id'] as String?,
    name: json['name'] as String?,
    organizationID: json['organizationID'] as String?,
    payloadCodec: json['payloadCodec'] as String?,
    payloadDecoderScript: json['payloadDecoderScript'] as String?,
    payloadEncoderScript: json['payloadEncoderScript'] as String?,
    serviceProfileID: json['serviceProfileID'] as String?,
  );
}

Map<String, dynamic> _$ExtapiApplicationToJson(ExtapiApplication instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'name': instance.name,
      'organizationID': instance.organizationID,
      'payloadCodec': instance.payloadCodec,
      'payloadDecoderScript': instance.payloadDecoderScript,
      'payloadEncoderScript': instance.payloadEncoderScript,
      'serviceProfileID': instance.serviceProfileID,
    };

ExtapiApplicationListItem _$ExtapiApplicationListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiApplicationListItem(
    description: json['description'] as String?,
    id: json['id'] as String?,
    name: json['name'] as String?,
    organizationID: json['organizationID'] as String?,
    serviceProfileID: json['serviceProfileID'] as String?,
    serviceProfileName: json['serviceProfileName'] as String?,
  );
}

Map<String, dynamic> _$ExtapiApplicationListItemToJson(
        ExtapiApplicationListItem instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'name': instance.name,
      'organizationID': instance.organizationID,
      'serviceProfileID': instance.serviceProfileID,
      'serviceProfileName': instance.serviceProfileName,
    };

ExtapiAuthenticateWeChatUserRequest
    _$ExtapiAuthenticateWeChatUserRequestFromJson(Map<String, dynamic> json) {
  return ExtapiAuthenticateWeChatUserRequest(
    code: json['code'] as String?,
  );
}

Map<String, dynamic> _$ExtapiAuthenticateWeChatUserRequestToJson(
        ExtapiAuthenticateWeChatUserRequest instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

ExtapiAuthenticateWeChatUserResponse
    _$ExtapiAuthenticateWeChatUserResponseFromJson(Map<String, dynamic> json) {
  return ExtapiAuthenticateWeChatUserResponse(
    bindingIsRequired: json['bindingIsRequired'] as bool?,
    jwt: json['jwt'] as String?,
  );
}

Map<String, dynamic> _$ExtapiAuthenticateWeChatUserResponseToJson(
        ExtapiAuthenticateWeChatUserResponse instance) =>
    <String, dynamic>{
      'bindingIsRequired': instance.bindingIsRequired,
      'jwt': instance.jwt,
    };

ExtapiBTCAddLocksRequest _$ExtapiBTCAddLocksRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiBTCAddLocksRequest(
    durationDays: json['durationDays'] as String?,
    gatewayMac: (json['gatewayMac'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    orgId: json['orgId'] as String?,
    sessionId: json['sessionId'] as String?,
    totalAmount: json['totalAmount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiBTCAddLocksRequestToJson(
        ExtapiBTCAddLocksRequest instance) =>
    <String, dynamic>{
      'durationDays': instance.durationDays,
      'gatewayMac': instance.gatewayMac,
      'orgId': instance.orgId,
      'sessionId': instance.sessionId,
      'totalAmount': instance.totalAmount,
    };

ExtapiBTCAddLocksResponse _$ExtapiBTCAddLocksResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiBTCAddLocksResponse();
}

Map<String, dynamic> _$ExtapiBTCAddLocksResponseToJson(
        ExtapiBTCAddLocksResponse instance) =>
    <String, dynamic>{};

ExtapiBTCListLocksResponse _$ExtapiBTCListLocksResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiBTCListLocksResponse(
    lock: (json['lock'] as List<dynamic>?)
            ?.map((e) => ExtapiBTCLock.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiBTCListLocksResponseToJson(
        ExtapiBTCListLocksResponse instance) =>
    <String, dynamic>{
      'lock': instance.lock?.map((e) => e.toJson()).toList(),
    };

ExtapiBTCLock _$ExtapiBTCLockFromJson(Map<String, dynamic> json) {
  return ExtapiBTCLock(
    amount: json['amount'] as String?,
    btcRevenue: json['btcRevenue'] as String?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    gatewayMac: json['gatewayMac'] as String?,
    id: json['id'] as String?,
    lockTill: json['lockTill'] == null
        ? null
        : DateTime.parse(json['lockTill'] as String),
    sessionId: json['sessionId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiBTCLockToJson(ExtapiBTCLock instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'btcRevenue': instance.btcRevenue,
      'created': instance.created?.toIso8601String(),
      'gatewayMac': instance.gatewayMac,
      'id': instance.id,
      'lockTill': instance.lockTill?.toIso8601String(),
      'sessionId': instance.sessionId,
    };

ExtapiBTCMiningSessionResponse _$ExtapiBTCMiningSessionResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiBTCMiningSessionResponse(
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    mxcLockAmount: json['mxcLockAmount'] as String?,
    mxcLockDurationDays: json['mxcLockDurationDays'] as String?,
    sessionId: json['sessionId'] as String?,
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
  );
}

Map<String, dynamic> _$ExtapiBTCMiningSessionResponseToJson(
        ExtapiBTCMiningSessionResponse instance) =>
    <String, dynamic>{
      'endDate': instance.endDate?.toIso8601String(),
      'mxcLockAmount': instance.mxcLockAmount,
      'mxcLockDurationDays': instance.mxcLockDurationDays,
      'sessionId': instance.sessionId,
      'startDate': instance.startDate?.toIso8601String(),
    };

ExtapiBatchResetDefaultGatewatConfigRequest
    _$ExtapiBatchResetDefaultGatewatConfigRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiBatchResetDefaultGatewatConfigRequest(
    organizationList: json['organizationList'] as String?,
  );
}

Map<String, dynamic> _$ExtapiBatchResetDefaultGatewatConfigRequestToJson(
        ExtapiBatchResetDefaultGatewatConfigRequest instance) =>
    <String, dynamic>{
      'organizationList': instance.organizationList,
    };

ExtapiBatchResetDefaultGatewatConfigResponse
    _$ExtapiBatchResetDefaultGatewatConfigResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiBatchResetDefaultGatewatConfigResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiBatchResetDefaultGatewatConfigResponseToJson(
        ExtapiBatchResetDefaultGatewatConfigResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiBindExternalUserRequest _$ExtapiBindExternalUserRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiBindExternalUserRequest(
    email: json['email'] as String?,
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$ExtapiBindExternalUserRequestToJson(
        ExtapiBindExternalUserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

ExtapiBindExternalUserResponse _$ExtapiBindExternalUserResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiBindExternalUserResponse(
    jwt: json['jwt'] as String?,
  );
}

Map<String, dynamic> _$ExtapiBindExternalUserResponseToJson(
        ExtapiBindExternalUserResponse instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
    };

ExtapiBoost _$ExtapiBoostFromJson(Map<String, dynamic> json) {
  return ExtapiBoost(
    boost: json['boost'] as String?,
    lockPeriods: json['lockPeriods'] as String?,
  );
}

Map<String, dynamic> _$ExtapiBoostToJson(ExtapiBoost instance) =>
    <String, dynamic>{
      'boost': instance.boost,
      'lockPeriods': instance.lockPeriods,
    };

ExtapiBrandingResponse _$ExtapiBrandingResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiBrandingResponse(
    footer: json['footer'] as String?,
    logo: json['logo'] as String?,
    logoPath: json['logoPath'] as String?,
    registration: json['registration'] as String?,
  );
}

Map<String, dynamic> _$ExtapiBrandingResponseToJson(
        ExtapiBrandingResponse instance) =>
    <String, dynamic>{
      'footer': instance.footer,
      'logo': instance.logo,
      'logoPath': instance.logoPath,
      'registration': instance.registration,
    };

ExtapiCheckACLRequest _$ExtapiCheckACLRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCheckACLRequest(
    acc: json['acc'] as int?,
    clientid: json['clientid'] as String?,
    topic: json['topic'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCheckACLRequestToJson(
        ExtapiCheckACLRequest instance) =>
    <String, dynamic>{
      'acc': instance.acc,
      'clientid': instance.clientid,
      'topic': instance.topic,
    };

ExtapiCheckACLResponse _$ExtapiCheckACLResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiCheckACLResponse();
}

Map<String, dynamic> _$ExtapiCheckACLResponseToJson(
        ExtapiCheckACLResponse instance) =>
    <String, dynamic>{};

ExtapiConfirmBindingEmailRequest _$ExtapiConfirmBindingEmailRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiConfirmBindingEmailRequest(
    organizationId: json['organizationId'] as String?,
    token: json['token'] as String?,
  );
}

Map<String, dynamic> _$ExtapiConfirmBindingEmailRequestToJson(
        ExtapiConfirmBindingEmailRequest instance) =>
    <String, dynamic>{
      'organizationId': instance.organizationId,
      'token': instance.token,
    };

ExtapiConfirmBindingEmailResponse _$ExtapiConfirmBindingEmailResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiConfirmBindingEmailResponse();
}

Map<String, dynamic> _$ExtapiConfirmBindingEmailResponseToJson(
        ExtapiConfirmBindingEmailResponse instance) =>
    <String, dynamic>{};

ExtapiConfirmPasswordResetReq _$ExtapiConfirmPasswordResetReqFromJson(
    Map<String, dynamic> json) {
  return ExtapiConfirmPasswordResetReq(
    newPassword: json['newPassword'] as String?,
    otp: json['otp'] as String?,
    username: json['username'] as String?,
  );
}

Map<String, dynamic> _$ExtapiConfirmPasswordResetReqToJson(
        ExtapiConfirmPasswordResetReq instance) =>
    <String, dynamic>{
      'newPassword': instance.newPassword,
      'otp': instance.otp,
      'username': instance.username,
    };

ExtapiConfirmRegistrationRequest _$ExtapiConfirmRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiConfirmRegistrationRequest(
    token: json['token'] as String?,
  );
}

Map<String, dynamic> _$ExtapiConfirmRegistrationRequestToJson(
        ExtapiConfirmRegistrationRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

ExtapiConfirmRegistrationResponse _$ExtapiConfirmRegistrationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiConfirmRegistrationResponse(
    id: json['id'] as String?,
    isActive: json['isActive'] as bool?,
    isAdmin: json['isAdmin'] as bool?,
    jwt: json['jwt'] as String?,
    sessionTTL: json['sessionTTL'] as int?,
    username: json['username'] as String?,
  );
}

Map<String, dynamic> _$ExtapiConfirmRegistrationResponseToJson(
        ExtapiConfirmRegistrationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'isAdmin': instance.isAdmin,
      'jwt': instance.jwt,
      'sessionTTL': instance.sessionTTL,
      'username': instance.username,
    };

ExtapiCouncil _$ExtapiCouncilFromJson(Map<String, dynamic> json) {
  return ExtapiCouncil(
    chairOrgId: json['chairOrgId'] as String?,
    id: json['id'] as String?,
    lastDhxRevenue: json['lastDhxRevenue'] as String?,
    lastMpower: json['lastMpower'] as String?,
    lastPaidDate: json['lastPaidDate'] == null
        ? null
        : DateTime.parse(json['lastPaidDate'] as String),
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCouncilToJson(ExtapiCouncil instance) =>
    <String, dynamic>{
      'chairOrgId': instance.chairOrgId,
      'id': instance.id,
      'lastDhxRevenue': instance.lastDhxRevenue,
      'lastMpower': instance.lastMpower,
      'lastPaidDate': instance.lastPaidDate?.toIso8601String(),
      'name': instance.name,
    };

ExtapiCreateApplicationRequest _$ExtapiCreateApplicationRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateApplicationRequest(
    application: json['application'] == null
        ? null
        : ExtapiApplication.fromJson(
            json['application'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateApplicationRequestToJson(
        ExtapiCreateApplicationRequest instance) =>
    <String, dynamic>{
      'application': instance.application?.toJson(),
    };

ExtapiCreateApplicationResponse _$ExtapiCreateApplicationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateApplicationResponse(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateApplicationResponseToJson(
        ExtapiCreateApplicationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ExtapiCreateDeviceKeysRequest _$ExtapiCreateDeviceKeysRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateDeviceKeysRequest(
    deviceKeys: json['deviceKeys'] == null
        ? null
        : ExtapiDeviceKeys.fromJson(json['deviceKeys'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateDeviceKeysRequestToJson(
        ExtapiCreateDeviceKeysRequest instance) =>
    <String, dynamic>{
      'deviceKeys': instance.deviceKeys?.toJson(),
    };

ExtapiCreateDeviceProfileRequest _$ExtapiCreateDeviceProfileRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateDeviceProfileRequest(
    deviceProfile: json['deviceProfile'] == null
        ? null
        : ExtapiDeviceProfile.fromJson(
            json['deviceProfile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateDeviceProfileRequestToJson(
        ExtapiCreateDeviceProfileRequest instance) =>
    <String, dynamic>{
      'deviceProfile': instance.deviceProfile?.toJson(),
    };

ExtapiCreateDeviceProfileResponse _$ExtapiCreateDeviceProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateDeviceProfileResponse(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateDeviceProfileResponseToJson(
        ExtapiCreateDeviceProfileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ExtapiCreateDeviceRequest _$ExtapiCreateDeviceRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateDeviceRequest(
    device: json['device'] == null
        ? null
        : ExtapiDevice.fromJson(json['device'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateDeviceRequestToJson(
        ExtapiCreateDeviceRequest instance) =>
    <String, dynamic>{
      'device': instance.device?.toJson(),
    };

ExtapiCreateFUOTADeploymentForDeviceRequest
    _$ExtapiCreateFUOTADeploymentForDeviceRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiCreateFUOTADeploymentForDeviceRequest(
    devEUI: json['devEUI'] as String?,
    fuotaDeployment: json['fuotaDeployment'] == null
        ? null
        : ExtapiFUOTADeployment.fromJson(
            json['fuotaDeployment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateFUOTADeploymentForDeviceRequestToJson(
        ExtapiCreateFUOTADeploymentForDeviceRequest instance) =>
    <String, dynamic>{
      'devEUI': instance.devEUI,
      'fuotaDeployment': instance.fuotaDeployment?.toJson(),
    };

ExtapiCreateFUOTADeploymentForDeviceResponse
    _$ExtapiCreateFUOTADeploymentForDeviceResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiCreateFUOTADeploymentForDeviceResponse(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateFUOTADeploymentForDeviceResponseToJson(
        ExtapiCreateFUOTADeploymentForDeviceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ExtapiCreateGatewayProfileRequest _$ExtapiCreateGatewayProfileRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateGatewayProfileRequest(
    gatewayProfile: json['gatewayProfile'] == null
        ? null
        : ExtapiGatewayProfile.fromJson(
            json['gatewayProfile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateGatewayProfileRequestToJson(
        ExtapiCreateGatewayProfileRequest instance) =>
    <String, dynamic>{
      'gatewayProfile': instance.gatewayProfile?.toJson(),
    };

ExtapiCreateGatewayProfileResponse _$ExtapiCreateGatewayProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateGatewayProfileResponse(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateGatewayProfileResponseToJson(
        ExtapiCreateGatewayProfileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ExtapiCreateGatewayRequest _$ExtapiCreateGatewayRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateGatewayRequest(
    gateway: json['gateway'] == null
        ? null
        : ExtapiGateway.fromJson(json['gateway'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateGatewayRequestToJson(
        ExtapiCreateGatewayRequest instance) =>
    <String, dynamic>{
      'gateway': instance.gateway?.toJson(),
    };

ExtapiCreateHTTPIntegrationRequest _$ExtapiCreateHTTPIntegrationRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateHTTPIntegrationRequest(
    integration: json['integration'] == null
        ? null
        : ExtapiHTTPIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateHTTPIntegrationRequestToJson(
        ExtapiCreateHTTPIntegrationRequest instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiCreateInfluxDBIntegrationRequest
    _$ExtapiCreateInfluxDBIntegrationRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiCreateInfluxDBIntegrationRequest(
    integration: json['integration'] == null
        ? null
        : ExtapiInfluxDBIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateInfluxDBIntegrationRequestToJson(
        ExtapiCreateInfluxDBIntegrationRequest instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiCreateLoRaCloudIntegrationRequest
    _$ExtapiCreateLoRaCloudIntegrationRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiCreateLoRaCloudIntegrationRequest(
    integration: json['integration'] == null
        ? null
        : ExtapiLoRaCloudIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateLoRaCloudIntegrationRequestToJson(
        ExtapiCreateLoRaCloudIntegrationRequest instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiCreateMulticastGroupRequest _$ExtapiCreateMulticastGroupRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateMulticastGroupRequest(
    multicastGroup: json['multicastGroup'] == null
        ? null
        : ExtapiMulticastGroup.fromJson(
            json['multicastGroup'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateMulticastGroupRequestToJson(
        ExtapiCreateMulticastGroupRequest instance) =>
    <String, dynamic>{
      'multicastGroup': instance.multicastGroup?.toJson(),
    };

ExtapiCreateMulticastGroupResponse _$ExtapiCreateMulticastGroupResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateMulticastGroupResponse(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateMulticastGroupResponseToJson(
        ExtapiCreateMulticastGroupResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ExtapiCreateMyDevicesIntegrationRequest
    _$ExtapiCreateMyDevicesIntegrationRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiCreateMyDevicesIntegrationRequest(
    integration: json['integration'] == null
        ? null
        : ExtapiMyDevicesIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateMyDevicesIntegrationRequestToJson(
        ExtapiCreateMyDevicesIntegrationRequest instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiCreateNetworkServerRequest _$ExtapiCreateNetworkServerRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateNetworkServerRequest(
    networkServer: json['networkServer'] == null
        ? null
        : ExtapiNetworkServer.fromJson(
            json['networkServer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateNetworkServerRequestToJson(
        ExtapiCreateNetworkServerRequest instance) =>
    <String, dynamic>{
      'networkServer': instance.networkServer?.toJson(),
    };

ExtapiCreateNetworkServerResponse _$ExtapiCreateNetworkServerResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateNetworkServerResponse(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateNetworkServerResponseToJson(
        ExtapiCreateNetworkServerResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ExtapiCreateOrganizationRequest _$ExtapiCreateOrganizationRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateOrganizationRequest(
    organization: json['organization'] == null
        ? null
        : ExtapiOrganization.fromJson(
            json['organization'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateOrganizationRequestToJson(
        ExtapiCreateOrganizationRequest instance) =>
    <String, dynamic>{
      'organization': instance.organization?.toJson(),
    };

ExtapiCreateOrganizationResponse _$ExtapiCreateOrganizationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateOrganizationResponse(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateOrganizationResponseToJson(
        ExtapiCreateOrganizationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ExtapiCreateRequest _$ExtapiCreateRequestFromJson(Map<String, dynamic> json) {
  return ExtapiCreateRequest(
    applicationId: json['applicationId'] as String?,
    organizationId: json['organizationId'] as String?,
    provisionId: json['provisionId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateRequestToJson(
        ExtapiCreateRequest instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'organizationId': instance.organizationId,
      'provisionId': instance.provisionId,
    };

ExtapiCreateResponse _$ExtapiCreateResponseFromJson(Map<String, dynamic> json) {
  return ExtapiCreateResponse(
    devEui: json['devEui'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateResponseToJson(
        ExtapiCreateResponse instance) =>
    <String, dynamic>{
      'devEui': instance.devEui,
    };

ExtapiCreateServiceProfileRequest _$ExtapiCreateServiceProfileRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateServiceProfileRequest(
    serviceProfile: json['serviceProfile'] == null
        ? null
        : ExtapiServiceProfile.fromJson(
            json['serviceProfile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateServiceProfileRequestToJson(
        ExtapiCreateServiceProfileRequest instance) =>
    <String, dynamic>{
      'serviceProfile': instance.serviceProfile?.toJson(),
    };

ExtapiCreateServiceProfileResponse _$ExtapiCreateServiceProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateServiceProfileResponse(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateServiceProfileResponseToJson(
        ExtapiCreateServiceProfileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ExtapiCreateThingsBoardIntegrationRequest
    _$ExtapiCreateThingsBoardIntegrationRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiCreateThingsBoardIntegrationRequest(
    integration: json['integration'] == null
        ? null
        : ExtapiThingsBoardIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateThingsBoardIntegrationRequestToJson(
        ExtapiCreateThingsBoardIntegrationRequest instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiCreateUserRequest _$ExtapiCreateUserRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateUserRequest(
    organizations: (json['organizations'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiUserOrganization.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    password: json['password'] as String?,
    user: json['user'] == null
        ? null
        : ExtapiUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiCreateUserRequestToJson(
        ExtapiCreateUserRequest instance) =>
    <String, dynamic>{
      'organizations': instance.organizations?.map((e) => e.toJson()).toList(),
      'password': instance.password,
      'user': instance.user?.toJson(),
    };

ExtapiCreateUserResponse _$ExtapiCreateUserResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiCreateUserResponse(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiCreateUserResponseToJson(
        ExtapiCreateUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ExtapiDFIAuthenticateUserResponse _$ExtapiDFIAuthenticateUserResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDFIAuthenticateUserResponse(
    mxcBalance: json['mxcBalance'] as String?,
    organizationID: json['organizationID'] as String?,
    userEmail: json['userEmail'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDFIAuthenticateUserResponseToJson(
        ExtapiDFIAuthenticateUserResponse instance) =>
    <String, dynamic>{
      'mxcBalance': instance.mxcBalance,
      'organizationID': instance.organizationID,
      'userEmail': instance.userEmail,
    };

ExtapiDHXBondInfoRequest _$ExtapiDHXBondInfoRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXBondInfoRequest(
    orgId: json['orgId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXBondInfoRequestToJson(
        ExtapiDHXBondInfoRequest instance) =>
    <String, dynamic>{
      'orgId': instance.orgId,
    };

ExtapiDHXBondInfoResponse _$ExtapiDHXBondInfoResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXBondInfoResponse(
    dhxBonded: json['dhxBonded'] as String?,
    dhxCoolingOff: (json['dhxCoolingOff'] as List<dynamic>?)
            ?.map(
                (e) => ExtapiDHXCoolingOff.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    dhxCoolingOffTotal: json['dhxCoolingOffTotal'] as String?,
    dhxUnbonding: (json['dhxUnbonding'] as List<dynamic>?)
            ?.map((e) => ExtapiDHXUnbonding.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    dhxUnbondingTotal: json['dhxUnbondingTotal'] as String?,
    orgId: json['orgId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXBondInfoResponseToJson(
        ExtapiDHXBondInfoResponse instance) =>
    <String, dynamic>{
      'dhxBonded': instance.dhxBonded,
      'dhxCoolingOff': instance.dhxCoolingOff?.map((e) => e.toJson()).toList(),
      'dhxCoolingOffTotal': instance.dhxCoolingOffTotal,
      'dhxUnbonding': instance.dhxUnbonding?.map((e) => e.toJson()).toList(),
      'dhxUnbondingTotal': instance.dhxUnbondingTotal,
      'orgId': instance.orgId,
    };

ExtapiDHXBondRequest _$ExtapiDHXBondRequestFromJson(Map<String, dynamic> json) {
  return ExtapiDHXBondRequest(
    amount: json['amount'] as String?,
    orgId: json['orgId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXBondRequestToJson(
        ExtapiDHXBondRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'orgId': instance.orgId,
    };

ExtapiDHXBondResponse _$ExtapiDHXBondResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXBondResponse();
}

Map<String, dynamic> _$ExtapiDHXBondResponseToJson(
        ExtapiDHXBondResponse instance) =>
    <String, dynamic>{};

ExtapiDHXCoolingOff _$ExtapiDHXCoolingOffFromJson(Map<String, dynamic> json) {
  return ExtapiDHXCoolingOff(
    amount: json['amount'] as String?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
  );
}

Map<String, dynamic> _$ExtapiDHXCoolingOffToJson(
        ExtapiDHXCoolingOff instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'created': instance.created?.toIso8601String(),
    };

ExtapiDHXCreateCouncilRequest _$ExtapiDHXCreateCouncilRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXCreateCouncilRequest(
    amount: json['amount'] as String?,
    boost: json['boost'] as String?,
    currency: json['currency'] as String?,
    lockMonths: json['lockMonths'] as String?,
    name: json['name'] as String?,
    organizationId: json['organizationId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXCreateCouncilRequestToJson(
        ExtapiDHXCreateCouncilRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'boost': instance.boost,
      'currency': instance.currency,
      'lockMonths': instance.lockMonths,
      'name': instance.name,
      'organizationId': instance.organizationId,
    };

ExtapiDHXCreateCouncilResponse _$ExtapiDHXCreateCouncilResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXCreateCouncilResponse(
    councilId: json['councilId'] as String?,
    stakeId: json['stakeId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXCreateCouncilResponseToJson(
        ExtapiDHXCreateCouncilResponse instance) =>
    <String, dynamic>{
      'councilId': instance.councilId,
      'stakeId': instance.stakeId,
    };

ExtapiDHXCreateStakeRequest _$ExtapiDHXCreateStakeRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXCreateStakeRequest(
    amount: json['amount'] as String?,
    boost: json['boost'] as String?,
    councilId: json['councilId'] as String?,
    currency: json['currency'] as String?,
    lockMonths: json['lockMonths'] as String?,
    organizationId: json['organizationId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXCreateStakeRequestToJson(
        ExtapiDHXCreateStakeRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'boost': instance.boost,
      'councilId': instance.councilId,
      'currency': instance.currency,
      'lockMonths': instance.lockMonths,
      'organizationId': instance.organizationId,
    };

ExtapiDHXCreateStakeResponse _$ExtapiDHXCreateStakeResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXCreateStakeResponse(
    stakeId: json['stakeId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXCreateStakeResponseToJson(
        ExtapiDHXCreateStakeResponse instance) =>
    <String, dynamic>{
      'stakeId': instance.stakeId,
    };

ExtapiDHXEstimateMiningResponse _$ExtapiDHXEstimateMiningResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXEstimateMiningResponse(
    dhxBondRecommended: json['dhxBondRecommended'] as String?,
    dhxBonded: json['dhxBonded'] as String?,
    dhxMiningLimit: json['dhxMiningLimit'] as String?,
    estimatedDhxRevenue: json['estimatedDhxRevenue'] as String?,
    estimatedMiningPower: json['estimatedMiningPower'] as String?,
    gateways: json['gateways'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXEstimateMiningResponseToJson(
        ExtapiDHXEstimateMiningResponse instance) =>
    <String, dynamic>{
      'dhxBondRecommended': instance.dhxBondRecommended,
      'dhxBonded': instance.dhxBonded,
      'dhxMiningLimit': instance.dhxMiningLimit,
      'estimatedDhxRevenue': instance.estimatedDhxRevenue,
      'estimatedMiningPower': instance.estimatedMiningPower,
      'gateways': instance.gateways,
    };

ExtapiDHXGetLastMiningResponse _$ExtapiDHXGetLastMiningResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXGetLastMiningResponse(
    councilDhxAmount: json['councilDhxAmount'] as String?,
    councilId: json['councilId'] as String?,
    councilMiningPower: json['councilMiningPower'] as String?,
    councilName: json['councilName'] as String?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    dhxAllocated: json['dhxAllocated'] as String?,
    dhxAmount: json['dhxAmount'] as String?,
    globalMiningPower: json['globalMiningPower'] as String?,
    miningPower: json['miningPower'] as String?,
    orgDhxAmount: json['orgDhxAmount'] as String?,
    orgDhxLimit: json['orgDhxLimit'] as String?,
    orgId: json['orgId'] as String?,
    orgMiningPower: json['orgMiningPower'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXGetLastMiningResponseToJson(
        ExtapiDHXGetLastMiningResponse instance) =>
    <String, dynamic>{
      'councilDhxAmount': instance.councilDhxAmount,
      'councilId': instance.councilId,
      'councilMiningPower': instance.councilMiningPower,
      'councilName': instance.councilName,
      'date': instance.date?.toIso8601String(),
      'dhxAllocated': instance.dhxAllocated,
      'dhxAmount': instance.dhxAmount,
      'globalMiningPower': instance.globalMiningPower,
      'miningPower': instance.miningPower,
      'orgDhxAmount': instance.orgDhxAmount,
      'orgDhxLimit': instance.orgDhxLimit,
      'orgId': instance.orgId,
      'orgMiningPower': instance.orgMiningPower,
    };

ExtapiDHXListCouncilsResponse _$ExtapiDHXListCouncilsResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXListCouncilsResponse(
    council: (json['council'] as List<dynamic>?)
            ?.map((e) => ExtapiCouncil.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiDHXListCouncilsResponseToJson(
        ExtapiDHXListCouncilsResponse instance) =>
    <String, dynamic>{
      'council': instance.council?.map((e) => e.toJson()).toList(),
    };

ExtapiDHXListStakesResponse _$ExtapiDHXListStakesResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXListStakesResponse(
    stake: (json['stake'] as List<dynamic>?)
            ?.map((e) => ExtapiDHXStake.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiDHXListStakesResponseToJson(
        ExtapiDHXListStakesResponse instance) =>
    <String, dynamic>{
      'stake': instance.stake?.map((e) => e.toJson()).toList(),
    };

ExtapiDHXMining _$ExtapiDHXMiningFromJson(Map<String, dynamic> json) {
  return ExtapiDHXMining(
    miningDate: json['miningDate'] == null
        ? null
        : DateTime.parse(json['miningDate'] as String),
    orgDhxBonded: json['orgDhxBonded'] as String?,
    orgDhxMined: json['orgDhxMined'] as String?,
    orgId: json['orgId'] as String?,
    orgMiningPower: json['orgMiningPower'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXMiningToJson(ExtapiDHXMining instance) =>
    <String, dynamic>{
      'miningDate': instance.miningDate?.toIso8601String(),
      'orgDhxBonded': instance.orgDhxBonded,
      'orgDhxMined': instance.orgDhxMined,
      'orgId': instance.orgId,
      'orgMiningPower': instance.orgMiningPower,
    };

ExtapiDHXMiningHistoryResponse _$ExtapiDHXMiningHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXMiningHistoryResponse(
    dhxMining: (json['dhxMining'] as List<dynamic>?)
            ?.map((e) => ExtapiDHXMining.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiDHXMiningHistoryResponseToJson(
        ExtapiDHXMiningHistoryResponse instance) =>
    <String, dynamic>{
      'dhxMining': instance.dhxMining?.map((e) => e.toJson()).toList(),
    };

ExtapiDHXStake _$ExtapiDHXStakeFromJson(Map<String, dynamic> json) {
  return ExtapiDHXStake(
    amount: json['amount'] as String?,
    boost: json['boost'] as String?,
    closed: json['closed'] as bool?,
    councilId: json['councilId'] as String?,
    councilName: json['councilName'] as String?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    currency: json['currency'] as String?,
    dhxMined: json['dhxMined'] as String?,
    id: json['id'] as String?,
    lockTill: json['lockTill'] == null
        ? null
        : DateTime.parse(json['lockTill'] as String),
    organizationId: json['organizationId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXStakeToJson(ExtapiDHXStake instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'boost': instance.boost,
      'closed': instance.closed,
      'councilId': instance.councilId,
      'councilName': instance.councilName,
      'created': instance.created?.toIso8601String(),
      'currency': instance.currency,
      'dhxMined': instance.dhxMined,
      'id': instance.id,
      'lockTill': instance.lockTill?.toIso8601String(),
      'organizationId': instance.organizationId,
    };

ExtapiDHXUnbondRequest _$ExtapiDHXUnbondRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXUnbondRequest(
    amount: json['amount'] as String?,
    orgId: json['orgId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDHXUnbondRequestToJson(
        ExtapiDHXUnbondRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'orgId': instance.orgId,
    };

ExtapiDHXUnbondResponse _$ExtapiDHXUnbondResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiDHXUnbondResponse();
}

Map<String, dynamic> _$ExtapiDHXUnbondResponseToJson(
        ExtapiDHXUnbondResponse instance) =>
    <String, dynamic>{};

ExtapiDHXUnbonding _$ExtapiDHXUnbondingFromJson(Map<String, dynamic> json) {
  return ExtapiDHXUnbonding(
    amount: json['amount'] as String?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
  );
}

Map<String, dynamic> _$ExtapiDHXUnbondingToJson(ExtapiDHXUnbonding instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'created': instance.created?.toIso8601String(),
    };

ExtapiDSDeviceProfile _$ExtapiDSDeviceProfileFromJson(
    Map<String, dynamic> json) {
  return ExtapiDSDeviceProfile(
    applicationId: json['applicationId'] as String?,
    createdAt: json['createdAt'] as String?,
    devEui: json['devEui'] as String?,
    fkWallet: json['fkWallet'] as String?,
    id: json['id'] as String?,
    lastSeenAt: json['lastSeenAt'] as String?,
    mode: extapiDeviceModeFromJson(json['mode'] as String?),
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDSDeviceProfileToJson(
        ExtapiDSDeviceProfile instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'createdAt': instance.createdAt,
      'devEui': instance.devEui,
      'fkWallet': instance.fkWallet,
      'id': instance.id,
      'lastSeenAt': instance.lastSeenAt,
      'mode': extapiDeviceModeToJson(instance.mode),
      'name': instance.name,
    };

ExtapiDevice _$ExtapiDeviceFromJson(Map<String, dynamic> json) {
  return ExtapiDevice(
    applicationID: json['applicationID'] as String?,
    description: json['description'] as String?,
    devEUI: json['devEUI'] as String?,
    deviceProfileID: json['deviceProfileID'] as String?,
    isDisabled: json['isDisabled'] as bool?,
    name: json['name'] as String?,
    referenceAltitude: (json['referenceAltitude'] as num?)?.toDouble(),
    skipFCntCheck: json['skipFCntCheck'] as bool?,
    tags: json['tags'],
    variables: json['variables'],
  );
}

Map<String, dynamic> _$ExtapiDeviceToJson(ExtapiDevice instance) =>
    <String, dynamic>{
      'applicationID': instance.applicationID,
      'description': instance.description,
      'devEUI': instance.devEUI,
      'deviceProfileID': instance.deviceProfileID,
      'isDisabled': instance.isDisabled,
      'name': instance.name,
      'referenceAltitude': instance.referenceAltitude,
      'skipFCntCheck': instance.skipFCntCheck,
      'tags': instance.tags,
      'variables': instance.variables,
    };

ExtapiDeviceActivation _$ExtapiDeviceActivationFromJson(
    Map<String, dynamic> json) {
  return ExtapiDeviceActivation(
    aFCntDown: json['aFCntDown'] as int?,
    appSKey: json['appSKey'] as String?,
    devAddr: json['devAddr'] as String?,
    devEUI: json['devEUI'] as String?,
    fCntUp: json['fCntUp'] as int?,
    fNwkSIntKey: json['fNwkSIntKey'] as String?,
    nFCntDown: json['nFCntDown'] as int?,
    nwkSEncKey: json['nwkSEncKey'] as String?,
    sNwkSIntKey: json['sNwkSIntKey'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDeviceActivationToJson(
        ExtapiDeviceActivation instance) =>
    <String, dynamic>{
      'aFCntDown': instance.aFCntDown,
      'appSKey': instance.appSKey,
      'devAddr': instance.devAddr,
      'devEUI': instance.devEUI,
      'fCntUp': instance.fCntUp,
      'fNwkSIntKey': instance.fNwkSIntKey,
      'nFCntDown': instance.nFCntDown,
      'nwkSEncKey': instance.nwkSEncKey,
      'sNwkSIntKey': instance.sNwkSIntKey,
    };

ExtapiDeviceKeys _$ExtapiDeviceKeysFromJson(Map<String, dynamic> json) {
  return ExtapiDeviceKeys(
    appKey: json['appKey'] as String?,
    devEUI: json['devEUI'] as String?,
    genAppKey: json['genAppKey'] as String?,
    nwkKey: json['nwkKey'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDeviceKeysToJson(ExtapiDeviceKeys instance) =>
    <String, dynamic>{
      'appKey': instance.appKey,
      'devEUI': instance.devEUI,
      'genAppKey': instance.genAppKey,
      'nwkKey': instance.nwkKey,
    };

ExtapiDeviceListItem _$ExtapiDeviceListItemFromJson(Map<String, dynamic> json) {
  return ExtapiDeviceListItem(
    applicationID: json['applicationID'] as String?,
    description: json['description'] as String?,
    devEUI: json['devEUI'] as String?,
    deviceProfileID: json['deviceProfileID'] as String?,
    deviceProfileName: json['deviceProfileName'] as String?,
    deviceStatusBattery: json['deviceStatusBattery'] as int?,
    deviceStatusBatteryLevel:
        (json['deviceStatusBatteryLevel'] as num?)?.toDouble(),
    deviceStatusBatteryLevelUnavailable:
        json['deviceStatusBatteryLevelUnavailable'] as bool?,
    deviceStatusExternalPowerSource:
        json['deviceStatusExternalPowerSource'] as bool?,
    deviceStatusMargin: json['deviceStatusMargin'] as int?,
    lastSeenAt: json['lastSeenAt'] == null
        ? null
        : DateTime.parse(json['lastSeenAt'] as String),
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDeviceListItemToJson(
        ExtapiDeviceListItem instance) =>
    <String, dynamic>{
      'applicationID': instance.applicationID,
      'description': instance.description,
      'devEUI': instance.devEUI,
      'deviceProfileID': instance.deviceProfileID,
      'deviceProfileName': instance.deviceProfileName,
      'deviceStatusBattery': instance.deviceStatusBattery,
      'deviceStatusBatteryLevel': instance.deviceStatusBatteryLevel,
      'deviceStatusBatteryLevelUnavailable':
          instance.deviceStatusBatteryLevelUnavailable,
      'deviceStatusExternalPowerSource':
          instance.deviceStatusExternalPowerSource,
      'deviceStatusMargin': instance.deviceStatusMargin,
      'lastSeenAt': instance.lastSeenAt?.toIso8601String(),
      'name': instance.name,
    };

ExtapiDeviceProfile _$ExtapiDeviceProfileFromJson(Map<String, dynamic> json) {
  return ExtapiDeviceProfile(
    classBTimeout: json['classBTimeout'] as int?,
    classCTimeout: json['classCTimeout'] as int?,
    factoryPresetFreqs: (json['factoryPresetFreqs'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList() ??
        [],
    geolocBufferTTL: json['geolocBufferTTL'] as int?,
    geolocMinBufferSize: json['geolocMinBufferSize'] as int?,
    id: json['id'] as String?,
    macVersion: json['macVersion'] as String?,
    maxDutyCycle: json['maxDutyCycle'] as int?,
    maxEIRP: json['maxEIRP'] as int?,
    name: json['name'] as String?,
    networkServerID: json['networkServerID'] as String?,
    organizationID: json['organizationID'] as String?,
    payloadCodec: json['payloadCodec'] as String?,
    payloadDecoderScript: json['payloadDecoderScript'] as String?,
    payloadEncoderScript: json['payloadEncoderScript'] as String?,
    pingSlotDR: json['pingSlotDR'] as int?,
    pingSlotFreq: json['pingSlotFreq'] as int?,
    pingSlotPeriod: json['pingSlotPeriod'] as int?,
    regParamsRevision: json['regParamsRevision'] as String?,
    rfRegion: json['rfRegion'] as String?,
    rxDROffset1: json['rxDROffset1'] as int?,
    rxDataRate2: json['rxDataRate2'] as int?,
    rxDelay1: json['rxDelay1'] as int?,
    rxFreq2: json['rxFreq2'] as int?,
    supports32BitFCnt: json['supports32BitFCnt'] as bool?,
    supportsClassB: json['supportsClassB'] as bool?,
    supportsClassC: json['supportsClassC'] as bool?,
    supportsJoin: json['supportsJoin'] as bool?,
    tags: json['tags'],
  );
}

Map<String, dynamic> _$ExtapiDeviceProfileToJson(
        ExtapiDeviceProfile instance) =>
    <String, dynamic>{
      'classBTimeout': instance.classBTimeout,
      'classCTimeout': instance.classCTimeout,
      'factoryPresetFreqs': instance.factoryPresetFreqs,
      'geolocBufferTTL': instance.geolocBufferTTL,
      'geolocMinBufferSize': instance.geolocMinBufferSize,
      'id': instance.id,
      'macVersion': instance.macVersion,
      'maxDutyCycle': instance.maxDutyCycle,
      'maxEIRP': instance.maxEIRP,
      'name': instance.name,
      'networkServerID': instance.networkServerID,
      'organizationID': instance.organizationID,
      'payloadCodec': instance.payloadCodec,
      'payloadDecoderScript': instance.payloadDecoderScript,
      'payloadEncoderScript': instance.payloadEncoderScript,
      'pingSlotDR': instance.pingSlotDR,
      'pingSlotFreq': instance.pingSlotFreq,
      'pingSlotPeriod': instance.pingSlotPeriod,
      'regParamsRevision': instance.regParamsRevision,
      'rfRegion': instance.rfRegion,
      'rxDROffset1': instance.rxDROffset1,
      'rxDataRate2': instance.rxDataRate2,
      'rxDelay1': instance.rxDelay1,
      'rxFreq2': instance.rxFreq2,
      'supports32BitFCnt': instance.supports32BitFCnt,
      'supportsClassB': instance.supportsClassB,
      'supportsClassC': instance.supportsClassC,
      'supportsJoin': instance.supportsJoin,
      'tags': instance.tags,
    };

ExtapiDeviceProfileListItem _$ExtapiDeviceProfileListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiDeviceProfileListItem(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    id: json['id'] as String?,
    name: json['name'] as String?,
    networkServerID: json['networkServerID'] as String?,
    organizationID: json['organizationID'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiDeviceProfileListItemToJson(
        ExtapiDeviceProfileListItem instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'networkServerID': instance.networkServerID,
      'organizationID': instance.organizationID,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiDeviceQueueItem _$ExtapiDeviceQueueItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiDeviceQueueItem(
    confirmed: json['confirmed'] as bool?,
    data: json['data'] as String?,
    devEUI: json['devEUI'] as String?,
    fCnt: json['fCnt'] as int?,
    fPort: json['fPort'] as int?,
    jsonObject: json['jsonObject'] as String?,
  );
}

Map<String, dynamic> _$ExtapiDeviceQueueItemToJson(
        ExtapiDeviceQueueItem instance) =>
    <String, dynamic>{
      'confirmed': instance.confirmed,
      'data': instance.data,
      'devEUI': instance.devEUI,
      'fCnt': instance.fCnt,
      'fPort': instance.fPort,
      'jsonObject': instance.jsonObject,
    };

ExtapiDownlinkFrameLog _$ExtapiDownlinkFrameLogFromJson(
    Map<String, dynamic> json) {
  return ExtapiDownlinkFrameLog(
    phyPayloadJSON: json['phyPayloadJSON'] as String?,
    txInfo: json['txInfo'] == null
        ? null
        : GwDownlinkTXInfo.fromJson(json['txInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiDownlinkFrameLogToJson(
        ExtapiDownlinkFrameLog instance) =>
    <String, dynamic>{
      'phyPayloadJSON': instance.phyPayloadJSON,
      'txInfo': instance.txInfo?.toJson(),
    };

ExtapiEnqueueDeviceQueueItemRequest
    _$ExtapiEnqueueDeviceQueueItemRequestFromJson(Map<String, dynamic> json) {
  return ExtapiEnqueueDeviceQueueItemRequest(
    deviceQueueItem: json['deviceQueueItem'] == null
        ? null
        : ExtapiDeviceQueueItem.fromJson(
            json['deviceQueueItem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiEnqueueDeviceQueueItemRequestToJson(
        ExtapiEnqueueDeviceQueueItemRequest instance) =>
    <String, dynamic>{
      'deviceQueueItem': instance.deviceQueueItem?.toJson(),
    };

ExtapiEnqueueDeviceQueueItemResponse
    _$ExtapiEnqueueDeviceQueueItemResponseFromJson(Map<String, dynamic> json) {
  return ExtapiEnqueueDeviceQueueItemResponse(
    fCnt: json['fCnt'] as int?,
  );
}

Map<String, dynamic> _$ExtapiEnqueueDeviceQueueItemResponseToJson(
        ExtapiEnqueueDeviceQueueItemResponse instance) =>
    <String, dynamic>{
      'fCnt': instance.fCnt,
    };

ExtapiEnqueueMulticastQueueItemRequest
    _$ExtapiEnqueueMulticastQueueItemRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiEnqueueMulticastQueueItemRequest(
    multicastQueueItem: json['multicastQueueItem'] == null
        ? null
        : ExtapiMulticastQueueItem.fromJson(
            json['multicastQueueItem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiEnqueueMulticastQueueItemRequestToJson(
        ExtapiEnqueueMulticastQueueItemRequest instance) =>
    <String, dynamic>{
      'multicastQueueItem': instance.multicastQueueItem?.toJson(),
    };

ExtapiEnqueueMulticastQueueItemResponse
    _$ExtapiEnqueueMulticastQueueItemResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiEnqueueMulticastQueueItemResponse(
    fCnt: json['fCnt'] as int?,
  );
}

Map<String, dynamic> _$ExtapiEnqueueMulticastQueueItemResponseToJson(
        ExtapiEnqueueMulticastQueueItemResponse instance) =>
    <String, dynamic>{
      'fCnt': instance.fCnt,
    };

ExtapiExternalUserAccount _$ExtapiExternalUserAccountFromJson(
    Map<String, dynamic> json) {
  return ExtapiExternalUserAccount(
    externalUserId: json['externalUserId'] as String?,
    externalUsername: json['externalUsername'] as String?,
    service: json['service'] as String?,
  );
}

Map<String, dynamic> _$ExtapiExternalUserAccountToJson(
        ExtapiExternalUserAccount instance) =>
    <String, dynamic>{
      'externalUserId': instance.externalUserId,
      'externalUsername': instance.externalUsername,
      'service': instance.service,
    };

ExtapiFUOTADeployment _$ExtapiFUOTADeploymentFromJson(
    Map<String, dynamic> json) {
  return ExtapiFUOTADeployment(
    dr: json['dr'] as int?,
    frequency: json['frequency'] as int?,
    groupType: extapiMulticastGroupTypeFromJson(json['groupType'] as String?),
    id: json['id'] as String?,
    multicastTimeout: json['multicastTimeout'] as int?,
    name: json['name'] as String?,
    nextStepAfter: json['nextStepAfter'] == null
        ? null
        : DateTime.parse(json['nextStepAfter'] as String),
    payload: json['payload'] as String?,
    redundancy: json['redundancy'] as int?,
    state: json['state'] as String?,
    unicastTimeout: json['unicastTimeout'] as String?,
  );
}

Map<String, dynamic> _$ExtapiFUOTADeploymentToJson(
        ExtapiFUOTADeployment instance) =>
    <String, dynamic>{
      'dr': instance.dr,
      'frequency': instance.frequency,
      'groupType': extapiMulticastGroupTypeToJson(instance.groupType),
      'id': instance.id,
      'multicastTimeout': instance.multicastTimeout,
      'name': instance.name,
      'nextStepAfter': instance.nextStepAfter?.toIso8601String(),
      'payload': instance.payload,
      'redundancy': instance.redundancy,
      'state': instance.state,
      'unicastTimeout': instance.unicastTimeout,
    };

ExtapiFUOTADeploymentDeviceListItem
    _$ExtapiFUOTADeploymentDeviceListItemFromJson(Map<String, dynamic> json) {
  return ExtapiFUOTADeploymentDeviceListItem(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    devEUI: json['devEUI'] as String?,
    deviceName: json['deviceName'] as String?,
    errorMessage: json['errorMessage'] as String?,
    state: extapiFUOTADeploymentDeviceStateFromJson(json['state'] as String?),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiFUOTADeploymentDeviceListItemToJson(
        ExtapiFUOTADeploymentDeviceListItem instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'devEUI': instance.devEUI,
      'deviceName': instance.deviceName,
      'errorMessage': instance.errorMessage,
      'state': extapiFUOTADeploymentDeviceStateToJson(instance.state),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiFUOTADeploymentListItem _$ExtapiFUOTADeploymentListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiFUOTADeploymentListItem(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    id: json['id'] as String?,
    name: json['name'] as String?,
    nextStepAfter: json['nextStepAfter'] == null
        ? null
        : DateTime.parse(json['nextStepAfter'] as String),
    state: json['state'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiFUOTADeploymentListItemToJson(
        ExtapiFUOTADeploymentListItem instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'nextStepAfter': instance.nextStepAfter?.toIso8601String(),
      'state': instance.state,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiFiatCurrency _$ExtapiFiatCurrencyFromJson(Map<String, dynamic> json) {
  return ExtapiFiatCurrency(
    description: json['description'] as String?,
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiFiatCurrencyToJson(ExtapiFiatCurrency instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
    };

ExtapiFinishRegistrationRequest _$ExtapiFinishRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiFinishRegistrationRequest(
    organizationDisplayName: json['organizationDisplayName'] as String?,
    organizationName: json['organizationName'] as String?,
    password: json['password'] as String?,
    userId: json['userId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiFinishRegistrationRequestToJson(
        ExtapiFinishRegistrationRequest instance) =>
    <String, dynamic>{
      'organizationDisplayName': instance.organizationDisplayName,
      'organizationName': instance.organizationName,
      'password': instance.password,
      'userId': instance.userId,
    };

ExtapiGSGatewayProfile _$ExtapiGSGatewayProfileFromJson(
    Map<String, dynamic> json) {
  return ExtapiGSGatewayProfile(
    createAt: json['createAt'] as String?,
    description: json['description'] as String?,
    fkGwNs: json['fkGwNs'] as String?,
    fkWallet: json['fkWallet'] as String?,
    id: json['id'] as String?,
    lastSeenAt: json['lastSeenAt'] as String?,
    mac: json['mac'] as String?,
    mode: extapiGatewayModeFromJson(json['mode'] as String?),
    name: json['name'] as String?,
    orgId: json['orgId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGSGatewayProfileToJson(
        ExtapiGSGatewayProfile instance) =>
    <String, dynamic>{
      'createAt': instance.createAt,
      'description': instance.description,
      'fkGwNs': instance.fkGwNs,
      'fkWallet': instance.fkWallet,
      'id': instance.id,
      'lastSeenAt': instance.lastSeenAt,
      'mac': instance.mac,
      'mode': extapiGatewayModeToJson(instance.mode),
      'name': instance.name,
      'orgId': instance.orgId,
    };

ExtapiGateway _$ExtapiGatewayFromJson(Map<String, dynamic> json) {
  return ExtapiGateway(
    boards: (json['boards'] as List<dynamic>?)
            ?.map((e) => ExtapiGatewayBoard.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    description: json['description'] as String?,
    discoveryEnabled: json['discoveryEnabled'] as bool?,
    gatewayProfileID: json['gatewayProfileID'] as String?,
    id: json['id'] as String?,
    location: json['location'] == null
        ? null
        : CommonLocation.fromJson(json['location'] as Map<String, dynamic>),
    metadata: json['metadata'],
    name: json['name'] as String?,
    networkServerID: json['networkServerID'] as String?,
    organizationID: json['organizationID'] as String?,
    tags: json['tags'],
  );
}

Map<String, dynamic> _$ExtapiGatewayToJson(ExtapiGateway instance) =>
    <String, dynamic>{
      'boards': instance.boards?.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'discoveryEnabled': instance.discoveryEnabled,
      'gatewayProfileID': instance.gatewayProfileID,
      'id': instance.id,
      'location': instance.location?.toJson(),
      'metadata': instance.metadata,
      'name': instance.name,
      'networkServerID': instance.networkServerID,
      'organizationID': instance.organizationID,
      'tags': instance.tags,
    };

ExtapiGatewayBoard _$ExtapiGatewayBoardFromJson(Map<String, dynamic> json) {
  return ExtapiGatewayBoard(
    fineTimestampKey: json['fineTimestampKey'] as String?,
    fpgaID: json['fpgaID'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGatewayBoardToJson(ExtapiGatewayBoard instance) =>
    <String, dynamic>{
      'fineTimestampKey': instance.fineTimestampKey,
      'fpgaID': instance.fpgaID,
    };

ExtapiGatewayListItem _$ExtapiGatewayListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiGatewayListItem(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    description: json['description'] as String?,
    firstSeenAt: json['firstSeenAt'] == null
        ? null
        : DateTime.parse(json['firstSeenAt'] as String),
    id: json['id'] as String?,
    lastSeenAt: json['lastSeenAt'] == null
        ? null
        : DateTime.parse(json['lastSeenAt'] as String),
    location: json['location'] == null
        ? null
        : CommonLocation.fromJson(json['location'] as Map<String, dynamic>),
    name: json['name'] as String?,
    networkServerID: json['networkServerID'] as String?,
    organizationID: json['organizationID'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiGatewayListItemToJson(
        ExtapiGatewayListItem instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'description': instance.description,
      'firstSeenAt': instance.firstSeenAt?.toIso8601String(),
      'id': instance.id,
      'lastSeenAt': instance.lastSeenAt?.toIso8601String(),
      'location': instance.location?.toJson(),
      'name': instance.name,
      'networkServerID': instance.networkServerID,
      'organizationID': instance.organizationID,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiGatewayLocation _$ExtapiGatewayLocationFromJson(
    Map<String, dynamic> json) {
  return ExtapiGatewayLocation(
    altitude: (json['altitude'] as num?)?.toDouble(),
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ExtapiGatewayLocationToJson(
        ExtapiGatewayLocation instance) =>
    <String, dynamic>{
      'altitude': instance.altitude,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

ExtapiGatewayLocationListItem _$ExtapiGatewayLocationListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiGatewayLocationListItem(
    location: json['location'] == null
        ? null
        : ExtapiGatewayLocation.fromJson(
            json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGatewayLocationListItemToJson(
        ExtapiGatewayLocationListItem instance) =>
    <String, dynamic>{
      'location': instance.location?.toJson(),
    };

ExtapiGatewayMiningFuelChange _$ExtapiGatewayMiningFuelChangeFromJson(
    Map<String, dynamic> json) {
  return ExtapiGatewayMiningFuelChange(
    amount: json['amount'] as String?,
    gatewayMac: json['gatewayMac'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGatewayMiningFuelChangeToJson(
        ExtapiGatewayMiningFuelChange instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'gatewayMac': instance.gatewayMac,
    };

ExtapiGatewayMiningHealth _$ExtapiGatewayMiningHealthFromJson(
    Map<String, dynamic> json) {
  return ExtapiGatewayMiningHealth(
    ageSeconds: json['ageSeconds'] as String?,
    health: (json['health'] as num?)?.toDouble(),
    id: json['id'] as String?,
    miningFuel: json['miningFuel'] as String?,
    miningFuelHealth: (json['miningFuelHealth'] as num?)?.toDouble(),
    miningFuelMax: json['miningFuelMax'] as String?,
    orgId: json['orgId'] as String?,
    totalMined: json['totalMined'] as String?,
    uptimeHealth: (json['uptimeHealth'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ExtapiGatewayMiningHealthToJson(
        ExtapiGatewayMiningHealth instance) =>
    <String, dynamic>{
      'ageSeconds': instance.ageSeconds,
      'health': instance.health,
      'id': instance.id,
      'miningFuel': instance.miningFuel,
      'miningFuelHealth': instance.miningFuelHealth,
      'miningFuelMax': instance.miningFuelMax,
      'orgId': instance.orgId,
      'totalMined': instance.totalMined,
      'uptimeHealth': instance.uptimeHealth,
    };

ExtapiGatewayProfile _$ExtapiGatewayProfileFromJson(Map<String, dynamic> json) {
  return ExtapiGatewayProfile(
    channels:
        (json['channels'] as List<dynamic>?)?.map((e) => e as int).toList() ??
            [],
    extraChannels: (json['extraChannels'] as List<dynamic>?)
            ?.map((e) => ExtapiGatewayProfileExtraChannel.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
    id: json['id'] as String?,
    name: json['name'] as String?,
    networkServerID: json['networkServerID'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGatewayProfileToJson(
        ExtapiGatewayProfile instance) =>
    <String, dynamic>{
      'channels': instance.channels,
      'extraChannels': instance.extraChannels?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'networkServerID': instance.networkServerID,
    };

ExtapiGatewayProfileExtraChannel _$ExtapiGatewayProfileExtraChannelFromJson(
    Map<String, dynamic> json) {
  return ExtapiGatewayProfileExtraChannel(
    bandwidth: json['bandwidth'] as int?,
    bitrate: json['bitrate'] as int?,
    frequency: json['frequency'] as int?,
    modulation: commonModulationFromJson(json['modulation'] as String?),
    spreadingFactors: (json['spreadingFactors'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGatewayProfileExtraChannelToJson(
        ExtapiGatewayProfileExtraChannel instance) =>
    <String, dynamic>{
      'bandwidth': instance.bandwidth,
      'bitrate': instance.bitrate,
      'frequency': instance.frequency,
      'modulation': commonModulationToJson(instance.modulation),
      'spreadingFactors': instance.spreadingFactors,
    };

ExtapiGatewayProfileListItem _$ExtapiGatewayProfileListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiGatewayProfileListItem(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    id: json['id'] as String?,
    name: json['name'] as String?,
    networkServerID: json['networkServerID'] as String?,
    networkServerName: json['networkServerName'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiGatewayProfileListItemToJson(
        ExtapiGatewayProfileListItem instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'networkServerID': instance.networkServerID,
      'networkServerName': instance.networkServerName,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiGatewayStats _$ExtapiGatewayStatsFromJson(Map<String, dynamic> json) {
  return ExtapiGatewayStats(
    rxPacketsReceived: json['rxPacketsReceived'] as int?,
    rxPacketsReceivedOK: json['rxPacketsReceivedOK'] as int?,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    txPacketsEmitted: json['txPacketsEmitted'] as int?,
    txPacketsReceived: json['txPacketsReceived'] as int?,
  );
}

Map<String, dynamic> _$ExtapiGatewayStatsToJson(ExtapiGatewayStats instance) =>
    <String, dynamic>{
      'rxPacketsReceived': instance.rxPacketsReceived,
      'rxPacketsReceivedOK': instance.rxPacketsReceivedOK,
      'timestamp': instance.timestamp?.toIso8601String(),
      'txPacketsEmitted': instance.txPacketsEmitted,
      'txPacketsReceived': instance.txPacketsReceived,
    };

ExtapiGetActiveStakesResponse _$ExtapiGetActiveStakesResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetActiveStakesResponse(
    actStake: (json['actStake'] as List<dynamic>?)
            ?.map((e) => ExtapiStake.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetActiveStakesResponseToJson(
        ExtapiGetActiveStakesResponse instance) =>
    <String, dynamic>{
      'actStake': instance.actStake?.map((e) => e.toJson()).toList(),
    };

ExtapiGetApplicationResponse _$ExtapiGetApplicationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetApplicationResponse(
    application: json['application'] == null
        ? null
        : ExtapiApplication.fromJson(
            json['application'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetApplicationResponseToJson(
        ExtapiGetApplicationResponse instance) =>
    <String, dynamic>{
      'application': instance.application?.toJson(),
    };

ExtapiGetAppserverVersionResponse _$ExtapiGetAppserverVersionResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetAppserverVersionResponse(
    version: json['version'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetAppserverVersionResponseToJson(
        ExtapiGetAppserverVersionResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
    };

ExtapiGetDSDeviceProfileResponse _$ExtapiGetDSDeviceProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetDSDeviceProfileResponse(
    devProfile: json['devProfile'] == null
        ? null
        : ExtapiDSDeviceProfile.fromJson(
            json['devProfile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetDSDeviceProfileResponseToJson(
        ExtapiGetDSDeviceProfileResponse instance) =>
    <String, dynamic>{
      'devProfile': instance.devProfile?.toJson(),
    };

ExtapiGetDefaultGatewayConfigResponse
    _$ExtapiGetDefaultGatewayConfigResponseFromJson(Map<String, dynamic> json) {
  return ExtapiGetDefaultGatewayConfigResponse(
    defaultConfig: json['defaultConfig'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetDefaultGatewayConfigResponseToJson(
        ExtapiGetDefaultGatewayConfigResponse instance) =>
    <String, dynamic>{
      'defaultConfig': instance.defaultConfig,
    };

ExtapiGetDeviceActivationResponse _$ExtapiGetDeviceActivationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetDeviceActivationResponse(
    deviceActivation: json['deviceActivation'] == null
        ? null
        : ExtapiDeviceActivation.fromJson(
            json['deviceActivation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetDeviceActivationResponseToJson(
        ExtapiGetDeviceActivationResponse instance) =>
    <String, dynamic>{
      'deviceActivation': instance.deviceActivation?.toJson(),
    };

ExtapiGetDeviceHistoryResponse _$ExtapiGetDeviceHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetDeviceHistoryResponse(
    devHistory: json['devHistory'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetDeviceHistoryResponseToJson(
        ExtapiGetDeviceHistoryResponse instance) =>
    <String, dynamic>{
      'devHistory': instance.devHistory,
    };

ExtapiGetDeviceKeysResponse _$ExtapiGetDeviceKeysResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetDeviceKeysResponse(
    deviceKeys: json['deviceKeys'] == null
        ? null
        : ExtapiDeviceKeys.fromJson(json['deviceKeys'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetDeviceKeysResponseToJson(
        ExtapiGetDeviceKeysResponse instance) =>
    <String, dynamic>{
      'deviceKeys': instance.deviceKeys?.toJson(),
    };

ExtapiGetDeviceListResponse _$ExtapiGetDeviceListResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetDeviceListResponse(
    count: json['count'] as String?,
    devProfile: (json['devProfile'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiDSDeviceProfile.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetDeviceListResponseToJson(
        ExtapiGetDeviceListResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'devProfile': instance.devProfile?.map((e) => e.toJson()).toList(),
    };

ExtapiGetDeviceProfileResponse _$ExtapiGetDeviceProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetDeviceProfileResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    deviceProfile: json['deviceProfile'] == null
        ? null
        : ExtapiDeviceProfile.fromJson(
            json['deviceProfile'] as Map<String, dynamic>),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiGetDeviceProfileResponseToJson(
        ExtapiGetDeviceProfileResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'deviceProfile': instance.deviceProfile?.toJson(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiGetDeviceResponse _$ExtapiGetDeviceResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetDeviceResponse(
    device: json['device'] == null
        ? null
        : ExtapiDevice.fromJson(json['device'] as Map<String, dynamic>),
    deviceStatusBattery: json['deviceStatusBattery'] as int?,
    deviceStatusMargin: json['deviceStatusMargin'] as int?,
    lastSeenAt: json['lastSeenAt'] == null
        ? null
        : DateTime.parse(json['lastSeenAt'] as String),
    location: json['location'] == null
        ? null
        : CommonLocation.fromJson(json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetDeviceResponseToJson(
        ExtapiGetDeviceResponse instance) =>
    <String, dynamic>{
      'device': instance.device?.toJson(),
      'deviceStatusBattery': instance.deviceStatusBattery,
      'deviceStatusMargin': instance.deviceStatusMargin,
      'lastSeenAt': instance.lastSeenAt?.toIso8601String(),
      'location': instance.location?.toJson(),
    };

ExtapiGetDownLinkPriceResponse _$ExtapiGetDownLinkPriceResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetDownLinkPriceResponse(
    downLinkPrice: (json['downLinkPrice'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ExtapiGetDownLinkPriceResponseToJson(
        ExtapiGetDownLinkPriceResponse instance) =>
    <String, dynamic>{
      'downLinkPrice': instance.downLinkPrice,
    };

ExtapiGetFUOTADeploymentDeviceResponse
    _$ExtapiGetFUOTADeploymentDeviceResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiGetFUOTADeploymentDeviceResponse(
    deploymentDevice: json['deploymentDevice'] == null
        ? null
        : ExtapiFUOTADeploymentDeviceListItem.fromJson(
            json['deploymentDevice'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetFUOTADeploymentDeviceResponseToJson(
        ExtapiGetFUOTADeploymentDeviceResponse instance) =>
    <String, dynamic>{
      'deploymentDevice': instance.deploymentDevice?.toJson(),
    };

ExtapiGetFUOTADeploymentResponse _$ExtapiGetFUOTADeploymentResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetFUOTADeploymentResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    fuotaDeployment: json['fuotaDeployment'] == null
        ? null
        : ExtapiFUOTADeployment.fromJson(
            json['fuotaDeployment'] as Map<String, dynamic>),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiGetFUOTADeploymentResponseToJson(
        ExtapiGetFUOTADeploymentResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'fuotaDeployment': instance.fuotaDeployment?.toJson(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiGetFiatCurrencyListResponse _$ExtapiGetFiatCurrencyListResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetFiatCurrencyListResponse(
    fiatCurrencyList: (json['fiatCurrencyList'] as List<dynamic>?)
            ?.map((e) => ExtapiFiatCurrency.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetFiatCurrencyListResponseToJson(
        ExtapiGetFiatCurrencyListResponse instance) =>
    <String, dynamic>{
      'fiatCurrencyList':
          instance.fiatCurrencyList?.map((e) => e.toJson()).toList(),
    };

ExtapiGetGSGatewayProfileResponse _$ExtapiGetGSGatewayProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetGSGatewayProfileResponse(
    gwProfile: json['gwProfile'] == null
        ? null
        : ExtapiGSGatewayProfile.fromJson(
            json['gwProfile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetGSGatewayProfileResponseToJson(
        ExtapiGetGSGatewayProfileResponse instance) =>
    <String, dynamic>{
      'gwProfile': instance.gwProfile?.toJson(),
    };

ExtapiGetGatewayHistoryResponse _$ExtapiGetGatewayHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetGatewayHistoryResponse(
    gwHistory: json['gwHistory'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetGatewayHistoryResponseToJson(
        ExtapiGetGatewayHistoryResponse instance) =>
    <String, dynamic>{
      'gwHistory': instance.gwHistory,
    };

ExtapiGetGatewayListResponse _$ExtapiGetGatewayListResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetGatewayListResponse(
    count: json['count'] as String?,
    gwProfile: (json['gwProfile'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiGSGatewayProfile.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetGatewayListResponseToJson(
        ExtapiGetGatewayListResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'gwProfile': instance.gwProfile?.map((e) => e.toJson()).toList(),
    };

ExtapiGetGatewayMiningHealthResponse
    _$ExtapiGetGatewayMiningHealthResponseFromJson(Map<String, dynamic> json) {
  return ExtapiGetGatewayMiningHealthResponse(
    gatewayHealth: (json['gatewayHealth'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiGatewayMiningHealth.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    miningHealthAverage: json['miningHealthAverage'] == null
        ? null
        : ExtapiMiningHealthAverage.fromJson(
            json['miningHealthAverage'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetGatewayMiningHealthResponseToJson(
        ExtapiGetGatewayMiningHealthResponse instance) =>
    <String, dynamic>{
      'gatewayHealth': instance.gatewayHealth?.map((e) => e.toJson()).toList(),
      'miningHealthAverage': instance.miningHealthAverage?.toJson(),
    };

ExtapiGetGatewayMiningIncomeResponse
    _$ExtapiGetGatewayMiningIncomeResponseFromJson(Map<String, dynamic> json) {
  return ExtapiGetGatewayMiningIncomeResponse(
    dailyStats: (json['dailyStats'] as List<dynamic>?)
            ?.map((e) => ExtapiMiningStats.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    total: json['total'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetGatewayMiningIncomeResponseToJson(
        ExtapiGetGatewayMiningIncomeResponse instance) =>
    <String, dynamic>{
      'dailyStats': instance.dailyStats?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ExtapiGetGatewayProfileResponse _$ExtapiGetGatewayProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetGatewayProfileResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    gatewayProfile: json['gatewayProfile'] == null
        ? null
        : ExtapiGatewayProfile.fromJson(
            json['gatewayProfile'] as Map<String, dynamic>),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiGetGatewayProfileResponseToJson(
        ExtapiGetGatewayProfileResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'gatewayProfile': instance.gatewayProfile?.toJson(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiGetGatewayResponse _$ExtapiGetGatewayResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetGatewayResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    firstSeenAt: json['firstSeenAt'] == null
        ? null
        : DateTime.parse(json['firstSeenAt'] as String),
    gateway: json['gateway'] == null
        ? null
        : ExtapiGateway.fromJson(json['gateway'] as Map<String, dynamic>),
    lastSeenAt: json['lastSeenAt'] == null
        ? null
        : DateTime.parse(json['lastSeenAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiGetGatewayResponseToJson(
        ExtapiGetGatewayResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'firstSeenAt': instance.firstSeenAt?.toIso8601String(),
      'gateway': instance.gateway?.toJson(),
      'lastSeenAt': instance.lastSeenAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiGetGatewayStatsResponse _$ExtapiGetGatewayStatsResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetGatewayStatsResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) => ExtapiGatewayStats.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetGatewayStatsResponseToJson(
        ExtapiGetGatewayStatsResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
    };

ExtapiGetGwConfigResponse _$ExtapiGetGwConfigResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetGwConfigResponse(
    conf: json['conf'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetGwConfigResponseToJson(
        ExtapiGetGwConfigResponse instance) =>
    <String, dynamic>{
      'conf': instance.conf,
    };

ExtapiGetGwPwdResponse _$ExtapiGetGwPwdResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetGwPwdResponse(
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetGwPwdResponseToJson(
        ExtapiGetGwPwdResponse instance) =>
    <String, dynamic>{
      'password': instance.password,
    };

ExtapiGetHTTPIntegrationResponse _$ExtapiGetHTTPIntegrationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetHTTPIntegrationResponse(
    integration: json['integration'] == null
        ? null
        : ExtapiHTTPIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetHTTPIntegrationResponseToJson(
        ExtapiGetHTTPIntegrationResponse instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiGetInfluxDBIntegrationResponse
    _$ExtapiGetInfluxDBIntegrationResponseFromJson(Map<String, dynamic> json) {
  return ExtapiGetInfluxDBIntegrationResponse(
    integration: json['integration'] == null
        ? null
        : ExtapiInfluxDBIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetInfluxDBIntegrationResponseToJson(
        ExtapiGetInfluxDBIntegrationResponse instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiGetJWTRequest _$ExtapiGetJWTRequestFromJson(Map<String, dynamic> json) {
  return ExtapiGetJWTRequest(
    organizationId: json['organizationId'] as String?,
    ttlInSeconds: json['ttlInSeconds'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetJWTRequestToJson(
        ExtapiGetJWTRequest instance) =>
    <String, dynamic>{
      'organizationId': instance.organizationId,
      'ttlInSeconds': instance.ttlInSeconds,
    };

ExtapiGetJWTResponse _$ExtapiGetJWTResponseFromJson(Map<String, dynamic> json) {
  return ExtapiGetJWTResponse(
    jwtMqttAuth: json['jwtMqttAuth'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetJWTResponseToJson(
        ExtapiGetJWTResponse instance) =>
    <String, dynamic>{
      'jwtMqttAuth': instance.jwtMqttAuth,
    };

ExtapiGetLastPingResponse _$ExtapiGetLastPingResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetLastPingResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    dr: json['dr'] as int?,
    frequency: json['frequency'] as int?,
    pingRX: (json['pingRX'] as List<dynamic>?)
            ?.map((e) => ExtapiPingRX.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetLastPingResponseToJson(
        ExtapiGetLastPingResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'dr': instance.dr,
      'frequency': instance.frequency,
      'pingRX': instance.pingRX?.map((e) => e.toJson()).toList(),
    };

ExtapiGetLoRaCloudIntegrationResponse
    _$ExtapiGetLoRaCloudIntegrationResponseFromJson(Map<String, dynamic> json) {
  return ExtapiGetLoRaCloudIntegrationResponse(
    integration: json['integration'] == null
        ? null
        : ExtapiLoRaCloudIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetLoRaCloudIntegrationResponseToJson(
        ExtapiGetLoRaCloudIntegrationResponse instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiGetMXCpriceResponse _$ExtapiGetMXCpriceResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetMXCpriceResponse(
    mxcPrice: json['mxcPrice'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetMXCpriceResponseToJson(
        ExtapiGetMXCpriceResponse instance) =>
    <String, dynamic>{
      'mxcPrice': instance.mxcPrice,
    };

ExtapiGetMiningInfoResponse _$ExtapiGetMiningInfoResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetMiningInfoResponse(
    data: (json['data'] as List<dynamic>?)
            ?.map((e) => ExtapiMiningData.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    todayRev: json['todayRev'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetMiningInfoResponseToJson(
        ExtapiGetMiningInfoResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'todayRev': instance.todayRev,
    };

ExtapiGetMulticastGroupResponse _$ExtapiGetMulticastGroupResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetMulticastGroupResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    multicastGroup: json['multicastGroup'] == null
        ? null
        : ExtapiMulticastGroup.fromJson(
            json['multicastGroup'] as Map<String, dynamic>),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiGetMulticastGroupResponseToJson(
        ExtapiGetMulticastGroupResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'multicastGroup': instance.multicastGroup?.toJson(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiGetMxprotocolServerVersionResponse
    _$ExtapiGetMxprotocolServerVersionResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiGetMxprotocolServerVersionResponse(
    version: json['version'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetMxprotocolServerVersionResponseToJson(
        ExtapiGetMxprotocolServerVersionResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
    };

ExtapiGetMyDevicesIntegrationResponse
    _$ExtapiGetMyDevicesIntegrationResponseFromJson(Map<String, dynamic> json) {
  return ExtapiGetMyDevicesIntegrationResponse(
    integration: json['integration'] == null
        ? null
        : ExtapiMyDevicesIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetMyDevicesIntegrationResponseToJson(
        ExtapiGetMyDevicesIntegrationResponse instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiGetNetworkServerResponse _$ExtapiGetNetworkServerResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetNetworkServerResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    networkServer: json['networkServer'] == null
        ? null
        : ExtapiNetworkServer.fromJson(
            json['networkServer'] as Map<String, dynamic>),
    region: json['region'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    version: json['version'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetNetworkServerResponseToJson(
        ExtapiGetNetworkServerResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'networkServer': instance.networkServer?.toJson(),
      'region': instance.region,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'version': instance.version,
    };

ExtapiGetNetworkUsageHistResponse _$ExtapiGetNetworkUsageHistResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetNetworkUsageHistResponse(
    count: json['count'] as String?,
    networkUsage: (json['networkUsage'] as List<dynamic>?)
            ?.map((e) => ExtapiNetworkUsage.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetNetworkUsageHistResponseToJson(
        ExtapiGetNetworkUsageHistResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'networkUsage': instance.networkUsage?.map((e) => e.toJson()).toList(),
    };

ExtapiGetOTPCodeResponse _$ExtapiGetOTPCodeResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetOTPCodeResponse(
    otpCode: json['otpCode'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetOTPCodeResponseToJson(
        ExtapiGetOTPCodeResponse instance) =>
    <String, dynamic>{
      'otpCode': instance.otpCode,
    };

ExtapiGetOrdersByUserResponse _$ExtapiGetOrdersByUserResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetOrdersByUserResponse(
    orders: (json['orders'] as List<dynamic>?)
            ?.map((e) => ExtapiOrder.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetOrdersByUserResponseToJson(
        ExtapiGetOrdersByUserResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders?.map((e) => e.toJson()).toList(),
    };

ExtapiGetOrganizationResponse _$ExtapiGetOrganizationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetOrganizationResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    organization: json['organization'] == null
        ? null
        : ExtapiOrganization.fromJson(
            json['organization'] as Map<String, dynamic>),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiGetOrganizationResponseToJson(
        ExtapiGetOrganizationResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'organization': instance.organization?.toJson(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiGetOrganizationUserResponse _$ExtapiGetOrganizationUserResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetOrganizationUserResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    organizationUser: json['organizationUser'] == null
        ? null
        : ExtapiOrganizationUser.fromJson(
            json['organizationUser'] as Map<String, dynamic>),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiGetOrganizationUserResponseToJson(
        ExtapiGetOrganizationUserResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'organizationUser': instance.organizationUser?.toJson(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiGetRandomDevAddrResponse _$ExtapiGetRandomDevAddrResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetRandomDevAddrResponse(
    devAddr: json['devAddr'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetRandomDevAddrResponseToJson(
        ExtapiGetRandomDevAddrResponse instance) =>
    <String, dynamic>{
      'devAddr': instance.devAddr,
    };

ExtapiGetRecoveryCodesRequest _$ExtapiGetRecoveryCodesRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetRecoveryCodesRequest(
    regenerate: json['regenerate'] as bool?,
  );
}

Map<String, dynamic> _$ExtapiGetRecoveryCodesRequestToJson(
        ExtapiGetRecoveryCodesRequest instance) =>
    <String, dynamic>{
      'regenerate': instance.regenerate,
    };

ExtapiGetRecoveryCodesResponse _$ExtapiGetRecoveryCodesResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetRecoveryCodesResponse(
    recoveryCode: (json['recoveryCode'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetRecoveryCodesResponseToJson(
        ExtapiGetRecoveryCodesResponse instance) =>
    <String, dynamic>{
      'recoveryCode': instance.recoveryCode,
    };

ExtapiGetServerRegionResponse _$ExtapiGetServerRegionResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetServerRegionResponse(
    serverRegion: json['serverRegion'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetServerRegionResponseToJson(
        ExtapiGetServerRegionResponse instance) =>
    <String, dynamic>{
      'serverRegion': instance.serverRegion,
    };

ExtapiGetServiceProfileResponse _$ExtapiGetServiceProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetServiceProfileResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    serviceProfile: json['serviceProfile'] == null
        ? null
        : ExtapiServiceProfile.fromJson(
            json['serviceProfile'] as Map<String, dynamic>),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiGetServiceProfileResponseToJson(
        ExtapiGetServiceProfileResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'serviceProfile': instance.serviceProfile?.toJson(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiGetSettingsResponse _$ExtapiGetSettingsResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetSettingsResponse(
    compensation: (json['compensation'] as num?)?.toDouble(),
    downlinkPrice: (json['downlinkPrice'] as num?)?.toDouble(),
    lowBalanceWarning: json['lowBalanceWarning'] as String?,
    stakingInterest: (json['stakingInterest'] as num?)?.toDouble(),
    supernodeIncomeRatio: (json['supernodeIncomeRatio'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ExtapiGetSettingsResponseToJson(
        ExtapiGetSettingsResponse instance) =>
    <String, dynamic>{
      'compensation': instance.compensation,
      'downlinkPrice': instance.downlinkPrice,
      'lowBalanceWarning': instance.lowBalanceWarning,
      'stakingInterest': instance.stakingInterest,
      'supernodeIncomeRatio': instance.supernodeIncomeRatio,
    };

ExtapiGetTOTPConfigurationRequest _$ExtapiGetTOTPConfigurationRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetTOTPConfigurationRequest(
    qrCodeSize: json['qrCodeSize'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetTOTPConfigurationRequestToJson(
        ExtapiGetTOTPConfigurationRequest instance) =>
    <String, dynamic>{
      'qrCodeSize': instance.qrCodeSize,
    };

ExtapiGetTOTPConfigurationResponse _$ExtapiGetTOTPConfigurationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetTOTPConfigurationResponse(
    qrCode: json['qrCode'] as String?,
    recoveryCode: (json['recoveryCode'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    secret: json['secret'] as String?,
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetTOTPConfigurationResponseToJson(
        ExtapiGetTOTPConfigurationResponse instance) =>
    <String, dynamic>{
      'qrCode': instance.qrCode,
      'recoveryCode': instance.recoveryCode,
      'secret': instance.secret,
      'url': instance.url,
    };

ExtapiGetThingsBoardIntegrationResponse
    _$ExtapiGetThingsBoardIntegrationResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiGetThingsBoardIntegrationResponse(
    integration: json['integration'] == null
        ? null
        : ExtapiThingsBoardIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetThingsBoardIntegrationResponseToJson(
        ExtapiGetThingsBoardIntegrationResponse instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiGetTopUpDestinationResponse _$ExtapiGetTopUpDestinationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetTopUpDestinationResponse(
    activeAccount: json['activeAccount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetTopUpDestinationResponseToJson(
        ExtapiGetTopUpDestinationResponse instance) =>
    <String, dynamic>{
      'activeAccount': instance.activeAccount,
    };

ExtapiGetTopUpHistoryRequest _$ExtapiGetTopUpHistoryRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetTopUpHistoryRequest(
    currency: json['currency'] as String?,
    from: json['from'] == null ? null : DateTime.parse(json['from'] as String),
    orgId: json['orgId'] as String?,
    till: json['till'] == null ? null : DateTime.parse(json['till'] as String),
  );
}

Map<String, dynamic> _$ExtapiGetTopUpHistoryRequestToJson(
        ExtapiGetTopUpHistoryRequest instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'from': instance.from?.toIso8601String(),
      'orgId': instance.orgId,
      'till': instance.till?.toIso8601String(),
    };

ExtapiGetTopUpHistoryResponse _$ExtapiGetTopUpHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetTopUpHistoryResponse(
    topupHistory: (json['topupHistory'] as List<dynamic>?)
            ?.map((e) => ExtapiTopUpHistory.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetTopUpHistoryResponseToJson(
        ExtapiGetTopUpHistoryResponse instance) =>
    <String, dynamic>{
      'topupHistory': instance.topupHistory?.map((e) => e.toJson()).toList(),
    };

ExtapiGetTransactionHistoryResponse
    _$ExtapiGetTransactionHistoryResponseFromJson(Map<String, dynamic> json) {
  return ExtapiGetTransactionHistoryResponse(
    tx: (json['tx'] as List<dynamic>?)
            ?.map((e) => ExtapiTransaction.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetTransactionHistoryResponseToJson(
        ExtapiGetTransactionHistoryResponse instance) =>
    <String, dynamic>{
      'tx': instance.tx?.map((e) => e.toJson()).toList(),
    };

ExtapiGetUserEmailResponse _$ExtapiGetUserEmailResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetUserEmailResponse(
    status: json['status'] as bool?,
  );
}

Map<String, dynamic> _$ExtapiGetUserEmailResponseToJson(
        ExtapiGetUserEmailResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiGetUserResponse _$ExtapiGetUserResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetUserResponse(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    user: json['user'] == null
        ? null
        : ExtapiUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiGetUserResponseToJson(
        ExtapiGetUserResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user?.toJson(),
    };

ExtapiGetVmxcTxHistoryResponse _$ExtapiGetVmxcTxHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetVmxcTxHistoryResponse(
    count: json['count'] as String?,
    txHistory: (json['txHistory'] as List<dynamic>?)
            ?.map(
                (e) => ExtapiVmxcTxHistory.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetVmxcTxHistoryResponseToJson(
        ExtapiGetVmxcTxHistoryResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'txHistory': instance.txHistory?.map((e) => e.toJson()).toList(),
    };

ExtapiGetWalletBalanceResponse _$ExtapiGetWalletBalanceResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetWalletBalanceResponse(
    balance: json['balance'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetWalletBalanceResponseToJson(
        ExtapiGetWalletBalanceResponse instance) =>
    <String, dynamic>{
      'balance': instance.balance,
    };

ExtapiGetWalletMiningIncomeResponse
    _$ExtapiGetWalletMiningIncomeResponseFromJson(Map<String, dynamic> json) {
  return ExtapiGetWalletMiningIncomeResponse(
    miningIncome: json['miningIncome'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetWalletMiningIncomeResponseToJson(
        ExtapiGetWalletMiningIncomeResponse instance) =>
    <String, dynamic>{
      'miningIncome': instance.miningIncome,
    };

ExtapiGetWithdrawFeeResponse _$ExtapiGetWithdrawFeeResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetWithdrawFeeResponse(
    currency: json['currency'] as String?,
    withdrawFee: json['withdrawFee'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetWithdrawFeeResponseToJson(
        ExtapiGetWithdrawFeeResponse instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'withdrawFee': instance.withdrawFee,
    };

ExtapiGetWithdrawHistoryResponse _$ExtapiGetWithdrawHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetWithdrawHistoryResponse(
    withdrawHistory: (json['withdrawHistory'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiWithdrawHistory.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGetWithdrawHistoryResponseToJson(
        ExtapiGetWithdrawHistoryResponse instance) =>
    <String, dynamic>{
      'withdrawHistory':
          instance.withdrawHistory?.map((e) => e.toJson()).toList(),
    };

ExtapiGetWithdrawRequest _$ExtapiGetWithdrawRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetWithdrawRequest(
    amount: json['amount'] as String?,
    currency: json['currency'] as String?,
    ethAddress: json['ethAddress'] as String?,
    orgId: json['orgId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGetWithdrawRequestToJson(
        ExtapiGetWithdrawRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'ethAddress': instance.ethAddress,
      'orgId': instance.orgId,
    };

ExtapiGetWithdrawResponse _$ExtapiGetWithdrawResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGetWithdrawResponse(
    status: json['status'] as bool?,
  );
}

Map<String, dynamic> _$ExtapiGetWithdrawResponseToJson(
        ExtapiGetWithdrawResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiGlobalSearchResponse _$ExtapiGlobalSearchResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGlobalSearchResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiGlobalSearchResult.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiGlobalSearchResponseToJson(
        ExtapiGlobalSearchResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
    };

ExtapiGlobalSearchResult _$ExtapiGlobalSearchResultFromJson(
    Map<String, dynamic> json) {
  return ExtapiGlobalSearchResult(
    applicationID: json['applicationID'] as String?,
    applicationName: json['applicationName'] as String?,
    deviceDevEUI: json['deviceDevEUI'] as String?,
    deviceName: json['deviceName'] as String?,
    gatewayMAC: json['gatewayMAC'] as String?,
    gatewayName: json['gatewayName'] as String?,
    kind: json['kind'] as String?,
    organizationID: json['organizationID'] as String?,
    organizationName: json['organizationName'] as String?,
    score: (json['score'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ExtapiGlobalSearchResultToJson(
        ExtapiGlobalSearchResult instance) =>
    <String, dynamic>{
      'applicationID': instance.applicationID,
      'applicationName': instance.applicationName,
      'deviceDevEUI': instance.deviceDevEUI,
      'deviceName': instance.deviceName,
      'gatewayMAC': instance.gatewayMAC,
      'gatewayName': instance.gatewayName,
      'kind': instance.kind,
      'organizationID': instance.organizationID,
      'organizationName': instance.organizationName,
      'score': instance.score,
    };

ExtapiGoogleRecaptchaRequest _$ExtapiGoogleRecaptchaRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiGoogleRecaptchaRequest(
    remoteip: json['remoteip'] as String?,
    response: json['response'] as String?,
    secret: json['secret'] as String?,
  );
}

Map<String, dynamic> _$ExtapiGoogleRecaptchaRequestToJson(
        ExtapiGoogleRecaptchaRequest instance) =>
    <String, dynamic>{
      'remoteip': instance.remoteip,
      'response': instance.response,
      'secret': instance.secret,
    };

ExtapiGoogleRecaptchaResponse _$ExtapiGoogleRecaptchaResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiGoogleRecaptchaResponse(
    challengeTs: json['challengeTs'] as String?,
    errorCodes: json['errorCodes'] as String?,
    hostname: json['hostname'] as String?,
    success: json['success'] as bool?,
  );
}

Map<String, dynamic> _$ExtapiGoogleRecaptchaResponseToJson(
        ExtapiGoogleRecaptchaResponse instance) =>
    <String, dynamic>{
      'challengeTs': instance.challengeTs,
      'errorCodes': instance.errorCodes,
      'hostname': instance.hostname,
      'success': instance.success,
    };

ExtapiHTTPIntegration _$ExtapiHTTPIntegrationFromJson(
    Map<String, dynamic> json) {
  return ExtapiHTTPIntegration(
    ackNotificationURL: json['ackNotificationURL'] as String?,
    applicationID: json['applicationID'] as String?,
    errorNotificationURL: json['errorNotificationURL'] as String?,
    headers: (json['headers'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiHTTPIntegrationHeader.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    integrationNotificationURL: json['integrationNotificationURL'] as String?,
    joinNotificationURL: json['joinNotificationURL'] as String?,
    locationNotificationURL: json['locationNotificationURL'] as String?,
    statusNotificationURL: json['statusNotificationURL'] as String?,
    txAckNotificationURL: json['txAckNotificationURL'] as String?,
    uplinkDataURL: json['uplinkDataURL'] as String?,
  );
}

Map<String, dynamic> _$ExtapiHTTPIntegrationToJson(
        ExtapiHTTPIntegration instance) =>
    <String, dynamic>{
      'ackNotificationURL': instance.ackNotificationURL,
      'applicationID': instance.applicationID,
      'errorNotificationURL': instance.errorNotificationURL,
      'headers': instance.headers?.map((e) => e.toJson()).toList(),
      'integrationNotificationURL': instance.integrationNotificationURL,
      'joinNotificationURL': instance.joinNotificationURL,
      'locationNotificationURL': instance.locationNotificationURL,
      'statusNotificationURL': instance.statusNotificationURL,
      'txAckNotificationURL': instance.txAckNotificationURL,
      'uplinkDataURL': instance.uplinkDataURL,
    };

ExtapiHTTPIntegrationHeader _$ExtapiHTTPIntegrationHeaderFromJson(
    Map<String, dynamic> json) {
  return ExtapiHTTPIntegrationHeader(
    key: json['key'] as String?,
    value: json['value'] as String?,
  );
}

Map<String, dynamic> _$ExtapiHTTPIntegrationHeaderToJson(
        ExtapiHTTPIntegrationHeader instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

ExtapiInfluxDBIntegration _$ExtapiInfluxDBIntegrationFromJson(
    Map<String, dynamic> json) {
  return ExtapiInfluxDBIntegration(
    applicationID: json['applicationID'] as String?,
    db: json['db'] as String?,
    endpoint: json['endpoint'] as String?,
    password: json['password'] as String?,
    precision: extapiInfluxDBPrecisionFromJson(json['precision'] as String?),
    retentionPolicyName: json['retentionPolicyName'] as String?,
    username: json['username'] as String?,
  );
}

Map<String, dynamic> _$ExtapiInfluxDBIntegrationToJson(
        ExtapiInfluxDBIntegration instance) =>
    <String, dynamic>{
      'applicationID': instance.applicationID,
      'db': instance.db,
      'endpoint': instance.endpoint,
      'password': instance.password,
      'precision': extapiInfluxDBPrecisionToJson(instance.precision),
      'retentionPolicyName': instance.retentionPolicyName,
      'username': instance.username,
    };

ExtapiInsertNewDefaultGatewayConfigRequest
    _$ExtapiInsertNewDefaultGatewayConfigRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiInsertNewDefaultGatewayConfigRequest(
    defaultConfig: json['defaultConfig'] as String?,
    model: json['model'] as String?,
    region: json['region'] as String?,
  );
}

Map<String, dynamic> _$ExtapiInsertNewDefaultGatewayConfigRequestToJson(
        ExtapiInsertNewDefaultGatewayConfigRequest instance) =>
    <String, dynamic>{
      'defaultConfig': instance.defaultConfig,
      'model': instance.model,
      'region': instance.region,
    };

ExtapiInsertNewDefaultGatewayConfigResponse
    _$ExtapiInsertNewDefaultGatewayConfigResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiInsertNewDefaultGatewayConfigResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiInsertNewDefaultGatewayConfigResponseToJson(
        ExtapiInsertNewDefaultGatewayConfigResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiIntegrationListItem _$ExtapiIntegrationListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiIntegrationListItem(
    kind: extapiIntegrationKindFromJson(json['kind'] as String?),
  );
}

Map<String, dynamic> _$ExtapiIntegrationListItemToJson(
        ExtapiIntegrationListItem instance) =>
    <String, dynamic>{
      'kind': extapiIntegrationKindToJson(instance.kind),
    };

ExtapiJWTAuthenticationRequest _$ExtapiJWTAuthenticationRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiJWTAuthenticationRequest();
}

Map<String, dynamic> _$ExtapiJWTAuthenticationRequestToJson(
        ExtapiJWTAuthenticationRequest instance) =>
    <String, dynamic>{};

ExtapiJWTAuthenticationResponse _$ExtapiJWTAuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiJWTAuthenticationResponse();
}

Map<String, dynamic> _$ExtapiJWTAuthenticationResponseToJson(
        ExtapiJWTAuthenticationResponse instance) =>
    <String, dynamic>{};

ExtapiListApplicationResponse _$ExtapiListApplicationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListApplicationResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiApplicationListItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListApplicationResponseToJson(
        ExtapiListApplicationResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListDeviceProfileResponse _$ExtapiListDeviceProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListDeviceProfileResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiDeviceProfileListItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListDeviceProfileResponseToJson(
        ExtapiListDeviceProfileResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListDeviceQueueItemsResponse _$ExtapiListDeviceQueueItemsResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListDeviceQueueItemsResponse(
    deviceQueueItems: (json['deviceQueueItems'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiDeviceQueueItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiListDeviceQueueItemsResponseToJson(
        ExtapiListDeviceQueueItemsResponse instance) =>
    <String, dynamic>{
      'deviceQueueItems':
          instance.deviceQueueItems?.map((e) => e.toJson()).toList(),
    };

ExtapiListDeviceResponse _$ExtapiListDeviceResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListDeviceResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map(
                (e) => ExtapiDeviceListItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListDeviceResponseToJson(
        ExtapiListDeviceResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListFUOTADeploymentDevicesResponse
    _$ExtapiListFUOTADeploymentDevicesResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiListFUOTADeploymentDevicesResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) => ExtapiFUOTADeploymentDeviceListItem.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListFUOTADeploymentDevicesResponseToJson(
        ExtapiListFUOTADeploymentDevicesResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListFUOTADeploymentResponse _$ExtapiListFUOTADeploymentResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListFUOTADeploymentResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) => ExtapiFUOTADeploymentListItem.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListFUOTADeploymentResponseToJson(
        ExtapiListFUOTADeploymentResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListGatewayLocationsResponse _$ExtapiListGatewayLocationsResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListGatewayLocationsResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) => ExtapiGatewayLocationListItem.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiListGatewayLocationsResponseToJson(
        ExtapiListGatewayLocationsResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
    };

ExtapiListGatewayProfilesResponse _$ExtapiListGatewayProfilesResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListGatewayProfilesResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) => ExtapiGatewayProfileListItem.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListGatewayProfilesResponseToJson(
        ExtapiListGatewayProfilesResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListGatewayResponse _$ExtapiListGatewayResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListGatewayResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiGatewayListItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListGatewayResponseToJson(
        ExtapiListGatewayResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListIntegrationResponse _$ExtapiListIntegrationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListIntegrationResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiIntegrationListItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListIntegrationResponseToJson(
        ExtapiListIntegrationResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListMulticastGroupQueueItemsResponse
    _$ExtapiListMulticastGroupQueueItemsResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiListMulticastGroupQueueItemsResponse(
    multicastQueueItems: (json['multicastQueueItems'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiMulticastQueueItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiListMulticastGroupQueueItemsResponseToJson(
        ExtapiListMulticastGroupQueueItemsResponse instance) =>
    <String, dynamic>{
      'multicastQueueItems':
          instance.multicastQueueItems?.map((e) => e.toJson()).toList(),
    };

ExtapiListMulticastGroupResponse _$ExtapiListMulticastGroupResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListMulticastGroupResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) => ExtapiMulticastGroupListItem.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListMulticastGroupResponseToJson(
        ExtapiListMulticastGroupResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListNetworkServerResponse _$ExtapiListNetworkServerResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListNetworkServerResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiNetworkServerListItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListNetworkServerResponseToJson(
        ExtapiListNetworkServerResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListOrganizationResponse _$ExtapiListOrganizationResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListOrganizationResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiOrganizationListItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListOrganizationResponseToJson(
        ExtapiListOrganizationResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListOrganizationUsersResponse
    _$ExtapiListOrganizationUsersResponseFromJson(Map<String, dynamic> json) {
  return ExtapiListOrganizationUsersResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) => ExtapiOrganizationUserListItem.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListOrganizationUsersResponseToJson(
        ExtapiListOrganizationUsersResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListServiceProfileResponse _$ExtapiListServiceProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListServiceProfileResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) => ExtapiServiceProfileListItem.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListServiceProfileResponseToJson(
        ExtapiListServiceProfileResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiListUserResponse _$ExtapiListUserResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiListUserResponse(
    result: (json['result'] as List<dynamic>?)
            ?.map((e) => ExtapiUserListItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    totalCount: json['totalCount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiListUserResponseToJson(
        ExtapiListUserResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ExtapiLoRaCloudIntegration _$ExtapiLoRaCloudIntegrationFromJson(
    Map<String, dynamic> json) {
  return ExtapiLoRaCloudIntegration(
    applicationID: json['applicationID'] as String?,
    das: json['das'] as bool?,
    dasModemPort: json['dasModemPort'] as int?,
    dasToken: json['dasToken'] as String?,
    geolocation: json['geolocation'] as bool?,
    geolocationBufferTTL: json['geolocationBufferTTL'] as int?,
    geolocationGNSS: json['geolocationGNSS'] as bool?,
    geolocationGNSSPayloadField: json['geolocationGNSSPayloadField'] as String?,
    geolocationGNSSUseRxTime: json['geolocationGNSSUseRxTime'] as bool?,
    geolocationMinBufferSize: json['geolocationMinBufferSize'] as int?,
    geolocationRSSI: json['geolocationRSSI'] as bool?,
    geolocationTDOA: json['geolocationTDOA'] as bool?,
    geolocationToken: json['geolocationToken'] as String?,
    geolocationWifi: json['geolocationWifi'] as bool?,
    geolocationWifiPayloadField: json['geolocationWifiPayloadField'] as String?,
  );
}

Map<String, dynamic> _$ExtapiLoRaCloudIntegrationToJson(
        ExtapiLoRaCloudIntegration instance) =>
    <String, dynamic>{
      'applicationID': instance.applicationID,
      'das': instance.das,
      'dasModemPort': instance.dasModemPort,
      'dasToken': instance.dasToken,
      'geolocation': instance.geolocation,
      'geolocationBufferTTL': instance.geolocationBufferTTL,
      'geolocationGNSS': instance.geolocationGNSS,
      'geolocationGNSSPayloadField': instance.geolocationGNSSPayloadField,
      'geolocationGNSSUseRxTime': instance.geolocationGNSSUseRxTime,
      'geolocationMinBufferSize': instance.geolocationMinBufferSize,
      'geolocationRSSI': instance.geolocationRSSI,
      'geolocationTDOA': instance.geolocationTDOA,
      'geolocationToken': instance.geolocationToken,
      'geolocationWifi': instance.geolocationWifi,
      'geolocationWifiPayloadField': instance.geolocationWifiPayloadField,
    };

ExtapiLogin2FARequest _$ExtapiLogin2FARequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiLogin2FARequest();
}

Map<String, dynamic> _$ExtapiLogin2FARequestToJson(
        ExtapiLogin2FARequest instance) =>
    <String, dynamic>{};

ExtapiLoginRequest _$ExtapiLoginRequestFromJson(Map<String, dynamic> json) {
  return ExtapiLoginRequest(
    password: json['password'] as String?,
    username: json['username'] as String?,
  );
}

Map<String, dynamic> _$ExtapiLoginRequestToJson(ExtapiLoginRequest instance) =>
    <String, dynamic>{
      'password': instance.password,
      'username': instance.username,
    };

ExtapiLoginResponse _$ExtapiLoginResponseFromJson(Map<String, dynamic> json) {
  return ExtapiLoginResponse(
    is2faRequired: json['is2faRequired'] as bool?,
    jwt: json['jwt'] as String?,
  );
}

Map<String, dynamic> _$ExtapiLoginResponseToJson(
        ExtapiLoginResponse instance) =>
    <String, dynamic>{
      'is2faRequired': instance.is2faRequired,
      'jwt': instance.jwt,
    };

ExtapiManualTriggerUpdateFirmwareRequest
    _$ExtapiManualTriggerUpdateFirmwareRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiManualTriggerUpdateFirmwareRequest();
}

Map<String, dynamic> _$ExtapiManualTriggerUpdateFirmwareRequestToJson(
        ExtapiManualTriggerUpdateFirmwareRequest instance) =>
    <String, dynamic>{};

ExtapiManualTriggerUpdateFirmwareResponse
    _$ExtapiManualTriggerUpdateFirmwareResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiManualTriggerUpdateFirmwareResponse();
}

Map<String, dynamic> _$ExtapiManualTriggerUpdateFirmwareResponseToJson(
        ExtapiManualTriggerUpdateFirmwareResponse instance) =>
    <String, dynamic>{};

ExtapiMiningData _$ExtapiMiningDataFromJson(Map<String, dynamic> json) {
  return ExtapiMiningData(
    amount: json['amount'] as String?,
    month: json['month'] as String?,
  );
}

Map<String, dynamic> _$ExtapiMiningDataToJson(ExtapiMiningData instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'month': instance.month,
    };

ExtapiMiningHealthAverage _$ExtapiMiningHealthAverageFromJson(
    Map<String, dynamic> json) {
  return ExtapiMiningHealthAverage(
    miningFuelHealth: (json['miningFuelHealth'] as num?)?.toDouble(),
    overall: (json['overall'] as num?)?.toDouble(),
    uptimeHealth: (json['uptimeHealth'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ExtapiMiningHealthAverageToJson(
        ExtapiMiningHealthAverage instance) =>
    <String, dynamic>{
      'miningFuelHealth': instance.miningFuelHealth,
      'overall': instance.overall,
      'uptimeHealth': instance.uptimeHealth,
    };

ExtapiMiningReportResponse _$ExtapiMiningReportResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiMiningReportResponse(
    data: json['data'] as String?,
    finish: json['finish'] as bool?,
  );
}

Map<String, dynamic> _$ExtapiMiningReportResponseToJson(
        ExtapiMiningReportResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'finish': instance.finish,
    };

ExtapiMiningStats _$ExtapiMiningStatsFromJson(Map<String, dynamic> json) {
  return ExtapiMiningStats(
    amount: json['amount'] as String?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    health: (json['health'] as num?)?.toDouble(),
    onlineSeconds: json['onlineSeconds'] as String?,
  );
}

Map<String, dynamic> _$ExtapiMiningStatsToJson(ExtapiMiningStats instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'date': instance.date?.toIso8601String(),
      'health': instance.health,
      'onlineSeconds': instance.onlineSeconds,
    };

ExtapiModifySettingsRequest _$ExtapiModifySettingsRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiModifySettingsRequest(
    downlinkFee: json['downlinkFee'] as String?,
    lowBalanceWarning: json['lowBalanceWarning'] as String?,
    transactionPercentageShare: json['transactionPercentageShare'] as String?,
  );
}

Map<String, dynamic> _$ExtapiModifySettingsRequestToJson(
        ExtapiModifySettingsRequest instance) =>
    <String, dynamic>{
      'downlinkFee': instance.downlinkFee,
      'lowBalanceWarning': instance.lowBalanceWarning,
      'transactionPercentageShare': instance.transactionPercentageShare,
    };

ExtapiModifySettingsResponse _$ExtapiModifySettingsResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiModifySettingsResponse(
    status: json['status'] as bool?,
  );
}

Map<String, dynamic> _$ExtapiModifySettingsResponseToJson(
        ExtapiModifySettingsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiModifyWithdrawFeeRequest _$ExtapiModifyWithdrawFeeRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiModifyWithdrawFeeRequest(
    currency: json['currency'] as String?,
    password: json['password'] as String?,
    withdrawFee: json['withdrawFee'] as String?,
  );
}

Map<String, dynamic> _$ExtapiModifyWithdrawFeeRequestToJson(
        ExtapiModifyWithdrawFeeRequest instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'password': instance.password,
      'withdrawFee': instance.withdrawFee,
    };

ExtapiModifyWithdrawFeeResponse _$ExtapiModifyWithdrawFeeResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiModifyWithdrawFeeResponse(
    status: json['status'] as bool?,
  );
}

Map<String, dynamic> _$ExtapiModifyWithdrawFeeResponseToJson(
        ExtapiModifyWithdrawFeeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiMulticastGroup _$ExtapiMulticastGroupFromJson(Map<String, dynamic> json) {
  return ExtapiMulticastGroup(
    dr: json['dr'] as int?,
    fCnt: json['fCnt'] as int?,
    frequency: json['frequency'] as int?,
    groupType: extapiMulticastGroupTypeFromJson(json['groupType'] as String?),
    id: json['id'] as String?,
    mcAddr: json['mcAddr'] as String?,
    mcAppSKey: json['mcAppSKey'] as String?,
    mcNwkSKey: json['mcNwkSKey'] as String?,
    name: json['name'] as String?,
    pingSlotPeriod: json['pingSlotPeriod'] as int?,
    serviceProfileID: json['serviceProfileID'] as String?,
  );
}

Map<String, dynamic> _$ExtapiMulticastGroupToJson(
        ExtapiMulticastGroup instance) =>
    <String, dynamic>{
      'dr': instance.dr,
      'fCnt': instance.fCnt,
      'frequency': instance.frequency,
      'groupType': extapiMulticastGroupTypeToJson(instance.groupType),
      'id': instance.id,
      'mcAddr': instance.mcAddr,
      'mcAppSKey': instance.mcAppSKey,
      'mcNwkSKey': instance.mcNwkSKey,
      'name': instance.name,
      'pingSlotPeriod': instance.pingSlotPeriod,
      'serviceProfileID': instance.serviceProfileID,
    };

ExtapiMulticastGroupListItem _$ExtapiMulticastGroupListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiMulticastGroupListItem(
    id: json['id'] as String?,
    name: json['name'] as String?,
    serviceProfileID: json['serviceProfileID'] as String?,
    serviceProfileName: json['serviceProfileName'] as String?,
  );
}

Map<String, dynamic> _$ExtapiMulticastGroupListItemToJson(
        ExtapiMulticastGroupListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'serviceProfileID': instance.serviceProfileID,
      'serviceProfileName': instance.serviceProfileName,
    };

ExtapiMulticastQueueItem _$ExtapiMulticastQueueItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiMulticastQueueItem(
    data: json['data'] as String?,
    fCnt: json['fCnt'] as int?,
    fPort: json['fPort'] as int?,
    multicastGroupID: json['multicastGroupID'] as String?,
  );
}

Map<String, dynamic> _$ExtapiMulticastQueueItemToJson(
        ExtapiMulticastQueueItem instance) =>
    <String, dynamic>{
      'data': instance.data,
      'fCnt': instance.fCnt,
      'fPort': instance.fPort,
      'multicastGroupID': instance.multicastGroupID,
    };

ExtapiMyDevicesIntegration _$ExtapiMyDevicesIntegrationFromJson(
    Map<String, dynamic> json) {
  return ExtapiMyDevicesIntegration(
    applicationID: json['applicationID'] as String?,
    endpoint: json['endpoint'] as String?,
  );
}

Map<String, dynamic> _$ExtapiMyDevicesIntegrationToJson(
        ExtapiMyDevicesIntegration instance) =>
    <String, dynamic>{
      'applicationID': instance.applicationID,
      'endpoint': instance.endpoint,
    };

ExtapiNetworkServer _$ExtapiNetworkServerFromJson(Map<String, dynamic> json) {
  return ExtapiNetworkServer(
    caCert: json['caCert'] as String?,
    gatewayDiscoveryDR: json['gatewayDiscoveryDR'] as int?,
    gatewayDiscoveryEnabled: json['gatewayDiscoveryEnabled'] as bool?,
    gatewayDiscoveryInterval: json['gatewayDiscoveryInterval'] as int?,
    gatewayDiscoveryTXFrequency: json['gatewayDiscoveryTXFrequency'] as int?,
    id: json['id'] as String?,
    name: json['name'] as String?,
    routingProfileCACert: json['routingProfileCACert'] as String?,
    routingProfileTLSCert: json['routingProfileTLSCert'] as String?,
    routingProfileTLSKey: json['routingProfileTLSKey'] as String?,
    server: json['server'] as String?,
    tlsCert: json['tlsCert'] as String?,
    tlsKey: json['tlsKey'] as String?,
  );
}

Map<String, dynamic> _$ExtapiNetworkServerToJson(
        ExtapiNetworkServer instance) =>
    <String, dynamic>{
      'caCert': instance.caCert,
      'gatewayDiscoveryDR': instance.gatewayDiscoveryDR,
      'gatewayDiscoveryEnabled': instance.gatewayDiscoveryEnabled,
      'gatewayDiscoveryInterval': instance.gatewayDiscoveryInterval,
      'gatewayDiscoveryTXFrequency': instance.gatewayDiscoveryTXFrequency,
      'id': instance.id,
      'name': instance.name,
      'routingProfileCACert': instance.routingProfileCACert,
      'routingProfileTLSCert': instance.routingProfileTLSCert,
      'routingProfileTLSKey': instance.routingProfileTLSKey,
      'server': instance.server,
      'tlsCert': instance.tlsCert,
      'tlsKey': instance.tlsKey,
    };

ExtapiNetworkServerListItem _$ExtapiNetworkServerListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiNetworkServerListItem(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    id: json['id'] as String?,
    name: json['name'] as String?,
    server: json['server'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiNetworkServerListItemToJson(
        ExtapiNetworkServerListItem instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'server': instance.server,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiNetworkUsage _$ExtapiNetworkUsageFromJson(Map<String, dynamic> json) {
  return ExtapiNetworkUsage(
    amount: json['amount'] as String?,
    dlCntDev: json['dlCntDev'] as String?,
    dlCntDevFree: json['dlCntDevFree'] as String?,
    dlCntGw: json['dlCntGw'] as String?,
    dlCntGwFree: json['dlCntGwFree'] as String?,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    ulCntDev: json['ulCntDev'] as String?,
    ulCntDevFree: json['ulCntDevFree'] as String?,
    ulCntGw: json['ulCntGw'] as String?,
    ulCntGwFree: json['ulCntGwFree'] as String?,
  );
}

Map<String, dynamic> _$ExtapiNetworkUsageToJson(ExtapiNetworkUsage instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'dlCntDev': instance.dlCntDev,
      'dlCntDevFree': instance.dlCntDevFree,
      'dlCntGw': instance.dlCntGw,
      'dlCntGwFree': instance.dlCntGwFree,
      'timestamp': instance.timestamp?.toIso8601String(),
      'ulCntDev': instance.ulCntDev,
      'ulCntDevFree': instance.ulCntDevFree,
      'ulCntGw': instance.ulCntGw,
      'ulCntGwFree': instance.ulCntGwFree,
    };

ExtapiOrder _$ExtapiOrderFromJson(Map<String, dynamic> json) {
  return ExtapiOrder(
    amountProduct: json['amountProduct'] as String?,
    bonusPerPieceUsd: json['bonusPerPieceUsd'] as String?,
    bonusStatus: json['bonusStatus'] as String?,
    createdAt: json['createdAt'] as String?,
    orderId: json['orderId'] as String?,
    productId: json['productId'] as String?,
    shopifyAccount: json['shopifyAccount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiOrderToJson(ExtapiOrder instance) =>
    <String, dynamic>{
      'amountProduct': instance.amountProduct,
      'bonusPerPieceUsd': instance.bonusPerPieceUsd,
      'bonusStatus': instance.bonusStatus,
      'createdAt': instance.createdAt,
      'orderId': instance.orderId,
      'productId': instance.productId,
      'shopifyAccount': instance.shopifyAccount,
    };

ExtapiOrganization _$ExtapiOrganizationFromJson(Map<String, dynamic> json) {
  return ExtapiOrganization(
    canHaveGateways: json['canHaveGateways'] as bool?,
    displayName: json['displayName'] as String?,
    id: json['id'] as String?,
    maxDeviceCount: json['maxDeviceCount'] as int?,
    maxGatewayCount: json['maxGatewayCount'] as int?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$ExtapiOrganizationToJson(ExtapiOrganization instance) =>
    <String, dynamic>{
      'canHaveGateways': instance.canHaveGateways,
      'displayName': instance.displayName,
      'id': instance.id,
      'maxDeviceCount': instance.maxDeviceCount,
      'maxGatewayCount': instance.maxGatewayCount,
      'name': instance.name,
    };

ExtapiOrganizationLink _$ExtapiOrganizationLinkFromJson(
    Map<String, dynamic> json) {
  return ExtapiOrganizationLink(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    isAdmin: json['isAdmin'] as bool?,
    isDeviceAdmin: json['isDeviceAdmin'] as bool?,
    isGatewayAdmin: json['isGatewayAdmin'] as bool?,
    organizationDisplayName: json['organizationDisplayName'] as String?,
    organizationID: json['organizationID'] as String?,
    organizationName: json['organizationName'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiOrganizationLinkToJson(
        ExtapiOrganizationLink instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'isAdmin': instance.isAdmin,
      'isDeviceAdmin': instance.isDeviceAdmin,
      'isGatewayAdmin': instance.isGatewayAdmin,
      'organizationDisplayName': instance.organizationDisplayName,
      'organizationID': instance.organizationID,
      'organizationName': instance.organizationName,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiOrganizationListItem _$ExtapiOrganizationListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiOrganizationListItem(
    canHaveGateways: json['canHaveGateways'] as bool?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    displayName: json['displayName'] as String?,
    id: json['id'] as String?,
    name: json['name'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiOrganizationListItemToJson(
        ExtapiOrganizationListItem instance) =>
    <String, dynamic>{
      'canHaveGateways': instance.canHaveGateways,
      'createdAt': instance.createdAt?.toIso8601String(),
      'displayName': instance.displayName,
      'id': instance.id,
      'name': instance.name,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiOrganizationUser _$ExtapiOrganizationUserFromJson(
    Map<String, dynamic> json) {
  return ExtapiOrganizationUser(
    isAdmin: json['isAdmin'] as bool?,
    isDeviceAdmin: json['isDeviceAdmin'] as bool?,
    isGatewayAdmin: json['isGatewayAdmin'] as bool?,
    organizationID: json['organizationID'] as String?,
    userID: json['userID'] as String?,
    username: json['username'] as String?,
  );
}

Map<String, dynamic> _$ExtapiOrganizationUserToJson(
        ExtapiOrganizationUser instance) =>
    <String, dynamic>{
      'isAdmin': instance.isAdmin,
      'isDeviceAdmin': instance.isDeviceAdmin,
      'isGatewayAdmin': instance.isGatewayAdmin,
      'organizationID': instance.organizationID,
      'userID': instance.userID,
      'username': instance.username,
    };

ExtapiOrganizationUserListItem _$ExtapiOrganizationUserListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiOrganizationUserListItem(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    isAdmin: json['isAdmin'] as bool?,
    isDeviceAdmin: json['isDeviceAdmin'] as bool?,
    isGatewayAdmin: json['isGatewayAdmin'] as bool?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    userID: json['userID'] as String?,
    username: json['username'] as String?,
  );
}

Map<String, dynamic> _$ExtapiOrganizationUserListItemToJson(
        ExtapiOrganizationUserListItem instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'isAdmin': instance.isAdmin,
      'isDeviceAdmin': instance.isDeviceAdmin,
      'isGatewayAdmin': instance.isGatewayAdmin,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userID': instance.userID,
      'username': instance.username,
    };

ExtapiPasswordResetReq _$ExtapiPasswordResetReqFromJson(
    Map<String, dynamic> json) {
  return ExtapiPasswordResetReq(
    language: json['language'] as String?,
    username: json['username'] as String?,
  );
}

Map<String, dynamic> _$ExtapiPasswordResetReqToJson(
        ExtapiPasswordResetReq instance) =>
    <String, dynamic>{
      'language': instance.language,
      'username': instance.username,
    };

ExtapiPasswordResetResp _$ExtapiPasswordResetRespFromJson(
    Map<String, dynamic> json) {
  return ExtapiPasswordResetResp();
}

Map<String, dynamic> _$ExtapiPasswordResetRespToJson(
        ExtapiPasswordResetResp instance) =>
    <String, dynamic>{};

ExtapiPingRX _$ExtapiPingRXFromJson(Map<String, dynamic> json) {
  return ExtapiPingRX(
    altitude: (json['altitude'] as num?)?.toDouble(),
    gatewayID: json['gatewayID'] as String?,
    latitude: (json['latitude'] as num?)?.toDouble(),
    loRaSNR: (json['loRaSNR'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    rssi: json['rssi'] as int?,
  );
}

Map<String, dynamic> _$ExtapiPingRXToJson(ExtapiPingRX instance) =>
    <String, dynamic>{
      'altitude': instance.altitude,
      'gatewayID': instance.gatewayID,
      'latitude': instance.latitude,
      'loRaSNR': instance.loRaSNR,
      'longitude': instance.longitude,
      'rssi': instance.rssi,
    };

ExtapiProfileResponse _$ExtapiProfileResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiProfileResponse(
    externalUserAccounts: (json['externalUserAccounts'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiExternalUserAccount.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    lastLoginService: json['lastLoginService'] as String?,
    organizations: (json['organizations'] as List<dynamic>?)
            ?.map((e) =>
                ExtapiOrganizationLink.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    user: json['user'] == null
        ? null
        : ExtapiUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiProfileResponseToJson(
        ExtapiProfileResponse instance) =>
    <String, dynamic>{
      'externalUserAccounts':
          instance.externalUserAccounts?.map((e) => e.toJson()).toList(),
      'lastLoginService': instance.lastLoginService,
      'organizations': instance.organizations?.map((e) => e.toJson()).toList(),
      'user': instance.user?.toJson(),
    };

ExtapiRegisterExternalUserRequest _$ExtapiRegisterExternalUserRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiRegisterExternalUserRequest(
    email: json['email'] as String?,
    organizationName: json['organizationName'] as String?,
  );
}

Map<String, dynamic> _$ExtapiRegisterExternalUserRequestToJson(
        ExtapiRegisterExternalUserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'organizationName': instance.organizationName,
    };

ExtapiRegisterExternalUserResponse _$ExtapiRegisterExternalUserResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiRegisterExternalUserResponse(
    jwt: json['jwt'] as String?,
  );
}

Map<String, dynamic> _$ExtapiRegisterExternalUserResponseToJson(
        ExtapiRegisterExternalUserResponse instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
    };

ExtapiRegisterRequest _$ExtapiRegisterRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiRegisterRequest(
    organizationId: json['organizationId'] as String?,
    sn: json['sn'] as String?,
  );
}

Map<String, dynamic> _$ExtapiRegisterRequestToJson(
        ExtapiRegisterRequest instance) =>
    <String, dynamic>{
      'organizationId': instance.organizationId,
      'sn': instance.sn,
    };

ExtapiRegisterResellerRequest _$ExtapiRegisterResellerRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiRegisterResellerRequest(
    manufacturerNr: json['manufacturerNr'] as String?,
    organizationId: json['organizationId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiRegisterResellerRequestToJson(
        ExtapiRegisterResellerRequest instance) =>
    <String, dynamic>{
      'manufacturerNr': instance.manufacturerNr,
      'organizationId': instance.organizationId,
    };

ExtapiRegisterResellerResponse _$ExtapiRegisterResellerResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiRegisterResellerResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiRegisterResellerResponseToJson(
        ExtapiRegisterResellerResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiRegisterResponse _$ExtapiRegisterResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiRegisterResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiRegisterResponseToJson(
        ExtapiRegisterResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiRegisterUserRequest _$ExtapiRegisterUserRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiRegisterUserRequest(
    email: json['email'] as String?,
    language: json['language'] as String?,
  );
}

Map<String, dynamic> _$ExtapiRegisterUserRequestToJson(
        ExtapiRegisterUserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'language': instance.language,
    };

ExtapiResetDefaultGatewatConfigByIDRequest
    _$ExtapiResetDefaultGatewatConfigByIDRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiResetDefaultGatewatConfigByIDRequest(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ExtapiResetDefaultGatewatConfigByIDRequestToJson(
        ExtapiResetDefaultGatewatConfigByIDRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ExtapiResetDefaultGatewatConfigByIDResponse
    _$ExtapiResetDefaultGatewatConfigByIDResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiResetDefaultGatewatConfigByIDResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiResetDefaultGatewatConfigByIDResponseToJson(
        ExtapiResetDefaultGatewatConfigByIDResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiSendCommandToDeviceResponse _$ExtapiSendCommandToDeviceResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiSendCommandToDeviceResponse(
    topic: json['topic'] as String?,
  );
}

Map<String, dynamic> _$ExtapiSendCommandToDeviceResponseToJson(
        ExtapiSendCommandToDeviceResponse instance) =>
    <String, dynamic>{
      'topic': instance.topic,
    };

ExtapiServiceProfile _$ExtapiServiceProfileFromJson(Map<String, dynamic> json) {
  return ExtapiServiceProfile(
    addGWMetaData: json['addGWMetaData'] as bool?,
    channelMask: json['channelMask'] as String?,
    devStatusReqFreq: json['devStatusReqFreq'] as int?,
    dlBucketSize: json['dlBucketSize'] as int?,
    dlRate: json['dlRate'] as int?,
    dlRatePolicy: extapiRatePolicyFromJson(json['dlRatePolicy'] as String?),
    drMax: json['drMax'] as int?,
    drMin: json['drMin'] as int?,
    hrAllowed: json['hrAllowed'] as bool?,
    id: json['id'] as String?,
    minGWDiversity: json['minGWDiversity'] as int?,
    name: json['name'] as String?,
    networkServerID: json['networkServerID'] as String?,
    nwkGeoLoc: json['nwkGeoLoc'] as bool?,
    organizationID: json['organizationID'] as String?,
    prAllowed: json['prAllowed'] as bool?,
    raAllowed: json['raAllowed'] as bool?,
    reportDevStatusBattery: json['reportDevStatusBattery'] as bool?,
    reportDevStatusMargin: json['reportDevStatusMargin'] as bool?,
    targetPER: json['targetPER'] as int?,
    ulBucketSize: json['ulBucketSize'] as int?,
    ulRate: json['ulRate'] as int?,
    ulRatePolicy: extapiRatePolicyFromJson(json['ulRatePolicy'] as String?),
  );
}

Map<String, dynamic> _$ExtapiServiceProfileToJson(
        ExtapiServiceProfile instance) =>
    <String, dynamic>{
      'addGWMetaData': instance.addGWMetaData,
      'channelMask': instance.channelMask,
      'devStatusReqFreq': instance.devStatusReqFreq,
      'dlBucketSize': instance.dlBucketSize,
      'dlRate': instance.dlRate,
      'dlRatePolicy': extapiRatePolicyToJson(instance.dlRatePolicy),
      'drMax': instance.drMax,
      'drMin': instance.drMin,
      'hrAllowed': instance.hrAllowed,
      'id': instance.id,
      'minGWDiversity': instance.minGWDiversity,
      'name': instance.name,
      'networkServerID': instance.networkServerID,
      'nwkGeoLoc': instance.nwkGeoLoc,
      'organizationID': instance.organizationID,
      'prAllowed': instance.prAllowed,
      'raAllowed': instance.raAllowed,
      'reportDevStatusBattery': instance.reportDevStatusBattery,
      'reportDevStatusMargin': instance.reportDevStatusMargin,
      'targetPER': instance.targetPER,
      'ulBucketSize': instance.ulBucketSize,
      'ulRate': instance.ulRate,
      'ulRatePolicy': extapiRatePolicyToJson(instance.ulRatePolicy),
    };

ExtapiServiceProfileListItem _$ExtapiServiceProfileListItemFromJson(
    Map<String, dynamic> json) {
  return ExtapiServiceProfileListItem(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    id: json['id'] as String?,
    name: json['name'] as String?,
    networkServerID: json['networkServerID'] as String?,
    organizationID: json['organizationID'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ExtapiServiceProfileListItemToJson(
        ExtapiServiceProfileListItem instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'networkServerID': instance.networkServerID,
      'organizationID': instance.organizationID,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ExtapiSetAutoUpdateFirmwareRequest _$ExtapiSetAutoUpdateFirmwareRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiSetAutoUpdateFirmwareRequest(
    autoUpdate: json['autoUpdate'] as bool?,
    gatewayId: json['gatewayId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiSetAutoUpdateFirmwareRequestToJson(
        ExtapiSetAutoUpdateFirmwareRequest instance) =>
    <String, dynamic>{
      'autoUpdate': instance.autoUpdate,
      'gatewayId': instance.gatewayId,
    };

ExtapiSetAutoUpdateFirmwareResponse
    _$ExtapiSetAutoUpdateFirmwareResponseFromJson(Map<String, dynamic> json) {
  return ExtapiSetAutoUpdateFirmwareResponse(
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$ExtapiSetAutoUpdateFirmwareResponseToJson(
        ExtapiSetAutoUpdateFirmwareResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

ExtapiSetDeviceModeRequest _$ExtapiSetDeviceModeRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiSetDeviceModeRequest(
    devId: json['devId'] as String?,
    devMode: extapiDeviceModeFromJson(json['devMode'] as String?),
    orgId: json['orgId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiSetDeviceModeRequestToJson(
        ExtapiSetDeviceModeRequest instance) =>
    <String, dynamic>{
      'devId': instance.devId,
      'devMode': extapiDeviceModeToJson(instance.devMode),
      'orgId': instance.orgId,
    };

ExtapiSetDeviceModeResponse _$ExtapiSetDeviceModeResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiSetDeviceModeResponse(
    status: json['status'] as bool?,
  );
}

Map<String, dynamic> _$ExtapiSetDeviceModeResponseToJson(
        ExtapiSetDeviceModeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiSetGatewayModeRequest _$ExtapiSetGatewayModeRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiSetGatewayModeRequest(
    gwId: json['gwId'] as String?,
    gwMode: extapiGatewayModeFromJson(json['gwMode'] as String?),
    orgId: json['orgId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiSetGatewayModeRequestToJson(
        ExtapiSetGatewayModeRequest instance) =>
    <String, dynamic>{
      'gwId': instance.gwId,
      'gwMode': extapiGatewayModeToJson(instance.gwMode),
      'orgId': instance.orgId,
    };

ExtapiSetGatewayModeResponse _$ExtapiSetGatewayModeResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiSetGatewayModeResponse(
    status: json['status'] as bool?,
  );
}

Map<String, dynamic> _$ExtapiSetGatewayModeResponseToJson(
        ExtapiSetGatewayModeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiStake _$ExtapiStakeFromJson(Map<String, dynamic> json) {
  return ExtapiStake(
    active: json['active'] as bool?,
    amount: json['amount'] as String?,
    boost: json['boost'] as String?,
    endTime: json['endTime'] == null
        ? null
        : DateTime.parse(json['endTime'] as String),
    id: json['id'] as String?,
    lockTill: json['lockTill'] == null
        ? null
        : DateTime.parse(json['lockTill'] as String),
    revenue: json['revenue'] as String?,
    startTime: json['startTime'] == null
        ? null
        : DateTime.parse(json['startTime'] as String),
  );
}

Map<String, dynamic> _$ExtapiStakeToJson(ExtapiStake instance) =>
    <String, dynamic>{
      'active': instance.active,
      'amount': instance.amount,
      'boost': instance.boost,
      'endTime': instance.endTime?.toIso8601String(),
      'id': instance.id,
      'lockTill': instance.lockTill?.toIso8601String(),
      'revenue': instance.revenue,
      'startTime': instance.startTime?.toIso8601String(),
    };

ExtapiStakeInfoResponse _$ExtapiStakeInfoResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiStakeInfoResponse(
    revenues: (json['revenues'] as List<dynamic>?)
            ?.map((e) => ExtapiStakeRevenue.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    stake: json['stake'] == null
        ? null
        : ExtapiStake.fromJson(json['stake'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiStakeInfoResponseToJson(
        ExtapiStakeInfoResponse instance) =>
    <String, dynamic>{
      'revenues': instance.revenues?.map((e) => e.toJson()).toList(),
      'stake': instance.stake?.toJson(),
    };

ExtapiStakeRequest _$ExtapiStakeRequestFromJson(Map<String, dynamic> json) {
  return ExtapiStakeRequest(
    amount: json['amount'] as String?,
    boost: json['boost'] as String?,
    currency: json['currency'] as String?,
    lockPeriods: json['lockPeriods'] as String?,
    orgId: json['orgId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiStakeRequestToJson(ExtapiStakeRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'boost': instance.boost,
      'currency': instance.currency,
      'lockPeriods': instance.lockPeriods,
      'orgId': instance.orgId,
    };

ExtapiStakeResponse _$ExtapiStakeResponseFromJson(Map<String, dynamic> json) {
  return ExtapiStakeResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiStakeResponseToJson(
        ExtapiStakeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiStakeRevenue _$ExtapiStakeRevenueFromJson(Map<String, dynamic> json) {
  return ExtapiStakeRevenue(
    amount: json['amount'] as String?,
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
  );
}

Map<String, dynamic> _$ExtapiStakeRevenueToJson(ExtapiStakeRevenue instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'time': instance.time?.toIso8601String(),
    };

ExtapiStakingHistory _$ExtapiStakingHistoryFromJson(Map<String, dynamic> json) {
  return ExtapiStakingHistory(
    amount: json['amount'] as String?,
    stake: json['stake'] == null
        ? null
        : ExtapiStake.fromJson(json['stake'] as Map<String, dynamic>),
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$ExtapiStakingHistoryToJson(
        ExtapiStakingHistory instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'stake': instance.stake?.toJson(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'type': instance.type,
    };

ExtapiStakingHistoryResponse _$ExtapiStakingHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiStakingHistoryResponse(
    stakingHist: (json['stakingHist'] as List<dynamic>?)
            ?.map(
                (e) => ExtapiStakingHistory.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiStakingHistoryResponseToJson(
        ExtapiStakingHistoryResponse instance) =>
    <String, dynamic>{
      'stakingHist': instance.stakingHist?.map((e) => e.toJson()).toList(),
    };

ExtapiStakingPercentageResponse _$ExtapiStakingPercentageResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiStakingPercentageResponse(
    lockBoosts: (json['lockBoosts'] as List<dynamic>?)
            ?.map((e) => ExtapiBoost.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    stakingInterest: (json['stakingInterest'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ExtapiStakingPercentageResponseToJson(
        ExtapiStakingPercentageResponse instance) =>
    <String, dynamic>{
      'lockBoosts': instance.lockBoosts?.map((e) => e.toJson()).toList(),
      'stakingInterest': instance.stakingInterest,
    };

ExtapiStakingRevenueResponse _$ExtapiStakingRevenueResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiStakingRevenueResponse(
    amount: json['amount'] as String?,
  );
}

Map<String, dynamic> _$ExtapiStakingRevenueResponseToJson(
        ExtapiStakingRevenueResponse instance) =>
    <String, dynamic>{
      'amount': instance.amount,
    };

ExtapiStreamDeviceEventLogsResponse
    _$ExtapiStreamDeviceEventLogsResponseFromJson(Map<String, dynamic> json) {
  return ExtapiStreamDeviceEventLogsResponse(
    payloadJSON: json['payloadJSON'] as String?,
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$ExtapiStreamDeviceEventLogsResponseToJson(
        ExtapiStreamDeviceEventLogsResponse instance) =>
    <String, dynamic>{
      'payloadJSON': instance.payloadJSON,
      'type': instance.type,
    };

ExtapiStreamDeviceFrameLogsResponse
    _$ExtapiStreamDeviceFrameLogsResponseFromJson(Map<String, dynamic> json) {
  return ExtapiStreamDeviceFrameLogsResponse(
    downlinkFrame: json['downlinkFrame'] == null
        ? null
        : ExtapiDownlinkFrameLog.fromJson(
            json['downlinkFrame'] as Map<String, dynamic>),
    uplinkFrame: json['uplinkFrame'] == null
        ? null
        : ExtapiUplinkFrameLog.fromJson(
            json['uplinkFrame'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiStreamDeviceFrameLogsResponseToJson(
        ExtapiStreamDeviceFrameLogsResponse instance) =>
    <String, dynamic>{
      'downlinkFrame': instance.downlinkFrame?.toJson(),
      'uplinkFrame': instance.uplinkFrame?.toJson(),
    };

ExtapiStreamGatewayFrameLogsResponse
    _$ExtapiStreamGatewayFrameLogsResponseFromJson(Map<String, dynamic> json) {
  return ExtapiStreamGatewayFrameLogsResponse(
    downlinkFrame: json['downlinkFrame'] == null
        ? null
        : ExtapiDownlinkFrameLog.fromJson(
            json['downlinkFrame'] as Map<String, dynamic>),
    uplinkFrame: json['uplinkFrame'] == null
        ? null
        : ExtapiUplinkFrameLog.fromJson(
            json['uplinkFrame'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiStreamGatewayFrameLogsResponseToJson(
        ExtapiStreamGatewayFrameLogsResponse instance) =>
    <String, dynamic>{
      'downlinkFrame': instance.downlinkFrame?.toJson(),
      'uplinkFrame': instance.uplinkFrame?.toJson(),
    };

ExtapiSubsribeApplicationEventsResponse
    _$ExtapiSubsribeApplicationEventsResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiSubsribeApplicationEventsResponse(
    topic: json['topic'] as String?,
  );
}

Map<String, dynamic> _$ExtapiSubsribeApplicationEventsResponseToJson(
        ExtapiSubsribeApplicationEventsResponse instance) =>
    <String, dynamic>{
      'topic': instance.topic,
    };

ExtapiSubsribeDeviceEventsResponse _$ExtapiSubsribeDeviceEventsResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiSubsribeDeviceEventsResponse(
    topic:
        (json['topic'] as List<dynamic>?)?.map((e) => e as String).toList() ??
            [],
  );
}

Map<String, dynamic> _$ExtapiSubsribeDeviceEventsResponseToJson(
        ExtapiSubsribeDeviceEventsResponse instance) =>
    <String, dynamic>{
      'topic': instance.topic,
    };

ExtapiTOTPStatusRequest _$ExtapiTOTPStatusRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiTOTPStatusRequest();
}

Map<String, dynamic> _$ExtapiTOTPStatusRequestToJson(
        ExtapiTOTPStatusRequest instance) =>
    <String, dynamic>{};

ExtapiTOTPStatusResponse _$ExtapiTOTPStatusResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiTOTPStatusResponse(
    enabled: json['enabled'] as bool?,
  );
}

Map<String, dynamic> _$ExtapiTOTPStatusResponseToJson(
        ExtapiTOTPStatusResponse instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

ExtapiThingsBoardIntegration _$ExtapiThingsBoardIntegrationFromJson(
    Map<String, dynamic> json) {
  return ExtapiThingsBoardIntegration(
    applicationID: json['applicationID'] as String?,
    server: json['server'] as String?,
  );
}

Map<String, dynamic> _$ExtapiThingsBoardIntegrationToJson(
        ExtapiThingsBoardIntegration instance) =>
    <String, dynamic>{
      'applicationID': instance.applicationID,
      'server': instance.server,
    };

ExtapiTopUpGatewayMiningFuelRequest
    _$ExtapiTopUpGatewayMiningFuelRequestFromJson(Map<String, dynamic> json) {
  return ExtapiTopUpGatewayMiningFuelRequest(
    currency: json['currency'] as String?,
    orgId: json['orgId'] as String?,
    topUps: (json['topUps'] as List<dynamic>?)
            ?.map((e) => ExtapiGatewayMiningFuelChange.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiTopUpGatewayMiningFuelRequestToJson(
        ExtapiTopUpGatewayMiningFuelRequest instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'orgId': instance.orgId,
      'topUps': instance.topUps?.map((e) => e.toJson()).toList(),
    };

ExtapiTopUpGatewayMiningFuelResponse
    _$ExtapiTopUpGatewayMiningFuelResponseFromJson(Map<String, dynamic> json) {
  return ExtapiTopUpGatewayMiningFuelResponse();
}

Map<String, dynamic> _$ExtapiTopUpGatewayMiningFuelResponseToJson(
        ExtapiTopUpGatewayMiningFuelResponse instance) =>
    <String, dynamic>{};

ExtapiTopUpHistory _$ExtapiTopUpHistoryFromJson(Map<String, dynamic> json) {
  return ExtapiTopUpHistory(
    amount: json['amount'] as String?,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    txHash: json['txHash'] as String?,
  );
}

Map<String, dynamic> _$ExtapiTopUpHistoryToJson(ExtapiTopUpHistory instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'timestamp': instance.timestamp?.toIso8601String(),
      'txHash': instance.txHash,
    };

ExtapiTopUpResponse _$ExtapiTopUpResponseFromJson(Map<String, dynamic> json) {
  return ExtapiTopUpResponse();
}

Map<String, dynamic> _$ExtapiTopUpResponseToJson(
        ExtapiTopUpResponse instance) =>
    <String, dynamic>{};

ExtapiTransaction _$ExtapiTransactionFromJson(Map<String, dynamic> json) {
  return ExtapiTransaction(
    amount: json['amount'] as String?,
    detailsJson: json['detailsJson'] as String?,
    id: json['id'] as String?,
    paymentType: json['paymentType'] as String?,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
  );
}

Map<String, dynamic> _$ExtapiTransactionToJson(ExtapiTransaction instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'detailsJson': instance.detailsJson,
      'id': instance.id,
      'paymentType': instance.paymentType,
      'timestamp': instance.timestamp?.toIso8601String(),
    };

ExtapiUnbindExternalUserRequest _$ExtapiUnbindExternalUserRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUnbindExternalUserRequest(
    organizationId: json['organizationId'] as String?,
    service: json['service'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUnbindExternalUserRequestToJson(
        ExtapiUnbindExternalUserRequest instance) =>
    <String, dynamic>{
      'organizationId': instance.organizationId,
      'service': instance.service,
    };

ExtapiUnbindExternalUserResponse _$ExtapiUnbindExternalUserResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiUnbindExternalUserResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUnbindExternalUserResponseToJson(
        ExtapiUnbindExternalUserResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiUnstakeRequest _$ExtapiUnstakeRequestFromJson(Map<String, dynamic> json) {
  return ExtapiUnstakeRequest(
    orgId: json['orgId'] as String?,
    stakeId: json['stakeId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUnstakeRequestToJson(
        ExtapiUnstakeRequest instance) =>
    <String, dynamic>{
      'orgId': instance.orgId,
      'stakeId': instance.stakeId,
    };

ExtapiUnstakeResponse _$ExtapiUnstakeResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiUnstakeResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUnstakeResponseToJson(
        ExtapiUnstakeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiUpdateApplicationRequest _$ExtapiUpdateApplicationRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateApplicationRequest(
    application: json['application'] == null
        ? null
        : ExtapiApplication.fromJson(
            json['application'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateApplicationRequestToJson(
        ExtapiUpdateApplicationRequest instance) =>
    <String, dynamic>{
      'application': instance.application?.toJson(),
    };

ExtapiUpdateDefaultGatewayConfigRequest
    _$ExtapiUpdateDefaultGatewayConfigRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiUpdateDefaultGatewayConfigRequest(
    defaultConfig: json['defaultConfig'] as String?,
    model: json['model'] as String?,
    region: json['region'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUpdateDefaultGatewayConfigRequestToJson(
        ExtapiUpdateDefaultGatewayConfigRequest instance) =>
    <String, dynamic>{
      'defaultConfig': instance.defaultConfig,
      'model': instance.model,
      'region': instance.region,
    };

ExtapiUpdateDefaultGatewayConfigResponse
    _$ExtapiUpdateDefaultGatewayConfigResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiUpdateDefaultGatewayConfigResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUpdateDefaultGatewayConfigResponseToJson(
        ExtapiUpdateDefaultGatewayConfigResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiUpdateDeviceKeysRequest _$ExtapiUpdateDeviceKeysRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateDeviceKeysRequest(
    deviceKeys: json['deviceKeys'] == null
        ? null
        : ExtapiDeviceKeys.fromJson(json['deviceKeys'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateDeviceKeysRequestToJson(
        ExtapiUpdateDeviceKeysRequest instance) =>
    <String, dynamic>{
      'deviceKeys': instance.deviceKeys?.toJson(),
    };

ExtapiUpdateDeviceProfileRequest _$ExtapiUpdateDeviceProfileRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateDeviceProfileRequest(
    deviceProfile: json['deviceProfile'] == null
        ? null
        : ExtapiDeviceProfile.fromJson(
            json['deviceProfile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateDeviceProfileRequestToJson(
        ExtapiUpdateDeviceProfileRequest instance) =>
    <String, dynamic>{
      'deviceProfile': instance.deviceProfile?.toJson(),
    };

ExtapiUpdateDeviceRequest _$ExtapiUpdateDeviceRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateDeviceRequest(
    device: json['device'] == null
        ? null
        : ExtapiDevice.fromJson(json['device'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateDeviceRequestToJson(
        ExtapiUpdateDeviceRequest instance) =>
    <String, dynamic>{
      'device': instance.device?.toJson(),
    };

ExtapiUpdateGatewayProfileRequest _$ExtapiUpdateGatewayProfileRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateGatewayProfileRequest(
    gatewayProfile: json['gatewayProfile'] == null
        ? null
        : ExtapiGatewayProfile.fromJson(
            json['gatewayProfile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateGatewayProfileRequestToJson(
        ExtapiUpdateGatewayProfileRequest instance) =>
    <String, dynamic>{
      'gatewayProfile': instance.gatewayProfile?.toJson(),
    };

ExtapiUpdateGatewayRequest _$ExtapiUpdateGatewayRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateGatewayRequest(
    gateway: json['gateway'] == null
        ? null
        : ExtapiGateway.fromJson(json['gateway'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateGatewayRequestToJson(
        ExtapiUpdateGatewayRequest instance) =>
    <String, dynamic>{
      'gateway': instance.gateway?.toJson(),
    };

ExtapiUpdateGwConfigRequest _$ExtapiUpdateGwConfigRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateGwConfigRequest(
    conf: json['conf'] as String?,
    gatewayId: json['gatewayId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUpdateGwConfigRequestToJson(
        ExtapiUpdateGwConfigRequest instance) =>
    <String, dynamic>{
      'conf': instance.conf,
      'gatewayId': instance.gatewayId,
    };

ExtapiUpdateGwConfigResponse _$ExtapiUpdateGwConfigResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateGwConfigResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUpdateGwConfigResponseToJson(
        ExtapiUpdateGwConfigResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiUpdateHTTPIntegrationRequest _$ExtapiUpdateHTTPIntegrationRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateHTTPIntegrationRequest(
    integration: json['integration'] == null
        ? null
        : ExtapiHTTPIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateHTTPIntegrationRequestToJson(
        ExtapiUpdateHTTPIntegrationRequest instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiUpdateInfluxDBIntegrationRequest
    _$ExtapiUpdateInfluxDBIntegrationRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiUpdateInfluxDBIntegrationRequest(
    integration: json['integration'] == null
        ? null
        : ExtapiInfluxDBIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateInfluxDBIntegrationRequestToJson(
        ExtapiUpdateInfluxDBIntegrationRequest instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiUpdateLoRaCloudIntegrationRequest
    _$ExtapiUpdateLoRaCloudIntegrationRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiUpdateLoRaCloudIntegrationRequest(
    integration: json['integration'] == null
        ? null
        : ExtapiLoRaCloudIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateLoRaCloudIntegrationRequestToJson(
        ExtapiUpdateLoRaCloudIntegrationRequest instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiUpdateMulticastGroupRequest _$ExtapiUpdateMulticastGroupRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateMulticastGroupRequest(
    multicastGroup: json['multicastGroup'] == null
        ? null
        : ExtapiMulticastGroup.fromJson(
            json['multicastGroup'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateMulticastGroupRequestToJson(
        ExtapiUpdateMulticastGroupRequest instance) =>
    <String, dynamic>{
      'multicastGroup': instance.multicastGroup?.toJson(),
    };

ExtapiUpdateMyDevicesIntegrationRequest
    _$ExtapiUpdateMyDevicesIntegrationRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiUpdateMyDevicesIntegrationRequest(
    integration: json['integration'] == null
        ? null
        : ExtapiMyDevicesIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateMyDevicesIntegrationRequestToJson(
        ExtapiUpdateMyDevicesIntegrationRequest instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiUpdateNetworkServerRequest _$ExtapiUpdateNetworkServerRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateNetworkServerRequest(
    networkServer: json['networkServer'] == null
        ? null
        : ExtapiNetworkServer.fromJson(
            json['networkServer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateNetworkServerRequestToJson(
        ExtapiUpdateNetworkServerRequest instance) =>
    <String, dynamic>{
      'networkServer': instance.networkServer?.toJson(),
    };

ExtapiUpdateOrganizationRequest _$ExtapiUpdateOrganizationRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateOrganizationRequest(
    organization: json['organization'] == null
        ? null
        : ExtapiOrganization.fromJson(
            json['organization'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateOrganizationRequestToJson(
        ExtapiUpdateOrganizationRequest instance) =>
    <String, dynamic>{
      'organization': instance.organization?.toJson(),
    };

ExtapiUpdateOrganizationUserRequest
    _$ExtapiUpdateOrganizationUserRequestFromJson(Map<String, dynamic> json) {
  return ExtapiUpdateOrganizationUserRequest(
    organizationUser: json['organizationUser'] == null
        ? null
        : ExtapiOrganizationUser.fromJson(
            json['organizationUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateOrganizationUserRequestToJson(
        ExtapiUpdateOrganizationUserRequest instance) =>
    <String, dynamic>{
      'organizationUser': instance.organizationUser?.toJson(),
    };

ExtapiUpdateServiceProfileRequest _$ExtapiUpdateServiceProfileRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateServiceProfileRequest(
    serviceProfile: json['serviceProfile'] == null
        ? null
        : ExtapiServiceProfile.fromJson(
            json['serviceProfile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateServiceProfileRequestToJson(
        ExtapiUpdateServiceProfileRequest instance) =>
    <String, dynamic>{
      'serviceProfile': instance.serviceProfile?.toJson(),
    };

ExtapiUpdateThingsBoardIntegrationRequest
    _$ExtapiUpdateThingsBoardIntegrationRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiUpdateThingsBoardIntegrationRequest(
    integration: json['integration'] == null
        ? null
        : ExtapiThingsBoardIntegration.fromJson(
            json['integration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateThingsBoardIntegrationRequestToJson(
        ExtapiUpdateThingsBoardIntegrationRequest instance) =>
    <String, dynamic>{
      'integration': instance.integration?.toJson(),
    };

ExtapiUpdateUserPasswordRequest _$ExtapiUpdateUserPasswordRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateUserPasswordRequest(
    password: json['password'] as String?,
    userId: json['userId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUpdateUserPasswordRequestToJson(
        ExtapiUpdateUserPasswordRequest instance) =>
    <String, dynamic>{
      'password': instance.password,
      'userId': instance.userId,
    };

ExtapiUpdateUserRequest _$ExtapiUpdateUserRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateUserRequest(
    user: json['user'] == null
        ? null
        : ExtapiUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUpdateUserRequestToJson(
        ExtapiUpdateUserRequest instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

ExtapiUpdateUserResponse _$ExtapiUpdateUserResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiUpdateUserResponse(
    jwt: json['jwt'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUpdateUserResponseToJson(
        ExtapiUpdateUserResponse instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
    };

ExtapiUplinkFrameLog _$ExtapiUplinkFrameLogFromJson(Map<String, dynamic> json) {
  return ExtapiUplinkFrameLog(
    phyPayloadJSON: json['phyPayloadJSON'] as String?,
    rxInfo: (json['rxInfo'] as List<dynamic>?)
            ?.map((e) => GwUplinkRXInfo.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    txInfo: json['txInfo'] == null
        ? null
        : GwUplinkTXInfo.fromJson(json['txInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtapiUplinkFrameLogToJson(
        ExtapiUplinkFrameLog instance) =>
    <String, dynamic>{
      'phyPayloadJSON': instance.phyPayloadJSON,
      'rxInfo': instance.rxInfo?.map((e) => e.toJson()).toList(),
      'txInfo': instance.txInfo?.toJson(),
    };

ExtapiUser _$ExtapiUserFromJson(Map<String, dynamic> json) {
  return ExtapiUser(
    email: json['email'] as String?,
    id: json['id'] as String?,
    isActive: json['isActive'] as bool?,
    isAdmin: json['isAdmin'] as bool?,
    note: json['note'] as String?,
    sessionTTL: json['sessionTTL'] as int?,
    username: json['username'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUserToJson(ExtapiUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'isActive': instance.isActive,
      'isAdmin': instance.isAdmin,
      'note': instance.note,
      'sessionTTL': instance.sessionTTL,
      'username': instance.username,
    };

ExtapiUserListItem _$ExtapiUserListItemFromJson(Map<String, dynamic> json) {
  return ExtapiUserListItem(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    id: json['id'] as String?,
    isActive: json['isActive'] as bool?,
    isAdmin: json['isAdmin'] as bool?,
    sessionTTL: json['sessionTTL'] as int?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    username: json['username'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUserListItemToJson(ExtapiUserListItem instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'isActive': instance.isActive,
      'isAdmin': instance.isAdmin,
      'sessionTTL': instance.sessionTTL,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'username': instance.username,
    };

ExtapiUserOrganization _$ExtapiUserOrganizationFromJson(
    Map<String, dynamic> json) {
  return ExtapiUserOrganization(
    isAdmin: json['isAdmin'] as bool?,
    isDeviceAdmin: json['isDeviceAdmin'] as bool?,
    isGatewayAdmin: json['isGatewayAdmin'] as bool?,
    organizationID: json['organizationID'] as String?,
  );
}

Map<String, dynamic> _$ExtapiUserOrganizationToJson(
        ExtapiUserOrganization instance) =>
    <String, dynamic>{
      'isAdmin': instance.isAdmin,
      'isDeviceAdmin': instance.isDeviceAdmin,
      'isGatewayAdmin': instance.isGatewayAdmin,
      'organizationID': instance.organizationID,
    };

ExtapiVerifyEmailRequest _$ExtapiVerifyEmailRequestFromJson(
    Map<String, dynamic> json) {
  return ExtapiVerifyEmailRequest(
    email: json['email'] as String?,
    language: json['language'] as String?,
    organizationId: json['organizationId'] as String?,
  );
}

Map<String, dynamic> _$ExtapiVerifyEmailRequestToJson(
        ExtapiVerifyEmailRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'language': instance.language,
      'organizationId': instance.organizationId,
    };

ExtapiVerifyEmailResponse _$ExtapiVerifyEmailResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiVerifyEmailResponse(
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ExtapiVerifyEmailResponseToJson(
        ExtapiVerifyEmailResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

ExtapiVmxcTxHistory _$ExtapiVmxcTxHistoryFromJson(Map<String, dynamic> json) {
  return ExtapiVmxcTxHistory(
    amount: (json['amount'] as num?)?.toDouble(),
    createdAt: json['createdAt'] as String?,
    from: json['from'] as String?,
    to: json['to'] as String?,
    txType: json['txType'] as String?,
  );
}

Map<String, dynamic> _$ExtapiVmxcTxHistoryToJson(
        ExtapiVmxcTxHistory instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'createdAt': instance.createdAt,
      'from': instance.from,
      'to': instance.to,
      'txType': instance.txType,
    };

ExtapiWithdrawGatewayMiningFuelRequest
    _$ExtapiWithdrawGatewayMiningFuelRequestFromJson(
        Map<String, dynamic> json) {
  return ExtapiWithdrawGatewayMiningFuelRequest(
    currency: json['currency'] as String?,
    orgId: json['orgId'] as String?,
    withdrawals: (json['withdrawals'] as List<dynamic>?)
            ?.map((e) => ExtapiGatewayMiningFuelChange.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ExtapiWithdrawGatewayMiningFuelRequestToJson(
        ExtapiWithdrawGatewayMiningFuelRequest instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'orgId': instance.orgId,
      'withdrawals': instance.withdrawals?.map((e) => e.toJson()).toList(),
    };

ExtapiWithdrawGatewayMiningFuelResponse
    _$ExtapiWithdrawGatewayMiningFuelResponseFromJson(
        Map<String, dynamic> json) {
  return ExtapiWithdrawGatewayMiningFuelResponse();
}

Map<String, dynamic> _$ExtapiWithdrawGatewayMiningFuelResponseToJson(
        ExtapiWithdrawGatewayMiningFuelResponse instance) =>
    <String, dynamic>{};

ExtapiWithdrawHistory _$ExtapiWithdrawHistoryFromJson(
    Map<String, dynamic> json) {
  return ExtapiWithdrawHistory(
    amount: json['amount'] as String?,
    denyComment: json['denyComment'] as String?,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    txHash: json['txHash'] as String?,
    txStatus: json['txStatus'] as String?,
    withdrawFee: json['withdrawFee'] as String?,
  );
}

Map<String, dynamic> _$ExtapiWithdrawHistoryToJson(
        ExtapiWithdrawHistory instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'denyComment': instance.denyComment,
      'timestamp': instance.timestamp?.toIso8601String(),
      'txHash': instance.txHash,
      'txStatus': instance.txStatus,
      'withdrawFee': instance.withdrawFee,
    };

ExtapiWithdrawResponse _$ExtapiWithdrawResponseFromJson(
    Map<String, dynamic> json) {
  return ExtapiWithdrawResponse(
    msg: json['msg'] as String?,
  );
}

Map<String, dynamic> _$ExtapiWithdrawResponseToJson(
        ExtapiWithdrawResponse instance) =>
    <String, dynamic>{
      'msg': instance.msg,
    };

GwDelayTimingInfo _$GwDelayTimingInfoFromJson(Map<String, dynamic> json) {
  return GwDelayTimingInfo(
    delay: json['delay'] as String?,
  );
}

Map<String, dynamic> _$GwDelayTimingInfoToJson(GwDelayTimingInfo instance) =>
    <String, dynamic>{
      'delay': instance.delay,
    };

GwDownlinkTXInfo _$GwDownlinkTXInfoFromJson(Map<String, dynamic> json) {
  return GwDownlinkTXInfo(
    antenna: json['antenna'] as int?,
    board: json['board'] as int?,
    context: json['context'] as String?,
    delayTimingInfo: json['delayTimingInfo'] == null
        ? null
        : GwDelayTimingInfo.fromJson(
            json['delayTimingInfo'] as Map<String, dynamic>),
    frequency: json['frequency'] as int?,
    fskModulationInfo: json['fskModulationInfo'] == null
        ? null
        : GwFSKModulationInfo.fromJson(
            json['fskModulationInfo'] as Map<String, dynamic>),
    gatewayID: json['gatewayID'] as String?,
    gpsEpochTimingInfo: json['gpsEpochTimingInfo'] == null
        ? null
        : GwGPSEpochTimingInfo.fromJson(
            json['gpsEpochTimingInfo'] as Map<String, dynamic>),
    immediatelyTimingInfo: json['immediatelyTimingInfo'] == null
        ? null
        : GwImmediatelyTimingInfo.fromJson(
            json['immediatelyTimingInfo'] as Map<String, dynamic>),
    loRaModulationInfo: json['loRaModulationInfo'] == null
        ? null
        : GwLoRaModulationInfo.fromJson(
            json['loRaModulationInfo'] as Map<String, dynamic>),
    modulation: commonModulationFromJson(json['modulation'] as String?),
    power: json['power'] as int?,
    timing: gwDownlinkTimingFromJson(json['timing'] as String?),
  );
}

Map<String, dynamic> _$GwDownlinkTXInfoToJson(GwDownlinkTXInfo instance) =>
    <String, dynamic>{
      'antenna': instance.antenna,
      'board': instance.board,
      'context': instance.context,
      'delayTimingInfo': instance.delayTimingInfo?.toJson(),
      'frequency': instance.frequency,
      'fskModulationInfo': instance.fskModulationInfo?.toJson(),
      'gatewayID': instance.gatewayID,
      'gpsEpochTimingInfo': instance.gpsEpochTimingInfo?.toJson(),
      'immediatelyTimingInfo': instance.immediatelyTimingInfo?.toJson(),
      'loRaModulationInfo': instance.loRaModulationInfo?.toJson(),
      'modulation': commonModulationToJson(instance.modulation),
      'power': instance.power,
      'timing': gwDownlinkTimingToJson(instance.timing),
    };

GwEncryptedFineTimestamp _$GwEncryptedFineTimestampFromJson(
    Map<String, dynamic> json) {
  return GwEncryptedFineTimestamp(
    aesKeyIndex: json['aesKeyIndex'] as int?,
    encryptedNS: json['encryptedNS'] as String?,
    fpgaID: json['fpgaID'] as String?,
  );
}

Map<String, dynamic> _$GwEncryptedFineTimestampToJson(
        GwEncryptedFineTimestamp instance) =>
    <String, dynamic>{
      'aesKeyIndex': instance.aesKeyIndex,
      'encryptedNS': instance.encryptedNS,
      'fpgaID': instance.fpgaID,
    };

GwFSKModulationInfo _$GwFSKModulationInfoFromJson(Map<String, dynamic> json) {
  return GwFSKModulationInfo(
    datarate: json['datarate'] as int?,
    frequencyDeviation: json['frequencyDeviation'] as int?,
  );
}

Map<String, dynamic> _$GwFSKModulationInfoToJson(
        GwFSKModulationInfo instance) =>
    <String, dynamic>{
      'datarate': instance.datarate,
      'frequencyDeviation': instance.frequencyDeviation,
    };

GwGPSEpochTimingInfo _$GwGPSEpochTimingInfoFromJson(Map<String, dynamic> json) {
  return GwGPSEpochTimingInfo(
    timeSinceGPSEpoch: json['timeSinceGPSEpoch'] as String?,
  );
}

Map<String, dynamic> _$GwGPSEpochTimingInfoToJson(
        GwGPSEpochTimingInfo instance) =>
    <String, dynamic>{
      'timeSinceGPSEpoch': instance.timeSinceGPSEpoch,
    };

GwImmediatelyTimingInfo _$GwImmediatelyTimingInfoFromJson(
    Map<String, dynamic> json) {
  return GwImmediatelyTimingInfo();
}

Map<String, dynamic> _$GwImmediatelyTimingInfoToJson(
        GwImmediatelyTimingInfo instance) =>
    <String, dynamic>{};

GwLRFHSSModulationInfo _$GwLRFHSSModulationInfoFromJson(
    Map<String, dynamic> json) {
  return GwLRFHSSModulationInfo(
    codeRate: json['codeRate'] as String?,
    gridSteps: json['gridSteps'] as int?,
    operatingChannelWidth: json['operatingChannelWidth'] as int?,
  );
}

Map<String, dynamic> _$GwLRFHSSModulationInfoToJson(
        GwLRFHSSModulationInfo instance) =>
    <String, dynamic>{
      'codeRate': instance.codeRate,
      'gridSteps': instance.gridSteps,
      'operatingChannelWidth': instance.operatingChannelWidth,
    };

GwLoRaModulationInfo _$GwLoRaModulationInfoFromJson(Map<String, dynamic> json) {
  return GwLoRaModulationInfo(
    bandwidth: json['bandwidth'] as int?,
    codeRate: json['codeRate'] as String?,
    polarizationInversion: json['polarizationInversion'] as bool?,
    spreadingFactor: json['spreadingFactor'] as int?,
  );
}

Map<String, dynamic> _$GwLoRaModulationInfoToJson(
        GwLoRaModulationInfo instance) =>
    <String, dynamic>{
      'bandwidth': instance.bandwidth,
      'codeRate': instance.codeRate,
      'polarizationInversion': instance.polarizationInversion,
      'spreadingFactor': instance.spreadingFactor,
    };

GwPlainFineTimestamp _$GwPlainFineTimestampFromJson(Map<String, dynamic> json) {
  return GwPlainFineTimestamp(
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
  );
}

Map<String, dynamic> _$GwPlainFineTimestampToJson(
        GwPlainFineTimestamp instance) =>
    <String, dynamic>{
      'time': instance.time?.toIso8601String(),
    };

GwUplinkRXInfo _$GwUplinkRXInfoFromJson(Map<String, dynamic> json) {
  return GwUplinkRXInfo(
    antenna: json['antenna'] as int?,
    board: json['board'] as int?,
    channel: json['channel'] as int?,
    context: json['context'] as String?,
    crcStatus: gwCRCStatusFromJson(json['crcStatus'] as String?),
    encryptedFineTimestamp: json['encryptedFineTimestamp'] == null
        ? null
        : GwEncryptedFineTimestamp.fromJson(
            json['encryptedFineTimestamp'] as Map<String, dynamic>),
    fineTimestampType:
        gwFineTimestampTypeFromJson(json['fineTimestampType'] as String?),
    gatewayID: json['gatewayID'] as String?,
    loRaSNR: (json['loRaSNR'] as num?)?.toDouble(),
    location: json['location'] == null
        ? null
        : CommonLocation.fromJson(json['location'] as Map<String, dynamic>),
    plainFineTimestamp: json['plainFineTimestamp'] == null
        ? null
        : GwPlainFineTimestamp.fromJson(
            json['plainFineTimestamp'] as Map<String, dynamic>),
    rfChain: json['rfChain'] as int?,
    rssi: json['rssi'] as int?,
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    timeSinceGPSEpoch: json['timeSinceGPSEpoch'] as String?,
    uplinkID: json['uplinkID'] as String?,
  );
}

Map<String, dynamic> _$GwUplinkRXInfoToJson(GwUplinkRXInfo instance) =>
    <String, dynamic>{
      'antenna': instance.antenna,
      'board': instance.board,
      'channel': instance.channel,
      'context': instance.context,
      'crcStatus': gwCRCStatusToJson(instance.crcStatus),
      'encryptedFineTimestamp': instance.encryptedFineTimestamp?.toJson(),
      'fineTimestampType':
          gwFineTimestampTypeToJson(instance.fineTimestampType),
      'gatewayID': instance.gatewayID,
      'loRaSNR': instance.loRaSNR,
      'location': instance.location?.toJson(),
      'plainFineTimestamp': instance.plainFineTimestamp?.toJson(),
      'rfChain': instance.rfChain,
      'rssi': instance.rssi,
      'time': instance.time?.toIso8601String(),
      'timeSinceGPSEpoch': instance.timeSinceGPSEpoch,
      'uplinkID': instance.uplinkID,
    };

GwUplinkTXInfo _$GwUplinkTXInfoFromJson(Map<String, dynamic> json) {
  return GwUplinkTXInfo(
    frequency: json['frequency'] as int?,
    fskModulationInfo: json['fskModulationInfo'] == null
        ? null
        : GwFSKModulationInfo.fromJson(
            json['fskModulationInfo'] as Map<String, dynamic>),
    loRaModulationInfo: json['loRaModulationInfo'] == null
        ? null
        : GwLoRaModulationInfo.fromJson(
            json['loRaModulationInfo'] as Map<String, dynamic>),
    lrFHSSModulationInfo: json['lrFHSSModulationInfo'] == null
        ? null
        : GwLRFHSSModulationInfo.fromJson(
            json['lrFHSSModulationInfo'] as Map<String, dynamic>),
    modulation: commonModulationFromJson(json['modulation'] as String?),
  );
}

Map<String, dynamic> _$GwUplinkTXInfoToJson(GwUplinkTXInfo instance) =>
    <String, dynamic>{
      'frequency': instance.frequency,
      'fskModulationInfo': instance.fskModulationInfo?.toJson(),
      'loRaModulationInfo': instance.loRaModulationInfo?.toJson(),
      'lrFHSSModulationInfo': instance.lrFHSSModulationInfo?.toJson(),
      'modulation': commonModulationToJson(instance.modulation),
    };

ProtobufAny _$ProtobufAnyFromJson(Map<String, dynamic> json) {
  return ProtobufAny(
    typeUrl: json['typeUrl'] as String?,
    value: json['value'] as String?,
  );
}

Map<String, dynamic> _$ProtobufAnyToJson(ProtobufAny instance) =>
    <String, dynamic>{
      'typeUrl': instance.typeUrl,
      'value': instance.value,
    };

RuntimeError _$RuntimeErrorFromJson(Map<String, dynamic> json) {
  return RuntimeError(
    code: json['code'] as int?,
    details: (json['details'] as List<dynamic>?)
            ?.map((e) => ProtobufAny.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    error: json['error'] as String?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$RuntimeErrorToJson(RuntimeError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'details': instance.details?.map((e) => e.toJson()).toList(),
      'error': instance.error,
      'message': instance.message,
    };

RuntimeStreamError _$RuntimeStreamErrorFromJson(Map<String, dynamic> json) {
  return RuntimeStreamError(
    details: (json['details'] as List<dynamic>?)
            ?.map((e) => ProtobufAny.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    grpcCode: json['grpcCode'] as int?,
    httpCode: json['httpCode'] as int?,
    httpStatus: json['httpStatus'] as String?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$RuntimeStreamErrorToJson(RuntimeStreamError instance) =>
    <String, dynamic>{
      'details': instance.details?.map((e) => e.toJson()).toList(),
      'grpcCode': instance.grpcCode,
      'httpCode': instance.httpCode,
      'httpStatus': instance.httpStatus,
      'message': instance.message,
    };

ApiDevicesDevEUIEventsGet$Response _$ApiDevicesDevEUIEventsGet$ResponseFromJson(
    Map<String, dynamic> json) {
  return ApiDevicesDevEUIEventsGet$Response(
    error: json['error'] == null
        ? null
        : RuntimeStreamError.fromJson(json['error'] as Map<String, dynamic>),
    result: json['result'] == null
        ? null
        : ExtapiStreamDeviceEventLogsResponse.fromJson(
            json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiDevicesDevEUIEventsGet$ResponseToJson(
        ApiDevicesDevEUIEventsGet$Response instance) =>
    <String, dynamic>{
      'error': instance.error?.toJson(),
      'result': instance.result?.toJson(),
    };

ApiDevicesDevEUIFramesGet$Response _$ApiDevicesDevEUIFramesGet$ResponseFromJson(
    Map<String, dynamic> json) {
  return ApiDevicesDevEUIFramesGet$Response(
    error: json['error'] == null
        ? null
        : RuntimeStreamError.fromJson(json['error'] as Map<String, dynamic>),
    result: json['result'] == null
        ? null
        : ExtapiStreamDeviceFrameLogsResponse.fromJson(
            json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiDevicesDevEUIFramesGet$ResponseToJson(
        ApiDevicesDevEUIFramesGet$Response instance) =>
    <String, dynamic>{
      'error': instance.error?.toJson(),
      'result': instance.result?.toJson(),
    };

ApiGatewaysGatewayIDFramesGet$Response
    _$ApiGatewaysGatewayIDFramesGet$ResponseFromJson(
        Map<String, dynamic> json) {
  return ApiGatewaysGatewayIDFramesGet$Response(
    error: json['error'] == null
        ? null
        : RuntimeStreamError.fromJson(json['error'] as Map<String, dynamic>),
    result: json['result'] == null
        ? null
        : ExtapiStreamGatewayFrameLogsResponse.fromJson(
            json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiGatewaysGatewayIDFramesGet$ResponseToJson(
        ApiGatewaysGatewayIDFramesGet$Response instance) =>
    <String, dynamic>{
      'error': instance.error?.toJson(),
      'result': instance.result?.toJson(),
    };

ApiReportMiningIncomeCsvGet$Response
    _$ApiReportMiningIncomeCsvGet$ResponseFromJson(Map<String, dynamic> json) {
  return ApiReportMiningIncomeCsvGet$Response(
    error: json['error'] == null
        ? null
        : RuntimeStreamError.fromJson(json['error'] as Map<String, dynamic>),
    result: json['result'] == null
        ? null
        : ExtapiMiningReportResponse.fromJson(
            json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiReportMiningIncomeCsvGet$ResponseToJson(
        ApiReportMiningIncomeCsvGet$Response instance) =>
    <String, dynamic>{
      'error': instance.error?.toJson(),
      'result': instance.result?.toJson(),
    };

ApiReportMiningIncomePdfGet$Response
    _$ApiReportMiningIncomePdfGet$ResponseFromJson(Map<String, dynamic> json) {
  return ApiReportMiningIncomePdfGet$Response(
    error: json['error'] == null
        ? null
        : RuntimeStreamError.fromJson(json['error'] as Map<String, dynamic>),
    result: json['result'] == null
        ? null
        : ExtapiMiningReportResponse.fromJson(
            json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiReportMiningIncomePdfGet$ResponseToJson(
        ApiReportMiningIncomePdfGet$Response instance) =>
    <String, dynamic>{
      'error': instance.error?.toJson(),
      'result': instance.result?.toJson(),
    };
