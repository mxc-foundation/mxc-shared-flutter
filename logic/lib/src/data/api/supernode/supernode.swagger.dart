import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

import 'package:chopper/chopper.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'supernode.enums.swagger.dart' as enums;
export 'supernode.enums.swagger.dart';

part 'supernode.swagger.chopper.dart';
part 'supernode.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class ApplicationService extends ChopperService {
  static ApplicationService createService([ChopperClient? client]) {
    if (client != null) {
      return _$ApplicationService(client);
    }

    final newClient = ChopperClient(
      services: [_$ApplicationService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$ApplicationService(newClient);
  }

  ///List lists the available applications.
  ///@param limit Max number of applications to return in the result-test.
  ///@param offset Offset in the result-set (for pagination).
  ///@param organizationID ID of the organization to filter on.
  ///@param search Search on name (optional).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/applications')
  Future<chopper.Response<ExtapiListApplicationResponse>> list(
      {@Query('limit')
          String? limit,
      @Query('offset')
          String? offset,
      @Query('organizationID')
          String? organizationID,
      @Query('search')
          String? search,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Create creates the given application.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/applications')
  Future<chopper.Response<ExtapiCreateApplicationResponse>> create(
      {@Body()
      @required
          ExtapiCreateApplicationRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Update updates the given application.
  ///@param application.id Application ID. This will be automatically assigned on create.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/applications/{application.id}')
  Future<chopper.Response> update(
      {@Path('application.id')
      @required
          String? id,
      @Body()
      @required
          ExtapiUpdateApplicationRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Delete deletes the given application.
  ///@param id Application ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/applications/{id}')
  Future<chopper.Response> delete(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get returns the requested application.
  ///@param id Application ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/applications/{id}')
  Future<chopper.Response<ExtapiGetApplicationResponse>> get(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class BTCMiningService extends ChopperService {
  static BTCMiningService createService([ChopperClient? client]) {
    if (client != null) {
      return _$BTCMiningService(client);
    }

    final newClient = ChopperClient(
      services: [_$BTCMiningService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$BTCMiningService(newClient);
  }

  ///List the locks that are still open
  ///@param orgId org for which the locks must be returned.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/btc-mining/list-locks')
  Future<chopper.Response<ExtapiBTCListLocksResponse>> bTCListLocks(
      {@Query('orgId')
          String? orgId,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Create locks for current or upcoming mining session
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/btc-mining/lock')
  Future<chopper.Response<ExtapiBTCAddLocksResponse>> bTCAddLocks(
      {@Body()
      @required
          ExtapiBTCAddLocksRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Request information about the current or upcoming mining session
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/btc-mining/session')
  Future<chopper.Response<ExtapiBTCMiningSessionResponse>> bTCMiningSession(
      {@Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class ExternalUserService extends ChopperService {
  static ExternalUserService createService([ChopperClient? client]) {
    if (client != null) {
      return _$ExternalUserService(client);
    }

    final newClient = ChopperClient(
      services: [_$ExternalUserService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$ExternalUserService(newClient);
  }

  ///ConfirmShopifyEmail checks given token and bind
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/confirm-external-email')
  Future<chopper.Response<ExtapiConfirmShopifyEmailResponse>>
      confirmShopifyEmail(
          {@Body()
          @required
              ExtapiConfirmShopifyEmailRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///AuthenticateWeChatUser interacts with wechat open platform to authenticate wechat user then check binding status of this wechat user
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/external-login/authenticate-wechat-user')
  Future<chopper.Response<ExtapiAuthenticateWeChatUserResponse>>
      authenticateWeChatUser(
          {@Body()
          @required
              ExtapiAuthenticateWeChatUserRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///BindExternalUser binds external user id to supernode user
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/external-login/bind-external-user')
  Future<chopper.Response<ExtapiBindExternalUserResponse>> bindExternalUser(
      {@Body()
      @required
          ExtapiBindExternalUserRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///DebugAuthenticateWeChatUser will only be called by debug mode
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/external-login/debug-authenticate-wechat-user')
  Future<chopper.Response<ExtapiAuthenticateWeChatUserResponse>>
      debugAuthenticateWeChatUser(
          {@Body()
          @required
              ExtapiAuthenticateWeChatUserRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///RegisterExternalUser creates new supernode account then bind it with external user id
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/external-login/register-external-user')
  Future<chopper.Response<ExtapiRegisterExternalUserResponse>>
      registerExternalUser(
          {@Body()
          @required
              ExtapiRegisterExternalUserRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///UnbindExternalUser unbinds external user and supernode user account
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/external-login/unbind-external-user')
  Future<chopper.Response<ExtapiUnbindExternalUserResponse>> unbindExternalUser(
      {@Body()
      @required
          ExtapiUnbindExternalUserRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///VerifyShopifyEmail sends email with confirmation message to given address
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/verify-external-email')
  Future<chopper.Response<ExtapiVerifyShopifyEmailResponse>> verifyShopifyEmail(
      {@Body()
      @required
          ExtapiVerifyShopifyEmailRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class DeviceProfileService extends ChopperService {
  static DeviceProfileService createService([ChopperClient? client]) {
    if (client != null) {
      return _$DeviceProfileService(client);
    }

    final newClient = ChopperClient(
      services: [_$DeviceProfileService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$DeviceProfileService(newClient);
  }

  ///List lists the available device-profiles.
  ///@param limit Max number of items to return.
  ///@param offset Offset in the result-set (for pagination).
  ///@param organizationID Organization id to filter on.
  ///@param applicationID Application id to filter on.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/device-profiles')
  Future<chopper.Response<ExtapiListDeviceProfileResponse>> list(
      {@Query('limit')
          String? limit,
      @Query('offset')
          String? offset,
      @Query('organizationID')
          String? organizationID,
      @Query('applicationID')
          String? applicationID,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Create creates the given device-profile.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/device-profiles')
  Future<chopper.Response<ExtapiCreateDeviceProfileResponse>> create(
      {@Body()
      @required
          ExtapiCreateDeviceProfileRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Update updates the given device-profile.
  ///@param deviceProfile.id Device-profile ID (UUID string).
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/device-profiles/{deviceProfile.id}')
  Future<chopper.Response> update(
      {@Path('deviceProfile.id')
      @required
          String? id,
      @Body()
      @required
          ExtapiUpdateDeviceProfileRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Delete deletes the device-profile matching the given id.
  ///@param id Device-profile ID (UUID string).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/device-profiles/{id}')
  Future<chopper.Response> delete(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get returns the device-profile matching the given id.
  ///@param id Device-profile ID (UUID string).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/device-profiles/{id}')
  Future<chopper.Response<ExtapiGetDeviceProfileResponse>> get(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class DeviceProvisioningService extends ChopperService {
  static DeviceProvisioningService createService([ChopperClient? client]) {
    if (client != null) {
      return _$DeviceProvisioningService(client);
    }

    final newClient = ChopperClient(
      services: [_$DeviceProvisioningService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$DeviceProvisioningService(newClient);
  }

  ///Create - creates the given provisioned device.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/device-provision')
  Future<chopper.Response<ExtapiCreateResponse>> create(
      {@Body()
      @required
          ExtapiCreateRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class DeviceService extends ChopperService {
  static DeviceService createService([ChopperClient? client]) {
    if (client != null) {
      return _$DeviceService(client);
    }

    final newClient = ChopperClient(
      services: [_$DeviceService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$DeviceService(newClient);
  }

  ///List returns the available devices.
  ///@param limit Max number of devices to return in the result-set.
  ///@param offset Offset in the result-set (for pagination).
  ///@param applicationID Application ID to filter on.
  ///@param search Search on name or DevEUI.
  ///@param serviceProfileID Service-profile ID to filter on (string formatted UUID).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/devices')
  Future<chopper.Response<ExtapiListDeviceResponse>> list(
      {@Query('limit')
          String? limit,
      @Query('offset')
          String? offset,
      @Query('applicationID')
          String? applicationID,
      @Query('search')
          String? search,
      @Query('serviceProfileID')
          String? serviceProfileID,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Create creates the given device.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/devices')
  Future<chopper.Response> create(
      {@Body()
      @required
          ExtapiCreateDeviceRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Delete deletes the device matching the given DevEUI.
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/devices/{devEUI}')
  Future<chopper.Response> delete(
      {@Path('devEUI')
      @required
          String? devEUI,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get returns the device matching the given DevEUI.
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/devices/{devEUI}')
  Future<chopper.Response<ExtapiGetDeviceResponse>> get(
      {@Path('devEUI')
      @required
          String? devEUI,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Deactivate de-activates the device.
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/devices/{devEUI}/activation')
  Future<chopper.Response> deactivate(
      {@Path('devEUI')
      @required
          String? devEUI,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///GetActivation returns the current activation details of the device (OTAA and ABP).
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/devices/{devEUI}/activation')
  Future<chopper.Response<ExtapiGetDeviceActivationResponse>> getActivation(
      {@Path('devEUI')
      @required
          String? devEUI,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///StreamEventLogs stream the device events (uplink payloads, ACKs, joins, errors).   * This endpoint is intended for debugging only.   * This endpoint does not work from a web-browser.
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/devices/{devEUI}/events')
  Future<chopper.Response<ApiDevicesDevEUIEventsGet$Response>> streamEventLogs(
      {@Path('devEUI')
      @required
          String? devEUI,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///StreamFrameLogs streams the uplink and downlink frame-logs for the given DevEUI.   * These are the raw LoRaWAN frames and this endpoint is intended for debugging only.   * This endpoint does not work from a web-browser.
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/devices/{devEUI}/frames')
  Future<chopper.Response<ApiDevicesDevEUIFramesGet$Response>> streamFrameLogs(
      {@Path('devEUI')
      @required
          String? devEUI,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///GetRandomDevAddr returns a random DevAddr taking the NwkID prefix into account.
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token
  ///@param body

  @Post(path: '/api/devices/{devEUI}/getRandomDevAddr')
  Future<chopper.Response<ExtapiGetRandomDevAddrResponse>> getRandomDevAddr(
      {@Path('devEUI') @required String? devEUI,
      @Header('Grpc-Metadata-X-OTP') String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization') String? grpcMetadataAuthorization,
      @Body() @required Object? body});

  ///DeleteKeys deletes the device-keys for the given DevEUI.
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/devices/{devEUI}/keys')
  Future<chopper.Response> deleteKeys(
      {@Path('devEUI')
      @required
          String? devEUI,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///GetKeys returns the device-keys for the given DevEUI.
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/devices/{devEUI}/keys')
  Future<chopper.Response<ExtapiGetDeviceKeysResponse>> getKeys(
      {@Path('devEUI')
      @required
          String? devEUI,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Update updates the device matching the given DevEUI.
  ///@param device.devEUI Device EUI (HEX encoded).
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/devices/{device.devEUI}')
  Future<chopper.Response> update(
      {@Path('device.devEUI')
      @required
          String? devEUI,
      @Body()
      @required
          ExtapiUpdateDeviceRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Activate (re)activates the device (only when ABP is set to true).
  ///@param deviceActivation.devEUI Device EUI (HEX encoded).
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/devices/{deviceActivation.devEUI}/activate')
  Future<chopper.Response> activate(
      {@Path('deviceActivation.devEUI')
      @required
          String? devEUI,
      @Body()
      @required
          ExtapiActivateDeviceRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///CreateKeys creates the given device-keys.
  ///@param deviceKeys.devEUI Device EUI (HEX encoded).
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/devices/{deviceKeys.devEUI}/keys')
  Future<chopper.Response> createKeys(
      {@Path('deviceKeys.devEUI')
      @required
          String? devEUI,
      @Body()
      @required
          ExtapiCreateDeviceKeysRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///UpdateKeys updates the device-keys.
  ///@param deviceKeys.devEUI Device EUI (HEX encoded).
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/devices/{deviceKeys.devEUI}/keys')
  Future<chopper.Response> updateKeys(
      {@Path('deviceKeys.devEUI')
      @required
          String? devEUI,
      @Body()
      @required
          ExtapiUpdateDeviceKeysRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class DeviceQueueService extends ChopperService {
  static DeviceQueueService createService([ChopperClient? client]) {
    if (client != null) {
      return _$DeviceQueueService(client);
    }

    final newClient = ChopperClient(
      services: [_$DeviceQueueService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$DeviceQueueService(newClient);
  }

  ///Flush flushes the downlink device-queue.
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/devices/{devEUI}/queue')
  Future<chopper.Response> flush(
      {@Path('devEUI')
      @required
          String? devEUI,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///List lists the items in the device-queue.
  ///@param devEUI Device EUI (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/devices/{devEUI}/queue')
  Future<chopper.Response<ExtapiListDeviceQueueItemsResponse>> list(
      {@Path('devEUI')
      @required
          String? devEUI,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Enqueue adds the given item to the device-queue.
  ///@param deviceQueueItem.devEUI Device EUI (HEX encoded).
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/devices/{deviceQueueItem.devEUI}/queue')
  Future<chopper.Response<ExtapiEnqueueDeviceQueueItemResponse>> enqueue(
      {@Path('deviceQueueItem.devEUI')
      @required
          String? devEUI,
      @Body()
      @required
          ExtapiEnqueueDeviceQueueItemRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class DFIService extends ChopperService {
  static DFIService createService([ChopperClient? client]) {
    if (client != null) {
      return _$DFIService(client);
    }

    final newClient = ChopperClient(
      services: [_$DFIService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$DFIService(newClient);
  }

  ///AuthenticateUser authenticates user with given jwt, return necessary user info for DFI service
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/dfi/profile')
  Future<chopper.Response<ExtapiDFIAuthenticateUserResponse>> authenticateUser(
      {@Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///TopUp allows user to top up DFI margin wallet from DD wallet/supernode wallet
  ///@param organizationID returned after call of authenticate user request, represent user's DD wallet.
  ///@param amount the amount that user wants to top up margin wallet from DD wallet.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/dfi/top-up')
  Future<chopper.Response<ExtapiTopUpResponse>> topUp(
      {@Query('organizationID')
          String? organizationID,
      @Query('amount')
          String? amount,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Withdraw allows user to withdraw from DFI margin wallet to DD wallet/supernode wallet
  ///@param organizationID
  ///@param amount
  ///@param DFIPoolBalance
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/dfi/withdraw')
  Future<chopper.Response<ExtapiWithdrawResponse>> withdraw(
      {@Query('organizationID')
          String? organizationID,
      @Query('amount')
          String? amount,
      @Query('DFIPoolBalance')
          String? dFIPoolBalance,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class DHXServcieService extends ChopperService {
  static DHXServcieService createService([ChopperClient? client]) {
    if (client != null) {
      return _$DHXServcieService(client);
    }

    final newClient = ChopperClient(
      services: [_$DHXServcieService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$DHXServcieService(newClient);
  }

  ///Bond DHX to mine DHX
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/dhx-mining/bond')
  Future<chopper.Response<ExtapiDHXBondResponse>> dHXBond(
      {@Body()
      @required
          ExtapiDHXBondRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get info about bonded, cooling off and unbonding DHX
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/dhx-mining/bond-info')
  Future<chopper.Response<ExtapiDHXBondInfoResponse>> dHXBondInfo(
      {@Body()
      @required
          ExtapiDHXBondInfoRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Request to create a new council
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/dhx-mining/create-council')
  Future<chopper.Response<ExtapiDHXCreateCouncilResponse>> dHXCreateCouncil(
      {@Body()
      @required
          ExtapiDHXCreateCouncilRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Request to lockdrop for DHX pre-mining
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/dhx-mining/create-stake')
  Future<chopper.Response<ExtapiDHXCreateStakeResponse>> dHXCreateStake(
      {@Body()
      @required
          ExtapiDHXCreateStakeRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///DHXTotalMining returns total amount of DHX mined by the org
  ///@param orgId organization id for which the total should be returned.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/dhx-mining/dhx-total-mined')
  Future<chopper.Response<ExtapiDHXTotalMiningResponse>> dHXTotalMining(
      {@Query('orgId')
          String? orgId,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///DHXEstimateMining estimates organization's mining based on lockdrops, bonded DHX and number of gateways
  ///@param orgId id of the organization for which estimates should be calculated.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/dhx-mining/estimate')
  Future<chopper.Response<ExtapiDHXEstimateMiningResponse>> dHXEstimateMining(
      {@Query('orgId')
          String? orgId,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Return info about DHX mining during the specified period
  ///@param orgId organization for which the history is returned.
  ///@param from the first day of the period.
  ///@param till the last day of the period.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/dhx-mining/history')
  Future<chopper.Response<ExtapiDHXMiningHistoryResponse>> dHXMiningHistory(
      {@Query('orgId')
          String? orgId,
      @Query('from')
          String? from,
      @Query('till')
          String? till,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Return info about the last paid day of DHX mining
  ///@param orgId organization id. If specified return details for the given organization and the council it chairs.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/dhx-mining/last-mining')
  Future<chopper.Response<ExtapiDHXGetLastMiningResponse>> dHXGetLastMining(
      {@Query('orgId')
          String? orgId,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///List all existing councils
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/dhx-mining/list-councils')
  Future<chopper.Response<ExtapiDHXListCouncilsResponse>> dHXListCouncils(
      {@Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///List all dhx stakes for the organization
  ///@param chairOrgId if not 0 then return stakes for the council chaired by the specified org. Only the council chair should be able to request this.
  ///@param organizationId if not 0 then return stakes of the given organization. Only the org user should be able to request this.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/dhx-mining/list-stakes')
  Future<chopper.Response<ExtapiDHXListStakesResponse>> dHXListStakes(
      {@Query('chairOrgId')
          String? chairOrgId,
      @Query('organizationId')
          String? organizationId,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///MXCLockdropsTotal returns total amount of MXC locked for DHX mining
  ///@param orgId organization id for which the total amount of locked MXC should be returned.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/dhx-mining/mxc-locked-total')
  Future<chopper.Response<ExtapiMXCLockdropsTotalResponse>> mXCLockdropsTotal(
      {@Query('orgId')
          String? orgId,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Unbond bonded DHX
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/dhx-mining/unbond')
  Future<chopper.Response<ExtapiDHXUnbondResponse>> dHXUnbond(
      {@Body()
      @required
          ExtapiDHXUnbondRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class GatewayProfileService extends ChopperService {
  static GatewayProfileService createService([ChopperClient? client]) {
    if (client != null) {
      return _$GatewayProfileService(client);
    }

    final newClient = ChopperClient(
      services: [_$GatewayProfileService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$GatewayProfileService(newClient);
  }

  ///List returns the existing gateway-profiles.
  ///@param limit Max number of items to return.
  ///@param offset Offset in the result-set (for pagination).
  ///@param networkServerID Network-server ID to filter on (optional).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateway-profiles')
  Future<chopper.Response<ExtapiListGatewayProfilesResponse>> list(
      {@Query('limit')
          String? limit,
      @Query('offset')
          String? offset,
      @Query('networkServerID')
          String? networkServerID,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Create creates the given gateway-profile.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/gateway-profiles')
  Future<chopper.Response<ExtapiCreateGatewayProfileResponse>> create(
      {@Body()
      @required
          ExtapiCreateGatewayProfileRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Update updates the given gateway-profile.
  ///@param gatewayProfile.id Gateway-profile ID (UUID string).
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/gateway-profiles/{gatewayProfile.id}')
  Future<chopper.Response> update(
      {@Path('gatewayProfile.id')
      @required
          String? id,
      @Body()
      @required
          ExtapiUpdateGatewayProfileRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Delete deletes the gateway-profile matching the given id.
  ///@param id Gateway-profile id (UUID string).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/gateway-profiles/{id}')
  Future<chopper.Response> delete(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get returns the gateway-profile matching the given id.
  ///@param id Gateway-profile ID (UUID string).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateway-profiles/{id}')
  Future<chopper.Response<ExtapiGetGatewayProfileResponse>> get(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class GatewayService extends ChopperService {
  static GatewayService createService([ChopperClient? client]) {
    if (client != null) {
      return _$GatewayService(client);
    }

    final newClient = ChopperClient(
      services: [_$GatewayService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$GatewayService(newClient);
  }

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/gateway/update-firmware')
  Future<chopper.Response<ExtapiManualTriggerUpdateFirmwareResponse>>
      manualTriggerUpdateFirmware(
          {@Body()
          @required
              ExtapiManualTriggerUpdateFirmwareRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///List lists the gateways.
  ///@param organizationID ID of the organization for which to filter on, when left blank the response will return all gateways to which the user has access to.
  ///@param search Search on name or gateway MAC (optional).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateways')
  Future<chopper.Response<ExtapiListGatewayResponse>> list(
      {@Query('organizationID')
          String? organizationID,
      @Query('search')
          String? search,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Create creates the given gateway.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/gateways')
  Future<chopper.Response> create(
      {@Body()
      @required
          ExtapiCreateGatewayRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///ListLocations lists the gateways locations.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateways-loc')
  Future<chopper.Response<ExtapiListGatewayLocationsResponse>> listLocations(
      {@Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///ListCells lists all the cells with gateways and the numbers of gateways
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateways/cells/list')
  Future<chopper.Response<ExtapiListCellsResponse>> listCells(
      {@Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/gateways/default-config/add')
  Future<chopper.Response<ExtapiInsertNewDefaultGatewayConfigResponse>>
      insertNewDefaultGatewayConfig(
          {@Body()
          @required
              ExtapiInsertNewDefaultGatewayConfigRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/gateways/default-config/batch-reset')
  Future<chopper.Response<ExtapiBatchResetDefaultGatewatConfigResponse>>
      batchResetDefaultGatewatConfig(
          {@Body()
          @required
              ExtapiBatchResetDefaultGatewatConfigRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param model
  ///@param region
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateways/default-config/get')
  Future<chopper.Response<ExtapiGetDefaultGatewayConfigResponse>>
      getDefaultGatewayConfig(
          {@Query('model')
              String? model,
          @Query('region')
              String? region,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/gateways/default-config/reset')
  Future<chopper.Response<ExtapiResetDefaultGatewatConfigByIDResponse>>
      resetDefaultGatewatConfigByID(
          {@Body()
          @required
              ExtapiResetDefaultGatewatConfigByIDRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/gateways/default-config/update')
  Future<chopper.Response<ExtapiUpdateDefaultGatewayConfigResponse>>
      updateDefaultGatewayConfig(
          {@Body()
          @required
              ExtapiUpdateDefaultGatewayConfigRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param gatewayId
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateways/getconfig/{gatewayId}')
  Future<chopper.Response<ExtapiGetGwConfigResponse>> getGwConfig(
      {@Path('gatewayId')
      @required
          String? gatewayId,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param gatewayId
  ///@param sn
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateways/getpassword/{gatewayId}')
  Future<chopper.Response<ExtapiGetGwPwdResponse>> getGwPwd(
      {@Path('gatewayId')
      @required
          String? gatewayId,
      @Query('sn')
          String? sn,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/gateways/register')
  Future<chopper.Response<ExtapiRegisterResponse>> register(
      {@Body()
      @required
          ExtapiRegisterRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param gatewayId
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/gateways/set-auto-update/{gatewayId}')
  Future<chopper.Response<ExtapiSetAutoUpdateFirmwareResponse>>
      setAutoUpdateFirmware(
          {@Path('gatewayId')
          @required
              String? gatewayId,
          @Body()
          @required
              ExtapiSetAutoUpdateFirmwareRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param gatewayId
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/gateways/updateconfig/{gatewayId}')
  Future<chopper.Response<ExtapiUpdateGwConfigResponse>> updateGwConfig(
      {@Path('gatewayId')
      @required
          String? gatewayId,
      @Body()
      @required
          ExtapiUpdateGwConfigRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Update updates the gateway matching the given mac address.
  ///@param gateway.id Gateway ID (HEX encoded).
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/gateways/{gateway.id}')
  Future<chopper.Response> update(
      {@Path('gateway.id')
      @required
          String? id,
      @Body()
      @required
          ExtapiUpdateGatewayRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///StreamFrameLogs streams the uplink and downlink frame-logs for the given gateway ID. Notes:   * These are the raw LoRaWAN frames and this endpoint is intended for debugging only.   * This endpoint does not work from a web-browser.
  ///@param gatewayID Gateway ID (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateways/{gatewayID}/frames')
  Future<chopper.Response<ApiGatewaysGatewayIDFramesGet$Response>>
      streamFrameLogs(
          {@Path('gatewayID')
          @required
              String? gatewayID,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///GetLastPing returns the last emitted ping and gateways receiving this ping.
  ///@param gatewayID Gateway ID (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateways/{gatewayID}/pings/last')
  Future<chopper.Response<ExtapiGetLastPingResponse>> getLastPing(
      {@Path('gatewayID')
      @required
          String? gatewayID,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///GetStats lists the gateway stats given the query parameters.
  ///@param gatewayID Gateway ID (HEX encoded).
  ///@param interval Aggregation interval.  One of "second", "minute", "hour", "day", "week", "month", "quarter", "year".  Case insensitive.
  ///@param startTimestamp Timestamp to start from.
  ///@param endTimestamp Timestamp until to get from.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateways/{gatewayID}/stats')
  Future<chopper.Response<ExtapiGetGatewayStatsResponse>> getStats(
      {@Path('gatewayID')
      @required
          String? gatewayID,
      @Query('interval')
          String? interval,
      @Query('startTimestamp')
          String? startTimestamp,
      @Query('endTimestamp')
          String? endTimestamp,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Delete deletes the gateway matching the given mac address.
  ///@param id Gateway ID (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/gateways/{id}')
  Future<chopper.Response> delete(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get returns the gateway for the requested mac address.
  ///@param id Gateway ID (HEX encoded).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/gateways/{id}')
  Future<chopper.Response<ExtapiGetGatewayResponse>> get(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///List lists the gateways.
  ///@param organizationID ID of the organization for which to filter on, when left blank the response will return all gateways to which the user has access to.
  ///@param search Search on name or gateway MAC (optional).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/new-gateways')
  Future<chopper.Response<ExtapiListGatewayResponse>> listNewGateways(
      {@Query('organizationID')
          String? organizationID,
      @Query('search')
          String? search,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class InternalService extends ChopperService {
  static InternalService createService([ChopperClient? client]) {
    if (client != null) {
      return _$InternalService(client);
    }

    final newClient = ChopperClient(
      services: [_$InternalService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$InternalService(newClient);
  }

  ///Get the branding for the UI
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/internal/branding')
  Future<chopper.Response<ExtapiBrandingResponse>> branding(
      {@Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/confirm-password-reset')
  Future<chopper.Response<ExtapiPasswordResetResp>> confirmPasswordReset(
      {@Body()
      @required
          ExtapiConfirmPasswordResetReq? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Log the user in, returns API Token
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/login')
  Future<chopper.Response<ExtapiLoginResponse>> login(
      {@Body()
      @required
          ExtapiLoginRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Validate OTP, returns API Token
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/login-2fa')
  Future<chopper.Response> login2FA(
      {@Body()
      @required
          ExtapiLogin2FARequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Log the user out, invalidates user's API token
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/internal/logout')
  Future<chopper.Response<ExtapiLogoutResponse>> logout(
      {@Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get the current user's profile
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/internal/profile')
  Future<chopper.Response<ExtapiProfileResponse>> profile(
      {@Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/registration')
  Future<chopper.Response> registerUser(
      {@Body()
      @required
          ExtapiRegisterUserRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/registration-confirm')
  Future<chopper.Response<ExtapiConfirmRegistrationResponse>>
      confirmRegistration(
          {@Body()
          @required
              ExtapiConfirmRegistrationRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/registration-finish')
  Future<chopper.Response> finishRegistration(
      {@Body()
      @required
          ExtapiFinishRegistrationRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/request-password-reset')
  Future<chopper.Response<ExtapiPasswordResetResp>> requestPasswordReset(
      {@Body()
      @required
          ExtapiPasswordResetReq? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Perform a global search.
  ///@param search Search query.
  ///@param limit Max number of results to return.
  ///@param offset Offset offset of the result-set (for pagination).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/internal/search')
  Future<chopper.Response<ExtapiGlobalSearchResponse>> globalSearch(
      {@Query('search')
          String? search,
      @Query('limit')
          String? limit,
      @Query('offset')
          String? offset,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/totp-configuration')
  Future<chopper.Response<ExtapiGetTOTPConfigurationResponse>>
      getTOTPConfiguration(
          {@Body()
          @required
              ExtapiGetTOTPConfigurationRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/totp-disable')
  Future<chopper.Response<ExtapiTOTPStatusResponse>> disableTOTP(
      {@Body()
      @required
          ExtapiTOTPStatusRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/totp-enable')
  Future<chopper.Response<ExtapiTOTPStatusResponse>> enableTOTP(
      {@Body()
      @required
          ExtapiTOTPStatusRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/internal/totp-recovery-codes')
  Future<chopper.Response<ExtapiGetRecoveryCodesResponse>> getRecoveryCodes(
      {@Body()
      @required
          ExtapiGetRecoveryCodesRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/internal/totp-status')
  Future<chopper.Response<ExtapiTOTPStatusResponse>> getTOTPStatus(
      {@Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class MosquittoAuthService extends ChopperService {
  static MosquittoAuthService createService([ChopperClient? client]) {
    if (client != null) {
      return _$MosquittoAuthService(client);
    }

    final newClient = ChopperClient(
      services: [_$MosquittoAuthService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$MosquittoAuthService(newClient);
  }

  ///This will be called by mosquitto auth plugin JWT backend, request and response are also defined there
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/mosquitto-auth/acl-check')
  Future<chopper.Response<ExtapiCheckACLResponse>> checkACL(
      {@Body()
      @required
          ExtapiCheckACLRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///This will be called by mosquitto auth plugin JWT backend, request and response are also defined there
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/mosquitto-auth/get-user')
  Future<chopper.Response<ExtapiJWTAuthenticationResponse>> jWTAuthentication(
      {@Body()
      @required
          ExtapiJWTAuthenticationRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get JWT for mosquitto auth with given org id Only accessible for authenticated supernode user
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/mosquitto-auth/login')
  Future<chopper.Response<ExtapiGetJWTResponse>> getJWT(
      {@Body()
      @required
          ExtapiGetJWTRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///SendCommandToDevice takes device eui as request paramter, returns topics that can be used to send command to a specific device
  ///@param devEui
  ///@param organizationId
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/mosquitto-auth/send-command')
  Future<chopper.Response<ExtapiSendCommandToDeviceResponse>>
      sendCommandToDevice(
          {@Query('devEui')
              String? devEui,
          @Query('organizationId')
              String? organizationId,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///SubsribeApplication takes application id as request parameter, returns topics that can be used to subscribe to all devices' events under same application
  ///@param applicationId
  ///@param organizationId
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/mosquitto-auth/subscribe-application-events')
  Future<chopper.Response<ExtapiSubsribeApplicationEventsResponse>>
      subsribeApplicationEvents(
          {@Query('applicationId')
              String? applicationId,
          @Query('organizationId')
              String? organizationId,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///SubsribeDeviceEvents takes device eui as request parameter, returns topis that can be used to subscribe to all device events or one specific event
  ///@param devEui
  ///@param organizationId
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/mosquitto-auth/subscribe-device-events')
  Future<chopper.Response<ExtapiSubsribeDeviceEventsResponse>>
      subsribeDeviceEvents(
          {@Query('devEui')
              String? devEui,
          @Query('organizationId')
              String? organizationId,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class NetworkServerService extends ChopperService {
  static NetworkServerService createService([ChopperClient? client]) {
    if (client != null) {
      return _$NetworkServerService(client);
    }

    final newClient = ChopperClient(
      services: [_$NetworkServerService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$NetworkServerService(newClient);
  }

  ///List lists the available network-servers.
  ///@param limit Max number of items to return.
  ///@param offset Offset in the result-set (for pagination).
  ///@param organizationID Organization id to filter on.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/network-servers')
  Future<chopper.Response<ExtapiListNetworkServerResponse>> list(
      {@Query('limit')
          String? limit,
      @Query('offset')
          String? offset,
      @Query('organizationID')
          String? organizationID,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Create creates the given network-server.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/network-servers')
  Future<chopper.Response<ExtapiCreateNetworkServerResponse>> create(
      {@Body()
      @required
          ExtapiCreateNetworkServerRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Delete deletes the network-server matching the given id.
  ///@param id Network-server ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/network-servers/{id}')
  Future<chopper.Response> delete(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get returns the network-server matching the given id.
  ///@param id Network-server ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/network-servers/{id}')
  Future<chopper.Response<ExtapiGetNetworkServerResponse>> get(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Update updates the given network-server.
  ///@param networkServer.id Network-server ID.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/network-servers/{networkServer.id}')
  Future<chopper.Response> update(
      {@Path('networkServer.id')
      @required
          String? id,
      @Body()
      @required
          ExtapiUpdateNetworkServerRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class OrganizationService extends ChopperService {
  static OrganizationService createService([ChopperClient? client]) {
    if (client != null) {
      return _$OrganizationService(client);
    }

    final newClient = ChopperClient(
      services: [_$OrganizationService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$OrganizationService(newClient);
  }

  ///Get organization list.
  ///@param limit Max number of organizations to return in the result-set.
  ///@param offset Offset in the result-set (for pagination).
  ///@param search When provided, the given string will be used to search on displayName.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/organizations')
  Future<chopper.Response<ExtapiListOrganizationResponse>> list(
      {@Query('limit')
          String? limit,
      @Query('offset')
          String? offset,
      @Query('search')
          String? search,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Create a new organization.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/organizations')
  Future<chopper.Response<ExtapiCreateOrganizationResponse>> create(
      {@Body()
      @required
          ExtapiCreateOrganizationRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Delete an organization.
  ///@param id Organization ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/organizations/{id}')
  Future<chopper.Response> delete(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get data for a particular organization.
  ///@param id Organization ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/organizations/{id}')
  Future<chopper.Response<ExtapiGetOrganizationResponse>> get(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Update an existing organization.
  ///@param organization.id Organization ID.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/organizations/{organization.id}')
  Future<chopper.Response> update(
      {@Path('organization.id')
      @required
          String? id,
      @Body()
      @required
          ExtapiUpdateOrganizationRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get organization's user list.
  ///@param organizationID Organization ID.
  ///@param limit Max number of users to return in the result-set.
  ///@param offset Offset in the result-set (for pagination).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/organizations/{organizationID}/users')
  Future<chopper.Response<ExtapiListOrganizationUsersResponse>> listUsers(
      {@Path('organizationID')
      @required
          String? organizationID,
      @Query('limit')
          int? limit,
      @Query('offset')
          int? offset,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Delete a user from an organization.
  ///@param organizationID Organization ID.
  ///@param userID User ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/organizations/{organizationID}/users/{userID}')
  Future<chopper.Response> deleteUser(
      {@Path('organizationID')
      @required
          String? organizationID,
      @Path('userID')
      @required
          String? userID,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get data for a particular organization user.
  ///@param organizationID Organization ID.
  ///@param userID User ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/organizations/{organizationID}/users/{userID}')
  Future<chopper.Response<ExtapiGetOrganizationUserResponse>> getUser(
      {@Path('organizationID')
      @required
          String? organizationID,
      @Path('userID')
      @required
          String? userID,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Add a new user to an organization.
  ///@param organizationUser.organizationID Organization ID.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/organizations/{organizationUser.organizationID}/users')
  Future<chopper.Response> addUser(
      {@Path('organizationUser.organizationID')
      @required
          String? organizationID,
      @Body()
      @required
          ExtapiAddOrganizationUserRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Update a user in an organization.
  ///@param organizationUser.organizationID Organization ID.
  ///@param organizationUser.userID User ID.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(
      path:
          '/api/organizations/{organizationUser.organizationID}/users/{organizationUser.userID}')
  Future<chopper.Response> updateUser(
      {@Path('organizationUser.organizationID')
      @required
          String? organizationID,
      @Path('organizationUser.userID')
      @required
          String? userID,
      @Body()
      @required
          ExtapiUpdateOrganizationUserRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class ReportService extends ChopperService {
  static ReportService createService([ChopperClient? client]) {
    if (client != null) {
      return _$ReportService(client);
    }

    final newClient = ChopperClient(
      services: [_$ReportService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$ReportService(newClient);
  }

  ///Request to download miningReport in csv format filtered by date
  ///@param organizationId
  ///@param currency accept string array for example: ETH_MXC or ETH_MXC\nDHX or DHX.
  ///@param fiatCurrency
  ///@param start
  ///@param end
  ///@param decimals
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/report/mining-income/csv')
  Future<chopper.Response<ApiReportMiningIncomeCsvGet$Response>>
      miningReportCSV(
          {@Query('organizationId')
              String? organizationId,
          @Query('currency')
              List<String>? currency,
          @Query('fiatCurrency')
              String? fiatCurrency,
          @Query('start')
              String? start,
          @Query('end')
              String? end,
          @Query('decimals')
              int? decimals,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///Request to download miningReport in pdf filtered by date
  ///@param organizationId
  ///@param currency accept string array for example: ETH_MXC or ETH_MXC\nDHX or DHX.
  ///@param fiatCurrency
  ///@param start
  ///@param end
  ///@param decimals
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/report/mining-income/pdf')
  Future<chopper.Response<ApiReportMiningIncomePdfGet$Response>>
      miningReportPDF(
          {@Query('organizationId')
              String? organizationId,
          @Query('currency')
              List<String>? currency,
          @Query('fiatCurrency')
              String? fiatCurrency,
          @Query('start')
              String? start,
          @Query('end')
              String? end,
          @Query('decimals')
              int? decimals,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///Get support fiat currency list
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/report/supported-fiat-currencies')
  Future<chopper.Response<ExtapiGetFiatCurrencyListResponse>>
      getFiatCurrencyList(
          {@Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class ServerInfoService extends ChopperService {
  static ServerInfoService createService([ChopperClient? client]) {
    if (client != null) {
      return _$ServerInfoService(client);
    }

    final newClient = ChopperClient(
      services: [_$ServerInfoService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$ServerInfoService(newClient);
  }

  ///get version
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/server-info/appserver-version')
  Future<chopper.Response<ExtapiGetAppserverVersionResponse>>
      getAppserverVersion(
          {@Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/server-info/mxprotocol-server-version')
  Future<chopper.Response<ExtapiGetMxprotocolServerVersionResponse>>
      getMxprotocolServerVersion(
          {@Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/server-info/server-region')
  Future<chopper.Response<ExtapiGetServerRegionResponse>> getServerRegion(
      {@Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class ServiceProfileService extends ChopperService {
  static ServiceProfileService createService([ChopperClient? client]) {
    if (client != null) {
      return _$ServiceProfileService(client);
    }

    final newClient = ChopperClient(
      services: [_$ServiceProfileService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$ServiceProfileService(newClient);
  }

  ///List lists the available service-profiles.
  ///@param limit Max number of items to return.
  ///@param offset Offset in the result-set (for pagination).
  ///@param organizationID Organization id to filter on.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/service-profiles')
  Future<chopper.Response<ExtapiListServiceProfileResponse>> list(
      {@Query('limit')
          String? limit,
      @Query('offset')
          String? offset,
      @Query('organizationID')
          String? organizationID,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Create creates the given service-profile.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/service-profiles')
  Future<chopper.Response<ExtapiCreateServiceProfileResponse>> create(
      {@Body()
      @required
          ExtapiCreateServiceProfileRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Delete deletes the service-profile matching the given id.
  ///@param id Service-profile ID (UUID string).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/service-profiles/{id}')
  Future<chopper.Response> delete(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get returns the service-profile matching the given id.
  ///@param id Service-profile ID (UUID string).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/service-profiles/{id}')
  Future<chopper.Response<ExtapiGetServiceProfileResponse>> get(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Update updates the given serviceprofile.
  ///@param serviceProfile.id Service-profile ID (UUID string). This will be automatically set on create.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/service-profiles/{serviceProfile.id}')
  Future<chopper.Response> update(
      {@Path('serviceProfile.id')
      @required
          String? id,
      @Body()
      @required
          ExtapiUpdateServiceProfileRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class ShopifyIntegrationService extends ChopperService {
  static ShopifyIntegrationService createService([ChopperClient? client]) {
    if (client != null) {
      return _$ShopifyIntegrationService(client);
    }

    final newClient = ChopperClient(
      services: [_$ShopifyIntegrationService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$ShopifyIntegrationService(newClient);
  }

  ///GetOrdersByUser returns a list of shopify orders filtered by given email, this API is only open for global admin user
  ///@param email user's email address for supernode account.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/shopify-integration/orders')
  Future<chopper.Response<ExtapiGetOrdersByUserResponse>> getOrdersByUser(
      {@Query('email')
          String? email,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class StakingService extends ChopperService {
  static StakingService createService([ChopperClient? client]) {
    if (client != null) {
      return _$StakingService(client);
    }

    final newClient = ChopperClient(
      services: [_$StakingService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$StakingService(newClient);
  }

  ///Get information about staking percentage and boosts for lockin stake
  ///@param currency int64 org_id = 1;.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/staking/staking_percentage')
  Future<chopper.Response<ExtapiStakingPercentageResponse>>
      getStakingPercentage(
          {@Query('currency')
              String? currency,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///Get list of active stakes
  ///@param orgId
  ///@param currency
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/staking/{orgId}/activestakes')
  Future<chopper.Response<ExtapiGetActiveStakesResponse>> getActiveStakes(
      {@Path('orgId')
      @required
          String? orgId,
      @Query('currency')
          String? currency,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param orgId
  ///@param currency
  ///@param from
  ///@param till
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/staking/{orgId}/history')
  Future<chopper.Response<ExtapiStakingHistoryResponse>> getStakingHistory(
      {@Path('orgId')
      @required
          String? orgId,
      @Query('currency')
          String? currency,
      @Query('from')
          String? from,
      @Query('till')
          String? till,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param orgId
  ///@param currency
  ///@param from
  ///@param till
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/staking/{orgId}/revenue')
  Future<chopper.Response<ExtapiStakingRevenueResponse>> getStakingRevenue(
      {@Path('orgId')
      @required
          String? orgId,
      @Query('currency')
          String? currency,
      @Query('from')
          String? from,
      @Query('till')
          String? till,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Make new stake
  ///@param orgId
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/staking/{orgId}/stake')
  Future<chopper.Response<ExtapiStakeResponse>> stake(
      {@Path('orgId')
      @required
          String? orgId,
      @Body()
      @required
          ExtapiStakeRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Returns info about the stake, including all the revenues
  ///@param orgId organization id that owns the stake
  ///@param stakeId the stake ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/staking/{orgId}/stake-info')
  Future<chopper.Response<ExtapiStakeInfoResponse>> stakeInfo(
      {@Path('orgId')
      @required
          String? orgId,
      @Query('stakeId')
          String? stakeId,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Returns the total amount staked by the organization
  ///@param orgId
  ///@param currency
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/staking/{orgId}/staked-total')
  Future<chopper.Response<ExtapiStakingTotalsResponse>> getStakingTotals(
      {@Path('orgId')
      @required
          String? orgId,
      @Query('currency')
          String? currency,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get list of all stakes for the organization
  ///@param orgId
  ///@param currency
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/staking/{orgId}/stakes')
  Future<chopper.Response<ExtapiGetStakesResponse>> getStakes(
      {@Path('orgId')
      @required
          String? orgId,
      @Query('currency')
          String? currency,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Unstake existing stake
  ///@param orgId
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/staking/{orgId}/unstake')
  Future<chopper.Response<ExtapiUnstakeResponse>> unstake(
      {@Path('orgId')
      @required
          String? orgId,
      @Body()
      @required
          ExtapiUnstakeRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class SupportService extends ChopperService {
  static SupportService createService([ChopperClient? client]) {
    if (client != null) {
      return _$SupportService(client);
    }

    final newClient = ChopperClient(
      services: [_$SupportService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$SupportService(newClient);
  }

  ///ListUserActionsByEmail returns actions taken correspondingly to the given email, this can only be called by support user or global admin user
  ///@param email
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/support/actions/list-by-email')
  Future<chopper.Response<ExtapiListUserActionsByEmailResponse>>
      listUserActionsByEmail(
          {@Query('email')
              String? email,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///ListUserActions returns list of user actions where user can be either the object or the operator
  ///@param userID
  ///@param from
  ///@param to
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/support/actions/list-by-id')
  Future<chopper.Response<ExtapiListUserActionsResponse>> listUserActions(
      {@Query('userID')
          String? userID,
      @Query('from')
          String? from,
      @Query('to')
          String? to,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///GetRequestsForSupportPermission returns a list of support permission requests, only for super admin
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/support/list-permission-requests')
  Future<chopper.Response<ExtapiGetRequestsForSupportPermissionResponse>>
      getRequestsForSupportPermission(
          {@Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///RegulateIllegalGateway is used when user reports lost gateway or when gateway is used without fulfill payment, after verification of the case, support team can remove gateway from illegal user and temporarily lock it down in ps
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/support/regulate-illegal-gateway')
  Future<chopper.Response<ExtapiRegulateIllegalGatewayResponse>>
      regulateIllegalGateway(
          {@Body()
          @required
              ExtapiRegulateIllegalGatewayRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///RequestSupportPermission will send request to server for granting user support permission, request will remain pending until super admin accepts the request
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/support/send-permission-request')
  Future<chopper.Response<ExtapiRequestSupportPermissionResponse>>
      requestSupportPermission(
          {@Body()
          @required
              ExtapiRequestSupportPermissionRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///ModifyUserSupportPermission grants/revoke user support permission
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/support/set-permission')
  Future<chopper.Response<ExtapiModifyUserSupportPermissionResponse>>
      modifyUserSupportPermission(
          {@Body()
          @required
              ExtapiModifyUserSupportPermissionRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///ActivateUser will set inactive user to active state, operation done only by tech support user type
  ///@param userID
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/support/{userID}/activate')
  Future<chopper.Response<ExtapiActivateUserResponse>> activateUser(
      {@Path('userID')
      @required
          String? userID,
      @Body()
      @required
          ExtapiActivateUserRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///DeactivateUser will set active user to inactive state, operation done only by tech support user type
  ///@param userID
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/support/{userID}/deactivate')
  Future<chopper.Response<ExtapiDeactivateUserResponse>> deactivateUser(
      {@Path('userID')
      @required
          String? userID,
      @Body()
      @required
          ExtapiDeactivateUserRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///RecoverUserAccount is used to recover user's account to last normal state and re-grant access, note that after recover user's account, user must be warned to reset password and re-enable 2FA as soon as possible
  ///@param userID user ID for account that needs to be recovered
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/support/{userID}/recover-account')
  Future<chopper.Response<ExtapiRecoverUserAccountResponse>> recoverUserAccount(
      {@Path('userID')
      @required
          String? userID,
      @Body()
      @required
          ExtapiRecoverUserAccountRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Reset2FA can only be used when user lost their access to authenticator app and recovery code, after identification verification, support team can reset 2fa for user so one can re-enable again
  ///@param userID
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/support/{userID}/reset-2fa')
  Future<chopper.Response<ExtapiReset2FAResponse>> reset2FA(
      {@Path('userID')
      @required
          String? userID,
      @Body()
      @required
          ExtapiReset2FAReqeust? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///ResetPasswordResetLimit can only be used when user already used up their reset password limited times, after identification verification, support team can reset this limit for user so one can reset password again
  ///@param userID
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/support/{userID}/reset-pr-limit')
  Future<chopper.Response<ExtapiResetPasswordResetLimitResponse>>
      resetPasswordResetLimit(
          {@Path('userID')
          @required
              String? userID,
          @Body()
          @required
              ExtapiResetPasswordResetLimitRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class TopUpService extends ChopperService {
  static TopUpService createService([ChopperClient? client]) {
    if (client != null) {
      return _$TopUpService(client);
    }

    final newClient = ChopperClient(
      services: [_$TopUpService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$TopUpService(newClient);
  }

  ///
  ///@param orgId
  ///@param currency
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/top-up/account')
  Future<chopper.Response<ExtapiGetTopUpDestinationResponse>>
      getTopUpDestination(
          {@Query('orgId')
              String? orgId,
          @Query('currency')
              String? currency,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/top-up/history')
  Future<chopper.Response<ExtapiGetTopUpHistoryResponse>> getTopUpHistory(
      {@Body()
      @required
          ExtapiGetTopUpHistoryRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class UserService extends ChopperService {
  static UserService createService([ChopperClient? client]) {
    if (client != null) {
      return _$UserService(client);
    }

    final newClient = ChopperClient(
      services: [_$UserService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$UserService(newClient);
  }

  ///Get user list.
  ///@param limit Max number of user to return in the result-set.
  ///@param offset Offset in the result-set (for pagination).
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/users')
  Future<chopper.Response<ExtapiListUserResponse>> list(
      {@Query('limit')
          String? limit,
      @Query('offset')
          String? offset,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Create a new user.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/users')
  Future<chopper.Response<ExtapiCreateUserResponse>> create(
      {@Body()
      @required
          ExtapiCreateUserRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///ChangePassword changes a password.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/users/change-password')
  Future<chopper.Response<ExtapiChangePasswordResponse>> changePassword(
      {@Body()
      @required
          ExtapiChangePasswordRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Add a new email address
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/users/email-add')
  Future<chopper.Response> addEmail(
      {@Body()
      @required
          ExtapiAddEmailRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Verify email address
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/users/email-verify')
  Future<chopper.Response> verifyEmail(
      {@Body()
      @required
          ExtapiVerifyEmailRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param userEmail
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/users/email/{userEmail}')
  Future<chopper.Response<ExtapiGetUserEmailResponse>> getUserEmail(
      {@Path('userEmail')
      @required
          String? userEmail,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Delete a user.
  ///@param id User ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Delete(path: '/api/users/{id}')
  Future<chopper.Response> delete(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Get data for a particular user.
  ///@param id User ID.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/users/{id}')
  Future<chopper.Response<ExtapiGetUserResponse>> get(
      {@Path('id')
      @required
          String? id,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///Update an existing user.
  ///@param user.id User ID. Will be set automatically on create.
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/users/{user.id}')
  Future<chopper.Response<ExtapiUpdateUserResponse>> update(
      {@Path('user.id')
      @required
          String? id,
      @Body()
      @required
          ExtapiUpdateUserRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class WalletService extends ChopperService {
  static WalletService createService([ChopperClient? client]) {
    if (client != null) {
      return _$WalletService(client);
    }

    final newClient = ChopperClient(
      services: [_$WalletService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$WalletService(newClient);
  }

  ///
  ///@param userId
  ///@param orgId
  ///@param currency
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/wallet/balance')
  Future<chopper.Response<ExtapiGetWalletBalanceResponse>> getWalletBalance(
      {@Query('userId')
          String? userId,
      @Query('orgId')
          String? orgId,
      @Query('currency')
          String? currency,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param orgId organization_id.
  ///@param gatewayMac list of gateways for which the health should be returned. If empty, then health of all the gateways of the organization will be returned.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/wallet/mining_health')
  Future<chopper.Response<ExtapiGetGatewayMiningHealthResponse>>
      getGatewayMiningHealth(
          {@Query('orgId')
              String? orgId,
          @Query('gatewayMac')
              List<String>? gatewayMac,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param orgId
  ///@param currency
  ///@param from
  ///@param till
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/wallet/mining_income')
  Future<chopper.Response<ExtapiGetWalletMiningIncomeResponse>>
      getWalletMiningIncome(
          {@Query('orgId')
              String? orgId,
          @Query('currency')
              String? currency,
          @Query('from')
              String? from,
          @Query('till')
              String? till,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///return daily and total mining amounts for the given gateway and period of time
  ///@param gatewayMac MAC address of the gateway.
  ///@param orgId Organization ID.
  ///@param fromDate Return mining stats for the period starting at from_date and ending at till_date inclusive.
  ///@param tillDate
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/wallet/mining_income_gw')
  Future<chopper.Response<ExtapiGetGatewayMiningIncomeResponse>>
      getGatewayMiningIncome(
          {@Query('gatewayMac')
              String? gatewayMac,
          @Query('orgId')
              String? orgId,
          @Query('fromDate')
              String? fromDate,
          @Query('tillDate')
              String? tillDate,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param orgId
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/wallet/mining_info')
  Future<chopper.Response<ExtapiGetMiningInfoResponse>> getMiningInfo(
      {@Query('orgId')
          String? orgId,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param userId
  ///@param orgId
  ///@param mxcPrice
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/wallet/mxc_price')
  Future<chopper.Response<ExtapiGetMXCpriceResponse>> getMXCprice(
      {@Query('userId')
          String? userId,
      @Query('orgId')
          String? orgId,
      @Query('mxcPrice')
          String? mxcPrice,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/wallet/top-up-mining-fuel')
  Future<chopper.Response<ExtapiTopUpGatewayMiningFuelResponse>>
      topUpGatewayMiningFuel(
          {@Body()
          @required
              ExtapiTopUpGatewayMiningFuelRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param orgId organization id.
  ///@param currency currency.
  ///@param from period for which transactions should be returned.
  ///@param till
  ///@param paymentType if non-empty list of payment types is given only transactions of these types will be returned.
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/wallet/tx-history')
  Future<chopper.Response<ExtapiGetTransactionHistoryResponse>>
      getTransactionHistory(
          {@Query('orgId')
              String? orgId,
          @Query('currency')
              String? currency,
          @Query('from')
              String? from,
          @Query('till')
              String? till,
          @Query('paymentType')
              List<String>? paymentType,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/wallet/withdraw-mining-fuel')
  Future<chopper.Response<ExtapiWithdrawGatewayMiningFuelResponse>>
      withdrawGatewayMiningFuel(
          {@Body()
          @required
              ExtapiWithdrawGatewayMiningFuelRequest? body,
          @Header('Grpc-Metadata-X-OTP')
              String? grpcMetadataXOTP,
          @Header('Grpc-Metadata-Authorization')
              String? grpcMetadataAuthorization});

  ///
  ///@param orgId
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/wallet/{orgId}/downlink_price')
  Future<chopper.Response<ExtapiGetDownLinkPriceResponse>> getDlPrice(
      {@Path('orgId')
      @required
          String? orgId,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

@ChopperApi()
abstract class WithdrawService extends ChopperService {
  static WithdrawService createService([ChopperClient? client]) {
    if (client != null) {
      return _$WithdrawService(client);
    }

    final newClient = ChopperClient(
      services: [_$WithdrawService()],
      converter: chopper.JsonConverter(), /*baseUrl: YOUR_BASE_URL*/
    );
    return _$WithdrawService(newClient);
  }

  ///GetWithdrawFee data for current withdraw fee
  ///@param currency type of crypto currency.
  ///@param amount
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/withdraw/get-withdraw-fee')
  Future<chopper.Response<ExtapiGetWithdrawFeeResponse>> getWithdrawFee(
      {@Query('currency')
          String? currency,
      @Query('amount')
          String? amount,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param orgId
  ///@param currency
  ///@param from
  ///@param till
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Get(path: '/api/withdraw/history')
  Future<chopper.Response<ExtapiGetWithdrawHistoryResponse>> getWithdrawHistory(
      {@Query('orgId')
          String? orgId,
      @Query('currency')
          String? currency,
      @Query('from')
          String? from,
      @Query('till')
          String? till,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Put(path: '/api/withdraw/modify-withdraw-fee')
  Future<chopper.Response<ExtapiModifyWithdrawFeeResponse>> modifyWithdrawFee(
      {@Body()
      @required
          ExtapiModifyWithdrawFeeRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});

  ///after user clicks withdraw, send withdraw request to cobo directly
  ///@param body
  ///@param Grpc-Metadata-X-OTP OTP Code
  ///@param Grpc-Metadata-Authorization Auth Token

  @Post(path: '/api/withdraw/req')
  Future<chopper.Response<ExtapiGetWithdrawResponse>> getWithdraw(
      {@Body()
      @required
          ExtapiGetWithdrawRequest? body,
      @Header('Grpc-Metadata-X-OTP')
          String? grpcMetadataXOTP,
      @Header('Grpc-Metadata-Authorization')
          String? grpcMetadataAuthorization});
}

extension SupernodeSwaggerExtension on ChopperClient {
  ApplicationService get applicationService => getService<ApplicationService>();
  BTCMiningService get bTCMining => getService<BTCMiningService>();
  ExternalUserService get externalUserService =>
      getService<ExternalUserService>();
  DeviceProfileService get deviceProfileService =>
      getService<DeviceProfileService>();
  DeviceProvisioningService get deviceProvisioningService =>
      getService<DeviceProvisioningService>();
  DeviceService get deviceService => getService<DeviceService>();
  DeviceQueueService get deviceQueueService => getService<DeviceQueueService>();
  DFIService get dFIService => getService<DFIService>();
  DHXServcieService get dHXServcie => getService<DHXServcieService>();
  GatewayProfileService get gatewayProfileService =>
      getService<GatewayProfileService>();
  GatewayService get gatewayService => getService<GatewayService>();
  InternalService get internalService => getService<InternalService>();
  MosquittoAuthService get mosquittoAuthService =>
      getService<MosquittoAuthService>();
  NetworkServerService get networkServerService =>
      getService<NetworkServerService>();
  OrganizationService get organizationService =>
      getService<OrganizationService>();
  ReportService get reportService => getService<ReportService>();
  ServerInfoService get serverInfoService => getService<ServerInfoService>();
  ServiceProfileService get serviceProfileService =>
      getService<ServiceProfileService>();
  ShopifyIntegrationService get shopifyIntegration =>
      getService<ShopifyIntegrationService>();
  StakingService get stakingService => getService<StakingService>();
  SupportService get supportService => getService<SupportService>();
  TopUpService get topUpService => getService<TopUpService>();
  UserService get userService => getService<UserService>();
  WalletService get walletService => getService<WalletService>();
  WithdrawService get withdrawService => getService<WithdrawService>();
}

List<ChopperService> get supernodeServices => [
      ApplicationService.createService(),
      BTCMiningService.createService(),
      ExternalUserService.createService(),
      DeviceProfileService.createService(),
      DeviceProvisioningService.createService(),
      DeviceService.createService(),
      DeviceQueueService.createService(),
      DFIService.createService(),
      DHXServcieService.createService(),
      GatewayProfileService.createService(),
      GatewayService.createService(),
      InternalService.createService(),
      MosquittoAuthService.createService(),
      NetworkServerService.createService(),
      OrganizationService.createService(),
      ReportService.createService(),
      ServerInfoService.createService(),
      ServiceProfileService.createService(),
      ShopifyIntegrationService.createService(),
      StakingService.createService(),
      SupportService.createService(),
      TopUpService.createService(),
      UserService.createService(),
      WalletService.createService(),
      WithdrawService.createService(),
    ];

final Map<Type, Object Function(Map<String, dynamic>)>
    SupernodeJsonDecoderMappings = {
  CommonLocation: CommonLocation.fromJsonFactory,
  ExtapiActivateDeviceRequest: ExtapiActivateDeviceRequest.fromJsonFactory,
  ExtapiActivateUserRequest: ExtapiActivateUserRequest.fromJsonFactory,
  ExtapiActivateUserResponse: ExtapiActivateUserResponse.fromJsonFactory,
  ExtapiAddEmailRequest: ExtapiAddEmailRequest.fromJsonFactory,
  ExtapiAddOrganizationUserRequest:
      ExtapiAddOrganizationUserRequest.fromJsonFactory,
  ExtapiApplication: ExtapiApplication.fromJsonFactory,
  ExtapiApplicationListItem: ExtapiApplicationListItem.fromJsonFactory,
  ExtapiAuthenticateWeChatUserRequest:
      ExtapiAuthenticateWeChatUserRequest.fromJsonFactory,
  ExtapiAuthenticateWeChatUserResponse:
      ExtapiAuthenticateWeChatUserResponse.fromJsonFactory,
  ExtapiBTCAddLocksRequest: ExtapiBTCAddLocksRequest.fromJsonFactory,
  ExtapiBTCAddLocksResponse: ExtapiBTCAddLocksResponse.fromJsonFactory,
  ExtapiBTCListLocksResponse: ExtapiBTCListLocksResponse.fromJsonFactory,
  ExtapiBTCLock: ExtapiBTCLock.fromJsonFactory,
  ExtapiBTCMiningSessionResponse:
      ExtapiBTCMiningSessionResponse.fromJsonFactory,
  ExtapiBatchResetDefaultGatewatConfigRequest:
      ExtapiBatchResetDefaultGatewatConfigRequest.fromJsonFactory,
  ExtapiBatchResetDefaultGatewatConfigResponse:
      ExtapiBatchResetDefaultGatewatConfigResponse.fromJsonFactory,
  ExtapiBindExternalUserRequest: ExtapiBindExternalUserRequest.fromJsonFactory,
  ExtapiBindExternalUserResponse:
      ExtapiBindExternalUserResponse.fromJsonFactory,
  ExtapiBoost: ExtapiBoost.fromJsonFactory,
  ExtapiBrandingResponse: ExtapiBrandingResponse.fromJsonFactory,
  ExtapiCell: ExtapiCell.fromJsonFactory,
  ExtapiChangePasswordRequest: ExtapiChangePasswordRequest.fromJsonFactory,
  ExtapiChangePasswordResponse: ExtapiChangePasswordResponse.fromJsonFactory,
  ExtapiCheckACLRequest: ExtapiCheckACLRequest.fromJsonFactory,
  ExtapiCheckACLResponse: ExtapiCheckACLResponse.fromJsonFactory,
  ExtapiConfirmPasswordResetReq: ExtapiConfirmPasswordResetReq.fromJsonFactory,
  ExtapiConfirmRegistrationRequest:
      ExtapiConfirmRegistrationRequest.fromJsonFactory,
  ExtapiConfirmRegistrationResponse:
      ExtapiConfirmRegistrationResponse.fromJsonFactory,
  ExtapiConfirmShopifyEmailRequest:
      ExtapiConfirmShopifyEmailRequest.fromJsonFactory,
  ExtapiConfirmShopifyEmailResponse:
      ExtapiConfirmShopifyEmailResponse.fromJsonFactory,
  ExtapiCouncil: ExtapiCouncil.fromJsonFactory,
  ExtapiCreateApplicationRequest:
      ExtapiCreateApplicationRequest.fromJsonFactory,
  ExtapiCreateApplicationResponse:
      ExtapiCreateApplicationResponse.fromJsonFactory,
  ExtapiCreateDeviceKeysRequest: ExtapiCreateDeviceKeysRequest.fromJsonFactory,
  ExtapiCreateDeviceProfileRequest:
      ExtapiCreateDeviceProfileRequest.fromJsonFactory,
  ExtapiCreateDeviceProfileResponse:
      ExtapiCreateDeviceProfileResponse.fromJsonFactory,
  ExtapiCreateDeviceRequest: ExtapiCreateDeviceRequest.fromJsonFactory,
  ExtapiCreateGatewayProfileRequest:
      ExtapiCreateGatewayProfileRequest.fromJsonFactory,
  ExtapiCreateGatewayProfileResponse:
      ExtapiCreateGatewayProfileResponse.fromJsonFactory,
  ExtapiCreateGatewayRequest: ExtapiCreateGatewayRequest.fromJsonFactory,
  ExtapiCreateNetworkServerRequest:
      ExtapiCreateNetworkServerRequest.fromJsonFactory,
  ExtapiCreateNetworkServerResponse:
      ExtapiCreateNetworkServerResponse.fromJsonFactory,
  ExtapiCreateOrganizationRequest:
      ExtapiCreateOrganizationRequest.fromJsonFactory,
  ExtapiCreateOrganizationResponse:
      ExtapiCreateOrganizationResponse.fromJsonFactory,
  ExtapiCreateRequest: ExtapiCreateRequest.fromJsonFactory,
  ExtapiCreateResponse: ExtapiCreateResponse.fromJsonFactory,
  ExtapiCreateServiceProfileRequest:
      ExtapiCreateServiceProfileRequest.fromJsonFactory,
  ExtapiCreateServiceProfileResponse:
      ExtapiCreateServiceProfileResponse.fromJsonFactory,
  ExtapiCreateUserRequest: ExtapiCreateUserRequest.fromJsonFactory,
  ExtapiCreateUserResponse: ExtapiCreateUserResponse.fromJsonFactory,
  ExtapiDFIAuthenticateUserResponse:
      ExtapiDFIAuthenticateUserResponse.fromJsonFactory,
  ExtapiDHXBondInfoRequest: ExtapiDHXBondInfoRequest.fromJsonFactory,
  ExtapiDHXBondInfoResponse: ExtapiDHXBondInfoResponse.fromJsonFactory,
  ExtapiDHXBondRequest: ExtapiDHXBondRequest.fromJsonFactory,
  ExtapiDHXBondResponse: ExtapiDHXBondResponse.fromJsonFactory,
  ExtapiDHXCoolingOff: ExtapiDHXCoolingOff.fromJsonFactory,
  ExtapiDHXCreateCouncilRequest: ExtapiDHXCreateCouncilRequest.fromJsonFactory,
  ExtapiDHXCreateCouncilResponse:
      ExtapiDHXCreateCouncilResponse.fromJsonFactory,
  ExtapiDHXCreateStakeRequest: ExtapiDHXCreateStakeRequest.fromJsonFactory,
  ExtapiDHXCreateStakeResponse: ExtapiDHXCreateStakeResponse.fromJsonFactory,
  ExtapiDHXEstimateMiningResponse:
      ExtapiDHXEstimateMiningResponse.fromJsonFactory,
  ExtapiDHXGetLastMiningResponse:
      ExtapiDHXGetLastMiningResponse.fromJsonFactory,
  ExtapiDHXListCouncilsResponse: ExtapiDHXListCouncilsResponse.fromJsonFactory,
  ExtapiDHXListStakesResponse: ExtapiDHXListStakesResponse.fromJsonFactory,
  ExtapiDHXMining: ExtapiDHXMining.fromJsonFactory,
  ExtapiDHXMiningHistoryResponse:
      ExtapiDHXMiningHistoryResponse.fromJsonFactory,
  ExtapiDHXStake: ExtapiDHXStake.fromJsonFactory,
  ExtapiDHXTotalMiningResponse: ExtapiDHXTotalMiningResponse.fromJsonFactory,
  ExtapiDHXUnbondRequest: ExtapiDHXUnbondRequest.fromJsonFactory,
  ExtapiDHXUnbondResponse: ExtapiDHXUnbondResponse.fromJsonFactory,
  ExtapiDHXUnbonding: ExtapiDHXUnbonding.fromJsonFactory,
  ExtapiDeactivateUserRequest: ExtapiDeactivateUserRequest.fromJsonFactory,
  ExtapiDeactivateUserResponse: ExtapiDeactivateUserResponse.fromJsonFactory,
  ExtapiDevice: ExtapiDevice.fromJsonFactory,
  ExtapiDeviceActivation: ExtapiDeviceActivation.fromJsonFactory,
  ExtapiDeviceKeys: ExtapiDeviceKeys.fromJsonFactory,
  ExtapiDeviceListItem: ExtapiDeviceListItem.fromJsonFactory,
  ExtapiDeviceProfile: ExtapiDeviceProfile.fromJsonFactory,
  ExtapiDeviceProfileListItem: ExtapiDeviceProfileListItem.fromJsonFactory,
  ExtapiDeviceQueueItem: ExtapiDeviceQueueItem.fromJsonFactory,
  ExtapiDownlinkFrameLog: ExtapiDownlinkFrameLog.fromJsonFactory,
  ExtapiEnqueueDeviceQueueItemRequest:
      ExtapiEnqueueDeviceQueueItemRequest.fromJsonFactory,
  ExtapiEnqueueDeviceQueueItemResponse:
      ExtapiEnqueueDeviceQueueItemResponse.fromJsonFactory,
  ExtapiExternalUserAccount: ExtapiExternalUserAccount.fromJsonFactory,
  ExtapiFiatCurrency: ExtapiFiatCurrency.fromJsonFactory,
  ExtapiFinishRegistrationRequest:
      ExtapiFinishRegistrationRequest.fromJsonFactory,
  ExtapiGateway: ExtapiGateway.fromJsonFactory,
  ExtapiGatewayBoard: ExtapiGatewayBoard.fromJsonFactory,
  ExtapiGatewayListItem: ExtapiGatewayListItem.fromJsonFactory,
  ExtapiGatewayLocation: ExtapiGatewayLocation.fromJsonFactory,
  ExtapiGatewayLocationListItem: ExtapiGatewayLocationListItem.fromJsonFactory,
  ExtapiGatewayMiningFuelChange: ExtapiGatewayMiningFuelChange.fromJsonFactory,
  ExtapiGatewayMiningHealth: ExtapiGatewayMiningHealth.fromJsonFactory,
  ExtapiGatewayProfile: ExtapiGatewayProfile.fromJsonFactory,
  ExtapiGatewayProfileExtraChannel:
      ExtapiGatewayProfileExtraChannel.fromJsonFactory,
  ExtapiGatewayProfileListItem: ExtapiGatewayProfileListItem.fromJsonFactory,
  ExtapiGatewayStats: ExtapiGatewayStats.fromJsonFactory,
  ExtapiGetActiveStakesResponse: ExtapiGetActiveStakesResponse.fromJsonFactory,
  ExtapiGetApplicationResponse: ExtapiGetApplicationResponse.fromJsonFactory,
  ExtapiGetAppserverVersionResponse:
      ExtapiGetAppserverVersionResponse.fromJsonFactory,
  ExtapiGetDefaultGatewayConfigResponse:
      ExtapiGetDefaultGatewayConfigResponse.fromJsonFactory,
  ExtapiGetDeviceActivationResponse:
      ExtapiGetDeviceActivationResponse.fromJsonFactory,
  ExtapiGetDeviceKeysResponse: ExtapiGetDeviceKeysResponse.fromJsonFactory,
  ExtapiGetDeviceProfileResponse:
      ExtapiGetDeviceProfileResponse.fromJsonFactory,
  ExtapiGetDeviceResponse: ExtapiGetDeviceResponse.fromJsonFactory,
  ExtapiGetDownLinkPriceResponse:
      ExtapiGetDownLinkPriceResponse.fromJsonFactory,
  ExtapiGetFiatCurrencyListResponse:
      ExtapiGetFiatCurrencyListResponse.fromJsonFactory,
  ExtapiGetGatewayMiningHealthResponse:
      ExtapiGetGatewayMiningHealthResponse.fromJsonFactory,
  ExtapiGetGatewayMiningIncomeResponse:
      ExtapiGetGatewayMiningIncomeResponse.fromJsonFactory,
  ExtapiGetGatewayProfileResponse:
      ExtapiGetGatewayProfileResponse.fromJsonFactory,
  ExtapiGetGatewayResponse: ExtapiGetGatewayResponse.fromJsonFactory,
  ExtapiGetGatewayStatsResponse: ExtapiGetGatewayStatsResponse.fromJsonFactory,
  ExtapiGetGwConfigResponse: ExtapiGetGwConfigResponse.fromJsonFactory,
  ExtapiGetGwPwdResponse: ExtapiGetGwPwdResponse.fromJsonFactory,
  ExtapiGetJWTRequest: ExtapiGetJWTRequest.fromJsonFactory,
  ExtapiGetJWTResponse: ExtapiGetJWTResponse.fromJsonFactory,
  ExtapiGetLastPingResponse: ExtapiGetLastPingResponse.fromJsonFactory,
  ExtapiGetMXCpriceResponse: ExtapiGetMXCpriceResponse.fromJsonFactory,
  ExtapiGetMiningInfoResponse: ExtapiGetMiningInfoResponse.fromJsonFactory,
  ExtapiGetMxprotocolServerVersionResponse:
      ExtapiGetMxprotocolServerVersionResponse.fromJsonFactory,
  ExtapiGetNetworkServerResponse:
      ExtapiGetNetworkServerResponse.fromJsonFactory,
  ExtapiGetOrdersByUserResponse: ExtapiGetOrdersByUserResponse.fromJsonFactory,
  ExtapiGetOrganizationResponse: ExtapiGetOrganizationResponse.fromJsonFactory,
  ExtapiGetOrganizationUserResponse:
      ExtapiGetOrganizationUserResponse.fromJsonFactory,
  ExtapiGetRandomDevAddrResponse:
      ExtapiGetRandomDevAddrResponse.fromJsonFactory,
  ExtapiGetRecoveryCodesRequest: ExtapiGetRecoveryCodesRequest.fromJsonFactory,
  ExtapiGetRecoveryCodesResponse:
      ExtapiGetRecoveryCodesResponse.fromJsonFactory,
  ExtapiGetRequestsForSupportPermissionResponse:
      ExtapiGetRequestsForSupportPermissionResponse.fromJsonFactory,
  ExtapiGetServerRegionResponse: ExtapiGetServerRegionResponse.fromJsonFactory,
  ExtapiGetServiceProfileResponse:
      ExtapiGetServiceProfileResponse.fromJsonFactory,
  ExtapiGetStakesResponse: ExtapiGetStakesResponse.fromJsonFactory,
  ExtapiGetTOTPConfigurationRequest:
      ExtapiGetTOTPConfigurationRequest.fromJsonFactory,
  ExtapiGetTOTPConfigurationResponse:
      ExtapiGetTOTPConfigurationResponse.fromJsonFactory,
  ExtapiGetTopUpDestinationResponse:
      ExtapiGetTopUpDestinationResponse.fromJsonFactory,
  ExtapiGetTopUpHistoryRequest: ExtapiGetTopUpHistoryRequest.fromJsonFactory,
  ExtapiGetTopUpHistoryResponse: ExtapiGetTopUpHistoryResponse.fromJsonFactory,
  ExtapiGetTransactionHistoryResponse:
      ExtapiGetTransactionHistoryResponse.fromJsonFactory,
  ExtapiGetUserEmailResponse: ExtapiGetUserEmailResponse.fromJsonFactory,
  ExtapiGetUserResponse: ExtapiGetUserResponse.fromJsonFactory,
  ExtapiGetWalletBalanceResponse:
      ExtapiGetWalletBalanceResponse.fromJsonFactory,
  ExtapiGetWalletMiningIncomeResponse:
      ExtapiGetWalletMiningIncomeResponse.fromJsonFactory,
  ExtapiGetWithdrawFeeResponse: ExtapiGetWithdrawFeeResponse.fromJsonFactory,
  ExtapiGetWithdrawHistoryResponse:
      ExtapiGetWithdrawHistoryResponse.fromJsonFactory,
  ExtapiGetWithdrawRequest: ExtapiGetWithdrawRequest.fromJsonFactory,
  ExtapiGetWithdrawResponse: ExtapiGetWithdrawResponse.fromJsonFactory,
  ExtapiGlobalSearchResponse: ExtapiGlobalSearchResponse.fromJsonFactory,
  ExtapiGlobalSearchResult: ExtapiGlobalSearchResult.fromJsonFactory,
  ExtapiInsertNewDefaultGatewayConfigRequest:
      ExtapiInsertNewDefaultGatewayConfigRequest.fromJsonFactory,
  ExtapiInsertNewDefaultGatewayConfigResponse:
      ExtapiInsertNewDefaultGatewayConfigResponse.fromJsonFactory,
  ExtapiJWTAuthenticationRequest:
      ExtapiJWTAuthenticationRequest.fromJsonFactory,
  ExtapiJWTAuthenticationResponse:
      ExtapiJWTAuthenticationResponse.fromJsonFactory,
  ExtapiListApplicationResponse: ExtapiListApplicationResponse.fromJsonFactory,
  ExtapiListCellsResponse: ExtapiListCellsResponse.fromJsonFactory,
  ExtapiListDeviceProfileResponse:
      ExtapiListDeviceProfileResponse.fromJsonFactory,
  ExtapiListDeviceQueueItemsResponse:
      ExtapiListDeviceQueueItemsResponse.fromJsonFactory,
  ExtapiListDeviceResponse: ExtapiListDeviceResponse.fromJsonFactory,
  ExtapiListGatewayLocationsResponse:
      ExtapiListGatewayLocationsResponse.fromJsonFactory,
  ExtapiListGatewayProfilesResponse:
      ExtapiListGatewayProfilesResponse.fromJsonFactory,
  ExtapiListGatewayResponse: ExtapiListGatewayResponse.fromJsonFactory,
  ExtapiListNetworkServerResponse:
      ExtapiListNetworkServerResponse.fromJsonFactory,
  ExtapiListOrganizationResponse:
      ExtapiListOrganizationResponse.fromJsonFactory,
  ExtapiListOrganizationUsersResponse:
      ExtapiListOrganizationUsersResponse.fromJsonFactory,
  ExtapiListServiceProfileResponse:
      ExtapiListServiceProfileResponse.fromJsonFactory,
  ExtapiListUserActionsByEmailResponse:
      ExtapiListUserActionsByEmailResponse.fromJsonFactory,
  ExtapiListUserActionsResponse: ExtapiListUserActionsResponse.fromJsonFactory,
  ExtapiListUserResponse: ExtapiListUserResponse.fromJsonFactory,
  ExtapiLogin2FARequest: ExtapiLogin2FARequest.fromJsonFactory,
  ExtapiLoginRequest: ExtapiLoginRequest.fromJsonFactory,
  ExtapiLoginResponse: ExtapiLoginResponse.fromJsonFactory,
  ExtapiLogoutResponse: ExtapiLogoutResponse.fromJsonFactory,
  ExtapiMXCLockdropsTotalResponse:
      ExtapiMXCLockdropsTotalResponse.fromJsonFactory,
  ExtapiManualTriggerUpdateFirmwareRequest:
      ExtapiManualTriggerUpdateFirmwareRequest.fromJsonFactory,
  ExtapiManualTriggerUpdateFirmwareResponse:
      ExtapiManualTriggerUpdateFirmwareResponse.fromJsonFactory,
  ExtapiMiningData: ExtapiMiningData.fromJsonFactory,
  ExtapiMiningHealthAverage: ExtapiMiningHealthAverage.fromJsonFactory,
  ExtapiMiningReportResponse: ExtapiMiningReportResponse.fromJsonFactory,
  ExtapiMiningStats: ExtapiMiningStats.fromJsonFactory,
  ExtapiModifyUserSupportPermissionRequest:
      ExtapiModifyUserSupportPermissionRequest.fromJsonFactory,
  ExtapiModifyUserSupportPermissionResponse:
      ExtapiModifyUserSupportPermissionResponse.fromJsonFactory,
  ExtapiModifyWithdrawFeeRequest:
      ExtapiModifyWithdrawFeeRequest.fromJsonFactory,
  ExtapiModifyWithdrawFeeResponse:
      ExtapiModifyWithdrawFeeResponse.fromJsonFactory,
  ExtapiNetworkServer: ExtapiNetworkServer.fromJsonFactory,
  ExtapiNetworkServerListItem: ExtapiNetworkServerListItem.fromJsonFactory,
  ExtapiOrder: ExtapiOrder.fromJsonFactory,
  ExtapiOrganization: ExtapiOrganization.fromJsonFactory,
  ExtapiOrganizationLink: ExtapiOrganizationLink.fromJsonFactory,
  ExtapiOrganizationListItem: ExtapiOrganizationListItem.fromJsonFactory,
  ExtapiOrganizationUser: ExtapiOrganizationUser.fromJsonFactory,
  ExtapiOrganizationUserListItem:
      ExtapiOrganizationUserListItem.fromJsonFactory,
  ExtapiPasswordResetReq: ExtapiPasswordResetReq.fromJsonFactory,
  ExtapiPasswordResetResp: ExtapiPasswordResetResp.fromJsonFactory,
  ExtapiPingRX: ExtapiPingRX.fromJsonFactory,
  ExtapiProfileResponse: ExtapiProfileResponse.fromJsonFactory,
  ExtapiRecoverUserAccountRequest:
      ExtapiRecoverUserAccountRequest.fromJsonFactory,
  ExtapiRecoverUserAccountResponse:
      ExtapiRecoverUserAccountResponse.fromJsonFactory,
  ExtapiRegisterExternalUserRequest:
      ExtapiRegisterExternalUserRequest.fromJsonFactory,
  ExtapiRegisterExternalUserResponse:
      ExtapiRegisterExternalUserResponse.fromJsonFactory,
  ExtapiRegisterRequest: ExtapiRegisterRequest.fromJsonFactory,
  ExtapiRegisterResponse: ExtapiRegisterResponse.fromJsonFactory,
  ExtapiRegisterUserRequest: ExtapiRegisterUserRequest.fromJsonFactory,
  ExtapiRegulateIllegalGatewayRequest:
      ExtapiRegulateIllegalGatewayRequest.fromJsonFactory,
  ExtapiRegulateIllegalGatewayResponse:
      ExtapiRegulateIllegalGatewayResponse.fromJsonFactory,
  ExtapiRequestSupportPermissionRequest:
      ExtapiRequestSupportPermissionRequest.fromJsonFactory,
  ExtapiRequestSupportPermissionResponse:
      ExtapiRequestSupportPermissionResponse.fromJsonFactory,
  ExtapiReset2FAReqeust: ExtapiReset2FAReqeust.fromJsonFactory,
  ExtapiReset2FAResponse: ExtapiReset2FAResponse.fromJsonFactory,
  ExtapiResetDefaultGatewatConfigByIDRequest:
      ExtapiResetDefaultGatewatConfigByIDRequest.fromJsonFactory,
  ExtapiResetDefaultGatewatConfigByIDResponse:
      ExtapiResetDefaultGatewatConfigByIDResponse.fromJsonFactory,
  ExtapiResetPasswordResetLimitRequest:
      ExtapiResetPasswordResetLimitRequest.fromJsonFactory,
  ExtapiResetPasswordResetLimitResponse:
      ExtapiResetPasswordResetLimitResponse.fromJsonFactory,
  ExtapiSendCommandToDeviceResponse:
      ExtapiSendCommandToDeviceResponse.fromJsonFactory,
  ExtapiServiceProfile: ExtapiServiceProfile.fromJsonFactory,
  ExtapiServiceProfileListItem: ExtapiServiceProfileListItem.fromJsonFactory,
  ExtapiSetAutoUpdateFirmwareRequest:
      ExtapiSetAutoUpdateFirmwareRequest.fromJsonFactory,
  ExtapiSetAutoUpdateFirmwareResponse:
      ExtapiSetAutoUpdateFirmwareResponse.fromJsonFactory,
  ExtapiStake: ExtapiStake.fromJsonFactory,
  ExtapiStakeInfoResponse: ExtapiStakeInfoResponse.fromJsonFactory,
  ExtapiStakeRequest: ExtapiStakeRequest.fromJsonFactory,
  ExtapiStakeResponse: ExtapiStakeResponse.fromJsonFactory,
  ExtapiStakeRevenue: ExtapiStakeRevenue.fromJsonFactory,
  ExtapiStakingHistory: ExtapiStakingHistory.fromJsonFactory,
  ExtapiStakingHistoryResponse: ExtapiStakingHistoryResponse.fromJsonFactory,
  ExtapiStakingPercentageResponse:
      ExtapiStakingPercentageResponse.fromJsonFactory,
  ExtapiStakingRevenueResponse: ExtapiStakingRevenueResponse.fromJsonFactory,
  ExtapiStakingTotalsResponse: ExtapiStakingTotalsResponse.fromJsonFactory,
  ExtapiStreamDeviceEventLogsResponse:
      ExtapiStreamDeviceEventLogsResponse.fromJsonFactory,
  ExtapiStreamDeviceFrameLogsResponse:
      ExtapiStreamDeviceFrameLogsResponse.fromJsonFactory,
  ExtapiStreamGatewayFrameLogsResponse:
      ExtapiStreamGatewayFrameLogsResponse.fromJsonFactory,
  ExtapiSubsribeApplicationEventsResponse:
      ExtapiSubsribeApplicationEventsResponse.fromJsonFactory,
  ExtapiSubsribeDeviceEventsResponse:
      ExtapiSubsribeDeviceEventsResponse.fromJsonFactory,
  ExtapiSupportPermissionRequest:
      ExtapiSupportPermissionRequest.fromJsonFactory,
  ExtapiTOTPStatusRequest: ExtapiTOTPStatusRequest.fromJsonFactory,
  ExtapiTOTPStatusResponse: ExtapiTOTPStatusResponse.fromJsonFactory,
  ExtapiTopUpGatewayMiningFuelRequest:
      ExtapiTopUpGatewayMiningFuelRequest.fromJsonFactory,
  ExtapiTopUpGatewayMiningFuelResponse:
      ExtapiTopUpGatewayMiningFuelResponse.fromJsonFactory,
  ExtapiTopUpHistory: ExtapiTopUpHistory.fromJsonFactory,
  ExtapiTopUpResponse: ExtapiTopUpResponse.fromJsonFactory,
  ExtapiTransaction: ExtapiTransaction.fromJsonFactory,
  ExtapiUnbindExternalUserRequest:
      ExtapiUnbindExternalUserRequest.fromJsonFactory,
  ExtapiUnbindExternalUserResponse:
      ExtapiUnbindExternalUserResponse.fromJsonFactory,
  ExtapiUnstakeRequest: ExtapiUnstakeRequest.fromJsonFactory,
  ExtapiUnstakeResponse: ExtapiUnstakeResponse.fromJsonFactory,
  ExtapiUpdateApplicationRequest:
      ExtapiUpdateApplicationRequest.fromJsonFactory,
  ExtapiUpdateDefaultGatewayConfigRequest:
      ExtapiUpdateDefaultGatewayConfigRequest.fromJsonFactory,
  ExtapiUpdateDefaultGatewayConfigResponse:
      ExtapiUpdateDefaultGatewayConfigResponse.fromJsonFactory,
  ExtapiUpdateDeviceKeysRequest: ExtapiUpdateDeviceKeysRequest.fromJsonFactory,
  ExtapiUpdateDeviceProfileRequest:
      ExtapiUpdateDeviceProfileRequest.fromJsonFactory,
  ExtapiUpdateDeviceRequest: ExtapiUpdateDeviceRequest.fromJsonFactory,
  ExtapiUpdateGatewayProfileRequest:
      ExtapiUpdateGatewayProfileRequest.fromJsonFactory,
  ExtapiUpdateGatewayRequest: ExtapiUpdateGatewayRequest.fromJsonFactory,
  ExtapiUpdateGwConfigRequest: ExtapiUpdateGwConfigRequest.fromJsonFactory,
  ExtapiUpdateGwConfigResponse: ExtapiUpdateGwConfigResponse.fromJsonFactory,
  ExtapiUpdateNetworkServerRequest:
      ExtapiUpdateNetworkServerRequest.fromJsonFactory,
  ExtapiUpdateOrganizationRequest:
      ExtapiUpdateOrganizationRequest.fromJsonFactory,
  ExtapiUpdateOrganizationUserRequest:
      ExtapiUpdateOrganizationUserRequest.fromJsonFactory,
  ExtapiUpdateServiceProfileRequest:
      ExtapiUpdateServiceProfileRequest.fromJsonFactory,
  ExtapiUpdateUserRequest: ExtapiUpdateUserRequest.fromJsonFactory,
  ExtapiUpdateUserResponse: ExtapiUpdateUserResponse.fromJsonFactory,
  ExtapiUplinkFrameLog: ExtapiUplinkFrameLog.fromJsonFactory,
  ExtapiUser: ExtapiUser.fromJsonFactory,
  ExtapiUserAction: ExtapiUserAction.fromJsonFactory,
  ExtapiUserListItem: ExtapiUserListItem.fromJsonFactory,
  ExtapiUserOrganization: ExtapiUserOrganization.fromJsonFactory,
  ExtapiVerifyEmailRequest: ExtapiVerifyEmailRequest.fromJsonFactory,
  ExtapiVerifyShopifyEmailRequest:
      ExtapiVerifyShopifyEmailRequest.fromJsonFactory,
  ExtapiVerifyShopifyEmailResponse:
      ExtapiVerifyShopifyEmailResponse.fromJsonFactory,
  ExtapiWithdrawGatewayMiningFuelRequest:
      ExtapiWithdrawGatewayMiningFuelRequest.fromJsonFactory,
  ExtapiWithdrawGatewayMiningFuelResponse:
      ExtapiWithdrawGatewayMiningFuelResponse.fromJsonFactory,
  ExtapiWithdrawHistory: ExtapiWithdrawHistory.fromJsonFactory,
  ExtapiWithdrawResponse: ExtapiWithdrawResponse.fromJsonFactory,
  GwDelayTimingInfo: GwDelayTimingInfo.fromJsonFactory,
  GwDownlinkTXInfo: GwDownlinkTXInfo.fromJsonFactory,
  GwEncryptedFineTimestamp: GwEncryptedFineTimestamp.fromJsonFactory,
  GwFSKModulationInfo: GwFSKModulationInfo.fromJsonFactory,
  GwGPSEpochTimingInfo: GwGPSEpochTimingInfo.fromJsonFactory,
  GwImmediatelyTimingInfo: GwImmediatelyTimingInfo.fromJsonFactory,
  GwLRFHSSModulationInfo: GwLRFHSSModulationInfo.fromJsonFactory,
  GwLoRaModulationInfo: GwLoRaModulationInfo.fromJsonFactory,
  GwPlainFineTimestamp: GwPlainFineTimestamp.fromJsonFactory,
  GwUplinkRXInfo: GwUplinkRXInfo.fromJsonFactory,
  GwUplinkTXInfo: GwUplinkTXInfo.fromJsonFactory,
  ProtobufAny: ProtobufAny.fromJsonFactory,
  RuntimeError: RuntimeError.fromJsonFactory,
  RuntimeStreamError: RuntimeStreamError.fromJsonFactory,
  ApiDevicesDevEUIEventsGet$Response:
      ApiDevicesDevEUIEventsGet$Response.fromJsonFactory,
  ApiDevicesDevEUIFramesGet$Response:
      ApiDevicesDevEUIFramesGet$Response.fromJsonFactory,
  ApiGatewaysGatewayIDFramesGet$Response:
      ApiGatewaysGatewayIDFramesGet$Response.fromJsonFactory,
  ApiReportMiningIncomeCsvGet$Response:
      ApiReportMiningIncomeCsvGet$Response.fromJsonFactory,
  ApiReportMiningIncomePdfGet$Response:
      ApiReportMiningIncomePdfGet$Response.fromJsonFactory,
};

@JsonSerializable(explicitToJson: true)
class CommonLocation {
  CommonLocation({
    this.accuracy,
    this.altitude,
    this.latitude,
    this.longitude,
    this.source,
  });

  factory CommonLocation.fromJson(Map<String, dynamic> json) =>
      _$CommonLocationFromJson(json);

  @JsonKey(name: 'accuracy')
  final int? accuracy;
  @JsonKey(name: 'altitude')
  final double? altitude;
  @JsonKey(name: 'latitude')
  final double? latitude;
  @JsonKey(name: 'longitude')
  final double? longitude;
  @JsonKey(
      name: 'source',
      toJson: commonLocationSourceToJson,
      fromJson: commonLocationSourceFromJson)
  final enums.CommonLocationSource? source;
  static const fromJsonFactory = _$CommonLocationFromJson;
  static const toJsonFactory = _$CommonLocationToJson;
  Map<String, dynamic> toJson() => _$CommonLocationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonLocation &&
            (identical(other.accuracy, accuracy) ||
                const DeepCollectionEquality()
                    .equals(other.accuracy, accuracy)) &&
            (identical(other.altitude, altitude) ||
                const DeepCollectionEquality()
                    .equals(other.altitude, altitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)));
  }
}

extension $CommonLocationExtension on CommonLocation {
  CommonLocation copyWith(
      {int? accuracy,
      double? altitude,
      double? latitude,
      double? longitude,
      enums.CommonLocationSource? source}) {
    return CommonLocation(
        accuracy: accuracy ?? this.accuracy,
        altitude: altitude ?? this.altitude,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        source: source ?? this.source);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiActivateDeviceRequest {
  ExtapiActivateDeviceRequest({
    this.deviceActivation,
  });

  factory ExtapiActivateDeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiActivateDeviceRequestFromJson(json);

  @JsonKey(name: 'deviceActivation')
  final ExtapiDeviceActivation? deviceActivation;
  static const fromJsonFactory = _$ExtapiActivateDeviceRequestFromJson;
  static const toJsonFactory = _$ExtapiActivateDeviceRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiActivateDeviceRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiActivateDeviceRequest &&
            (identical(other.deviceActivation, deviceActivation) ||
                const DeepCollectionEquality()
                    .equals(other.deviceActivation, deviceActivation)));
  }
}

extension $ExtapiActivateDeviceRequestExtension on ExtapiActivateDeviceRequest {
  ExtapiActivateDeviceRequest copyWith(
      {ExtapiDeviceActivation? deviceActivation}) {
    return ExtapiActivateDeviceRequest(
        deviceActivation: deviceActivation ?? this.deviceActivation);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiActivateUserRequest {
  ExtapiActivateUserRequest({
    this.reason,
    this.userID,
  });

  factory ExtapiActivateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiActivateUserRequestFromJson(json);

  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'userID')
  final String? userID;
  static const fromJsonFactory = _$ExtapiActivateUserRequestFromJson;
  static const toJsonFactory = _$ExtapiActivateUserRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiActivateUserRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiActivateUserRequest &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }
}

extension $ExtapiActivateUserRequestExtension on ExtapiActivateUserRequest {
  ExtapiActivateUserRequest copyWith({String? reason, String? userID}) {
    return ExtapiActivateUserRequest(
        reason: reason ?? this.reason, userID: userID ?? this.userID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiActivateUserResponse {
  ExtapiActivateUserResponse({
    this.message,
  });

  factory ExtapiActivateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiActivateUserResponseFromJson(json);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ExtapiActivateUserResponseFromJson;
  static const toJsonFactory = _$ExtapiActivateUserResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiActivateUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiActivateUserResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }
}

extension $ExtapiActivateUserResponseExtension on ExtapiActivateUserResponse {
  ExtapiActivateUserResponse copyWith({String? message}) {
    return ExtapiActivateUserResponse(message: message ?? this.message);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiAddEmailRequest {
  ExtapiAddEmailRequest({
    this.email,
    this.language,
  });

  factory ExtapiAddEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiAddEmailRequestFromJson(json);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'language')
  final String? language;
  static const fromJsonFactory = _$ExtapiAddEmailRequestFromJson;
  static const toJsonFactory = _$ExtapiAddEmailRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiAddEmailRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiAddEmailRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }
}

extension $ExtapiAddEmailRequestExtension on ExtapiAddEmailRequest {
  ExtapiAddEmailRequest copyWith({String? email, String? language}) {
    return ExtapiAddEmailRequest(
        email: email ?? this.email, language: language ?? this.language);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiAddOrganizationUserRequest {
  ExtapiAddOrganizationUserRequest({
    this.organizationUser,
  });

  factory ExtapiAddOrganizationUserRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiAddOrganizationUserRequestFromJson(json);

  @JsonKey(name: 'organizationUser')
  final ExtapiOrganizationUser? organizationUser;
  static const fromJsonFactory = _$ExtapiAddOrganizationUserRequestFromJson;
  static const toJsonFactory = _$ExtapiAddOrganizationUserRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiAddOrganizationUserRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiAddOrganizationUserRequest &&
            (identical(other.organizationUser, organizationUser) ||
                const DeepCollectionEquality()
                    .equals(other.organizationUser, organizationUser)));
  }
}

extension $ExtapiAddOrganizationUserRequestExtension
    on ExtapiAddOrganizationUserRequest {
  ExtapiAddOrganizationUserRequest copyWith(
      {ExtapiOrganizationUser? organizationUser}) {
    return ExtapiAddOrganizationUserRequest(
        organizationUser: organizationUser ?? this.organizationUser);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiApplication {
  ExtapiApplication({
    this.description,
    this.id,
    this.name,
    this.organizationID,
    this.payloadCodec,
    this.payloadDecoderScript,
    this.payloadEncoderScript,
    this.serviceProfileID,
  });

  factory ExtapiApplication.fromJson(Map<String, dynamic> json) =>
      _$ExtapiApplicationFromJson(json);

  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'payloadCodec')
  final String? payloadCodec;
  @JsonKey(name: 'payloadDecoderScript')
  final String? payloadDecoderScript;
  @JsonKey(name: 'payloadEncoderScript')
  final String? payloadEncoderScript;
  @JsonKey(name: 'serviceProfileID')
  final String? serviceProfileID;
  static const fromJsonFactory = _$ExtapiApplicationFromJson;
  static const toJsonFactory = _$ExtapiApplicationToJson;
  Map<String, dynamic> toJson() => _$ExtapiApplicationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiApplication &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.payloadCodec, payloadCodec) ||
                const DeepCollectionEquality()
                    .equals(other.payloadCodec, payloadCodec)) &&
            (identical(other.payloadDecoderScript, payloadDecoderScript) ||
                const DeepCollectionEquality().equals(
                    other.payloadDecoderScript, payloadDecoderScript)) &&
            (identical(other.payloadEncoderScript, payloadEncoderScript) ||
                const DeepCollectionEquality().equals(
                    other.payloadEncoderScript, payloadEncoderScript)) &&
            (identical(other.serviceProfileID, serviceProfileID) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProfileID, serviceProfileID)));
  }
}

extension $ExtapiApplicationExtension on ExtapiApplication {
  ExtapiApplication copyWith(
      {String? description,
      String? id,
      String? name,
      String? organizationID,
      String? payloadCodec,
      String? payloadDecoderScript,
      String? payloadEncoderScript,
      String? serviceProfileID}) {
    return ExtapiApplication(
        description: description ?? this.description,
        id: id ?? this.id,
        name: name ?? this.name,
        organizationID: organizationID ?? this.organizationID,
        payloadCodec: payloadCodec ?? this.payloadCodec,
        payloadDecoderScript: payloadDecoderScript ?? this.payloadDecoderScript,
        payloadEncoderScript: payloadEncoderScript ?? this.payloadEncoderScript,
        serviceProfileID: serviceProfileID ?? this.serviceProfileID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiApplicationListItem {
  ExtapiApplicationListItem({
    this.description,
    this.id,
    this.name,
    this.organizationID,
    this.serviceProfileID,
    this.serviceProfileName,
  });

  factory ExtapiApplicationListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiApplicationListItemFromJson(json);

  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'serviceProfileID')
  final String? serviceProfileID;
  @JsonKey(name: 'serviceProfileName')
  final String? serviceProfileName;
  static const fromJsonFactory = _$ExtapiApplicationListItemFromJson;
  static const toJsonFactory = _$ExtapiApplicationListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiApplicationListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiApplicationListItem &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.serviceProfileID, serviceProfileID) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProfileID, serviceProfileID)) &&
            (identical(other.serviceProfileName, serviceProfileName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProfileName, serviceProfileName)));
  }
}

extension $ExtapiApplicationListItemExtension on ExtapiApplicationListItem {
  ExtapiApplicationListItem copyWith(
      {String? description,
      String? id,
      String? name,
      String? organizationID,
      String? serviceProfileID,
      String? serviceProfileName}) {
    return ExtapiApplicationListItem(
        description: description ?? this.description,
        id: id ?? this.id,
        name: name ?? this.name,
        organizationID: organizationID ?? this.organizationID,
        serviceProfileID: serviceProfileID ?? this.serviceProfileID,
        serviceProfileName: serviceProfileName ?? this.serviceProfileName);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiAuthenticateWeChatUserRequest {
  ExtapiAuthenticateWeChatUserRequest({
    this.code,
  });

  factory ExtapiAuthenticateWeChatUserRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiAuthenticateWeChatUserRequestFromJson(json);

  @JsonKey(name: 'code')
  final String? code;
  static const fromJsonFactory = _$ExtapiAuthenticateWeChatUserRequestFromJson;
  static const toJsonFactory = _$ExtapiAuthenticateWeChatUserRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiAuthenticateWeChatUserRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiAuthenticateWeChatUserRequest &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }
}

extension $ExtapiAuthenticateWeChatUserRequestExtension
    on ExtapiAuthenticateWeChatUserRequest {
  ExtapiAuthenticateWeChatUserRequest copyWith({String? code}) {
    return ExtapiAuthenticateWeChatUserRequest(code: code ?? this.code);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiAuthenticateWeChatUserResponse {
  ExtapiAuthenticateWeChatUserResponse({
    this.authToken,
    this.bindingIsRequired,
    this.is2faRequired,
  });

  factory ExtapiAuthenticateWeChatUserResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiAuthenticateWeChatUserResponseFromJson(json);

  @JsonKey(name: 'authToken')
  final String? authToken;
  @JsonKey(name: 'bindingIsRequired')
  final bool? bindingIsRequired;
  @JsonKey(name: 'is2faRequired')
  final bool? is2faRequired;
  static const fromJsonFactory = _$ExtapiAuthenticateWeChatUserResponseFromJson;
  static const toJsonFactory = _$ExtapiAuthenticateWeChatUserResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiAuthenticateWeChatUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiAuthenticateWeChatUserResponse &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)) &&
            (identical(other.bindingIsRequired, bindingIsRequired) ||
                const DeepCollectionEquality()
                    .equals(other.bindingIsRequired, bindingIsRequired)) &&
            (identical(other.is2faRequired, is2faRequired) ||
                const DeepCollectionEquality()
                    .equals(other.is2faRequired, is2faRequired)));
  }
}

extension $ExtapiAuthenticateWeChatUserResponseExtension
    on ExtapiAuthenticateWeChatUserResponse {
  ExtapiAuthenticateWeChatUserResponse copyWith(
      {String? authToken, bool? bindingIsRequired, bool? is2faRequired}) {
    return ExtapiAuthenticateWeChatUserResponse(
        authToken: authToken ?? this.authToken,
        bindingIsRequired: bindingIsRequired ?? this.bindingIsRequired,
        is2faRequired: is2faRequired ?? this.is2faRequired);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiBTCAddLocksRequest {
  ExtapiBTCAddLocksRequest({
    this.durationDays,
    this.gatewayMac,
    this.orgId,
    this.sessionId,
    this.totalAmount,
  });

  factory ExtapiBTCAddLocksRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiBTCAddLocksRequestFromJson(json);

  @JsonKey(name: 'durationDays')
  final String? durationDays;
  @JsonKey(name: 'gatewayMac', defaultValue: <String>[])
  final List<String>? gatewayMac;
  @JsonKey(name: 'orgId')
  final String? orgId;
  @JsonKey(name: 'sessionId')
  final String? sessionId;
  @JsonKey(name: 'totalAmount')
  final String? totalAmount;
  static const fromJsonFactory = _$ExtapiBTCAddLocksRequestFromJson;
  static const toJsonFactory = _$ExtapiBTCAddLocksRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiBTCAddLocksRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiBTCAddLocksRequest &&
            (identical(other.durationDays, durationDays) ||
                const DeepCollectionEquality()
                    .equals(other.durationDays, durationDays)) &&
            (identical(other.gatewayMac, gatewayMac) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayMac, gatewayMac)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)));
  }
}

extension $ExtapiBTCAddLocksRequestExtension on ExtapiBTCAddLocksRequest {
  ExtapiBTCAddLocksRequest copyWith(
      {String? durationDays,
      List<String>? gatewayMac,
      String? orgId,
      String? sessionId,
      String? totalAmount}) {
    return ExtapiBTCAddLocksRequest(
        durationDays: durationDays ?? this.durationDays,
        gatewayMac: gatewayMac ?? this.gatewayMac,
        orgId: orgId ?? this.orgId,
        sessionId: sessionId ?? this.sessionId,
        totalAmount: totalAmount ?? this.totalAmount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiBTCAddLocksResponse {
  ExtapiBTCAddLocksResponse();

  factory ExtapiBTCAddLocksResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiBTCAddLocksResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiBTCAddLocksResponseFromJson;
  static const toJsonFactory = _$ExtapiBTCAddLocksResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiBTCAddLocksResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiBTCListLocksResponse {
  ExtapiBTCListLocksResponse({
    this.lock,
  });

  factory ExtapiBTCListLocksResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiBTCListLocksResponseFromJson(json);

  @JsonKey(name: 'lock', defaultValue: <ExtapiBTCLock>[])
  final List<ExtapiBTCLock>? lock;
  static const fromJsonFactory = _$ExtapiBTCListLocksResponseFromJson;
  static const toJsonFactory = _$ExtapiBTCListLocksResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiBTCListLocksResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiBTCListLocksResponse &&
            (identical(other.lock, lock) ||
                const DeepCollectionEquality().equals(other.lock, lock)));
  }
}

extension $ExtapiBTCListLocksResponseExtension on ExtapiBTCListLocksResponse {
  ExtapiBTCListLocksResponse copyWith({List<ExtapiBTCLock>? lock}) {
    return ExtapiBTCListLocksResponse(lock: lock ?? this.lock);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiBTCLock {
  ExtapiBTCLock({
    this.amount,
    this.btcRevenue,
    this.created,
    this.gatewayMac,
    this.id,
    this.lockTill,
    this.sessionId,
  });

  factory ExtapiBTCLock.fromJson(Map<String, dynamic> json) =>
      _$ExtapiBTCLockFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'btcRevenue')
  final String? btcRevenue;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'gatewayMac')
  final String? gatewayMac;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'lockTill')
  final DateTime? lockTill;
  @JsonKey(name: 'sessionId')
  final String? sessionId;
  static const fromJsonFactory = _$ExtapiBTCLockFromJson;
  static const toJsonFactory = _$ExtapiBTCLockToJson;
  Map<String, dynamic> toJson() => _$ExtapiBTCLockToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiBTCLock &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.btcRevenue, btcRevenue) ||
                const DeepCollectionEquality()
                    .equals(other.btcRevenue, btcRevenue)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.gatewayMac, gatewayMac) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayMac, gatewayMac)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lockTill, lockTill) ||
                const DeepCollectionEquality()
                    .equals(other.lockTill, lockTill)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)));
  }
}

extension $ExtapiBTCLockExtension on ExtapiBTCLock {
  ExtapiBTCLock copyWith(
      {String? amount,
      String? btcRevenue,
      DateTime? created,
      String? gatewayMac,
      String? id,
      DateTime? lockTill,
      String? sessionId}) {
    return ExtapiBTCLock(
        amount: amount ?? this.amount,
        btcRevenue: btcRevenue ?? this.btcRevenue,
        created: created ?? this.created,
        gatewayMac: gatewayMac ?? this.gatewayMac,
        id: id ?? this.id,
        lockTill: lockTill ?? this.lockTill,
        sessionId: sessionId ?? this.sessionId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiBTCMiningSessionResponse {
  ExtapiBTCMiningSessionResponse({
    this.endDate,
    this.mxcLockAmount,
    this.mxcLockDurationDays,
    this.sessionId,
    this.startDate,
  });

  factory ExtapiBTCMiningSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiBTCMiningSessionResponseFromJson(json);

  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'mxcLockAmount')
  final String? mxcLockAmount;
  @JsonKey(name: 'mxcLockDurationDays')
  final String? mxcLockDurationDays;
  @JsonKey(name: 'sessionId')
  final String? sessionId;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  static const fromJsonFactory = _$ExtapiBTCMiningSessionResponseFromJson;
  static const toJsonFactory = _$ExtapiBTCMiningSessionResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiBTCMiningSessionResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiBTCMiningSessionResponse &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.mxcLockAmount, mxcLockAmount) ||
                const DeepCollectionEquality()
                    .equals(other.mxcLockAmount, mxcLockAmount)) &&
            (identical(other.mxcLockDurationDays, mxcLockDurationDays) ||
                const DeepCollectionEquality()
                    .equals(other.mxcLockDurationDays, mxcLockDurationDays)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)));
  }
}

extension $ExtapiBTCMiningSessionResponseExtension
    on ExtapiBTCMiningSessionResponse {
  ExtapiBTCMiningSessionResponse copyWith(
      {DateTime? endDate,
      String? mxcLockAmount,
      String? mxcLockDurationDays,
      String? sessionId,
      DateTime? startDate}) {
    return ExtapiBTCMiningSessionResponse(
        endDate: endDate ?? this.endDate,
        mxcLockAmount: mxcLockAmount ?? this.mxcLockAmount,
        mxcLockDurationDays: mxcLockDurationDays ?? this.mxcLockDurationDays,
        sessionId: sessionId ?? this.sessionId,
        startDate: startDate ?? this.startDate);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiBatchResetDefaultGatewatConfigRequest {
  ExtapiBatchResetDefaultGatewatConfigRequest({
    this.organizationList,
  });

  factory ExtapiBatchResetDefaultGatewatConfigRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiBatchResetDefaultGatewatConfigRequestFromJson(json);

  @JsonKey(name: 'organizationList')
  final String? organizationList;
  static const fromJsonFactory =
      _$ExtapiBatchResetDefaultGatewatConfigRequestFromJson;
  static const toJsonFactory =
      _$ExtapiBatchResetDefaultGatewatConfigRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiBatchResetDefaultGatewatConfigRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiBatchResetDefaultGatewatConfigRequest &&
            (identical(other.organizationList, organizationList) ||
                const DeepCollectionEquality()
                    .equals(other.organizationList, organizationList)));
  }
}

extension $ExtapiBatchResetDefaultGatewatConfigRequestExtension
    on ExtapiBatchResetDefaultGatewatConfigRequest {
  ExtapiBatchResetDefaultGatewatConfigRequest copyWith(
      {String? organizationList}) {
    return ExtapiBatchResetDefaultGatewatConfigRequest(
        organizationList: organizationList ?? this.organizationList);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiBatchResetDefaultGatewatConfigResponse {
  ExtapiBatchResetDefaultGatewatConfigResponse({
    this.status,
  });

  factory ExtapiBatchResetDefaultGatewatConfigResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiBatchResetDefaultGatewatConfigResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$ExtapiBatchResetDefaultGatewatConfigResponseFromJson;
  static const toJsonFactory =
      _$ExtapiBatchResetDefaultGatewatConfigResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiBatchResetDefaultGatewatConfigResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiBatchResetDefaultGatewatConfigResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiBatchResetDefaultGatewatConfigResponseExtension
    on ExtapiBatchResetDefaultGatewatConfigResponse {
  ExtapiBatchResetDefaultGatewatConfigResponse copyWith({String? status}) {
    return ExtapiBatchResetDefaultGatewatConfigResponse(
        status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiBindExternalUserRequest {
  ExtapiBindExternalUserRequest();

  factory ExtapiBindExternalUserRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiBindExternalUserRequestFromJson(json);

  static const fromJsonFactory = _$ExtapiBindExternalUserRequestFromJson;
  static const toJsonFactory = _$ExtapiBindExternalUserRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiBindExternalUserRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiBindExternalUserResponse {
  ExtapiBindExternalUserResponse();

  factory ExtapiBindExternalUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiBindExternalUserResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiBindExternalUserResponseFromJson;
  static const toJsonFactory = _$ExtapiBindExternalUserResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiBindExternalUserResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiBoost {
  ExtapiBoost({
    this.boost,
    this.lockPeriods,
  });

  factory ExtapiBoost.fromJson(Map<String, dynamic> json) =>
      _$ExtapiBoostFromJson(json);

  @JsonKey(name: 'boost')
  final String? boost;
  @JsonKey(name: 'lockPeriods')
  final String? lockPeriods;
  static const fromJsonFactory = _$ExtapiBoostFromJson;
  static const toJsonFactory = _$ExtapiBoostToJson;
  Map<String, dynamic> toJson() => _$ExtapiBoostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiBoost &&
            (identical(other.boost, boost) ||
                const DeepCollectionEquality().equals(other.boost, boost)) &&
            (identical(other.lockPeriods, lockPeriods) ||
                const DeepCollectionEquality()
                    .equals(other.lockPeriods, lockPeriods)));
  }
}

extension $ExtapiBoostExtension on ExtapiBoost {
  ExtapiBoost copyWith({String? boost, String? lockPeriods}) {
    return ExtapiBoost(
        boost: boost ?? this.boost,
        lockPeriods: lockPeriods ?? this.lockPeriods);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiBrandingResponse {
  ExtapiBrandingResponse({
    this.footer,
    this.logo,
    this.logoPath,
    this.registration,
  });

  factory ExtapiBrandingResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiBrandingResponseFromJson(json);

  @JsonKey(name: 'footer')
  final String? footer;
  @JsonKey(name: 'logo')
  final String? logo;
  @JsonKey(name: 'logoPath')
  final String? logoPath;
  @JsonKey(name: 'registration')
  final String? registration;
  static const fromJsonFactory = _$ExtapiBrandingResponseFromJson;
  static const toJsonFactory = _$ExtapiBrandingResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiBrandingResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiBrandingResponse &&
            (identical(other.footer, footer) ||
                const DeepCollectionEquality().equals(other.footer, footer)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.logoPath, logoPath) ||
                const DeepCollectionEquality()
                    .equals(other.logoPath, logoPath)) &&
            (identical(other.registration, registration) ||
                const DeepCollectionEquality()
                    .equals(other.registration, registration)));
  }
}

extension $ExtapiBrandingResponseExtension on ExtapiBrandingResponse {
  ExtapiBrandingResponse copyWith(
      {String? footer, String? logo, String? logoPath, String? registration}) {
    return ExtapiBrandingResponse(
        footer: footer ?? this.footer,
        logo: logo ?? this.logo,
        logoPath: logoPath ?? this.logoPath,
        registration: registration ?? this.registration);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCell {
  ExtapiCell({
    this.gateways,
    this.h3CellId,
  });

  factory ExtapiCell.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCellFromJson(json);

  @JsonKey(name: 'gateways')
  final String? gateways;
  @JsonKey(name: 'h3CellId')
  final String? h3CellId;
  static const fromJsonFactory = _$ExtapiCellFromJson;
  static const toJsonFactory = _$ExtapiCellToJson;
  Map<String, dynamic> toJson() => _$ExtapiCellToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCell &&
            (identical(other.gateways, gateways) ||
                const DeepCollectionEquality()
                    .equals(other.gateways, gateways)) &&
            (identical(other.h3CellId, h3CellId) ||
                const DeepCollectionEquality()
                    .equals(other.h3CellId, h3CellId)));
  }
}

extension $ExtapiCellExtension on ExtapiCell {
  ExtapiCell copyWith({String? gateways, String? h3CellId}) {
    return ExtapiCell(
        gateways: gateways ?? this.gateways,
        h3CellId: h3CellId ?? this.h3CellId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiChangePasswordRequest {
  ExtapiChangePasswordRequest({
    this.currentPassword,
    this.newPassword,
  });

  factory ExtapiChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiChangePasswordRequestFromJson(json);

  @JsonKey(name: 'currentPassword')
  final String? currentPassword;
  @JsonKey(name: 'newPassword')
  final String? newPassword;
  static const fromJsonFactory = _$ExtapiChangePasswordRequestFromJson;
  static const toJsonFactory = _$ExtapiChangePasswordRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiChangePasswordRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiChangePasswordRequest &&
            (identical(other.currentPassword, currentPassword) ||
                const DeepCollectionEquality()
                    .equals(other.currentPassword, currentPassword)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)));
  }
}

extension $ExtapiChangePasswordRequestExtension on ExtapiChangePasswordRequest {
  ExtapiChangePasswordRequest copyWith(
      {String? currentPassword, String? newPassword}) {
    return ExtapiChangePasswordRequest(
        currentPassword: currentPassword ?? this.currentPassword,
        newPassword: newPassword ?? this.newPassword);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiChangePasswordResponse {
  ExtapiChangePasswordResponse({
    this.authToken,
  });

  factory ExtapiChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiChangePasswordResponseFromJson(json);

  @JsonKey(name: 'authToken')
  final String? authToken;
  static const fromJsonFactory = _$ExtapiChangePasswordResponseFromJson;
  static const toJsonFactory = _$ExtapiChangePasswordResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiChangePasswordResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiChangePasswordResponse &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)));
  }
}

extension $ExtapiChangePasswordResponseExtension
    on ExtapiChangePasswordResponse {
  ExtapiChangePasswordResponse copyWith({String? authToken}) {
    return ExtapiChangePasswordResponse(authToken: authToken ?? this.authToken);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCheckACLRequest {
  ExtapiCheckACLRequest({
    this.acc,
    this.clientid,
    this.topic,
  });

  factory ExtapiCheckACLRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCheckACLRequestFromJson(json);

  @JsonKey(name: 'acc')
  final int? acc;
  @JsonKey(name: 'clientid')
  final String? clientid;
  @JsonKey(name: 'topic')
  final String? topic;
  static const fromJsonFactory = _$ExtapiCheckACLRequestFromJson;
  static const toJsonFactory = _$ExtapiCheckACLRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiCheckACLRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCheckACLRequest &&
            (identical(other.acc, acc) ||
                const DeepCollectionEquality().equals(other.acc, acc)) &&
            (identical(other.clientid, clientid) ||
                const DeepCollectionEquality()
                    .equals(other.clientid, clientid)) &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)));
  }
}

extension $ExtapiCheckACLRequestExtension on ExtapiCheckACLRequest {
  ExtapiCheckACLRequest copyWith({int? acc, String? clientid, String? topic}) {
    return ExtapiCheckACLRequest(
        acc: acc ?? this.acc,
        clientid: clientid ?? this.clientid,
        topic: topic ?? this.topic);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCheckACLResponse {
  ExtapiCheckACLResponse();

  factory ExtapiCheckACLResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCheckACLResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiCheckACLResponseFromJson;
  static const toJsonFactory = _$ExtapiCheckACLResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiCheckACLResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiConfirmPasswordResetReq {
  ExtapiConfirmPasswordResetReq({
    this.newPassword,
    this.otp,
    this.username,
  });

  factory ExtapiConfirmPasswordResetReq.fromJson(Map<String, dynamic> json) =>
      _$ExtapiConfirmPasswordResetReqFromJson(json);

  @JsonKey(name: 'newPassword')
  final String? newPassword;
  @JsonKey(name: 'otp')
  final String? otp;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$ExtapiConfirmPasswordResetReqFromJson;
  static const toJsonFactory = _$ExtapiConfirmPasswordResetReqToJson;
  Map<String, dynamic> toJson() => _$ExtapiConfirmPasswordResetReqToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiConfirmPasswordResetReq &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }
}

extension $ExtapiConfirmPasswordResetReqExtension
    on ExtapiConfirmPasswordResetReq {
  ExtapiConfirmPasswordResetReq copyWith(
      {String? newPassword, String? otp, String? username}) {
    return ExtapiConfirmPasswordResetReq(
        newPassword: newPassword ?? this.newPassword,
        otp: otp ?? this.otp,
        username: username ?? this.username);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiConfirmRegistrationRequest {
  ExtapiConfirmRegistrationRequest({
    this.email,
    this.token,
  });

  factory ExtapiConfirmRegistrationRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiConfirmRegistrationRequestFromJson(json);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'token')
  final String? token;
  static const fromJsonFactory = _$ExtapiConfirmRegistrationRequestFromJson;
  static const toJsonFactory = _$ExtapiConfirmRegistrationRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiConfirmRegistrationRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiConfirmRegistrationRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }
}

extension $ExtapiConfirmRegistrationRequestExtension
    on ExtapiConfirmRegistrationRequest {
  ExtapiConfirmRegistrationRequest copyWith({String? email, String? token}) {
    return ExtapiConfirmRegistrationRequest(
        email: email ?? this.email, token: token ?? this.token);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiConfirmRegistrationResponse {
  ExtapiConfirmRegistrationResponse({
    this.authToken,
    this.id,
    this.isActive,
    this.isAdmin,
    this.jwt,
    this.sessionTTL,
    this.username,
  });

  factory ExtapiConfirmRegistrationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiConfirmRegistrationResponseFromJson(json);

  @JsonKey(name: 'authToken')
  final String? authToken;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'isAdmin')
  final bool? isAdmin;
  @JsonKey(name: 'jwt')
  final String? jwt;
  @JsonKey(name: 'sessionTTL')
  final int? sessionTTL;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$ExtapiConfirmRegistrationResponseFromJson;
  static const toJsonFactory = _$ExtapiConfirmRegistrationResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiConfirmRegistrationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiConfirmRegistrationResponse &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.jwt, jwt) ||
                const DeepCollectionEquality().equals(other.jwt, jwt)) &&
            (identical(other.sessionTTL, sessionTTL) ||
                const DeepCollectionEquality()
                    .equals(other.sessionTTL, sessionTTL)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }
}

extension $ExtapiConfirmRegistrationResponseExtension
    on ExtapiConfirmRegistrationResponse {
  ExtapiConfirmRegistrationResponse copyWith(
      {String? authToken,
      String? id,
      bool? isActive,
      bool? isAdmin,
      String? jwt,
      int? sessionTTL,
      String? username}) {
    return ExtapiConfirmRegistrationResponse(
        authToken: authToken ?? this.authToken,
        id: id ?? this.id,
        isActive: isActive ?? this.isActive,
        isAdmin: isAdmin ?? this.isAdmin,
        jwt: jwt ?? this.jwt,
        sessionTTL: sessionTTL ?? this.sessionTTL,
        username: username ?? this.username);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiConfirmShopifyEmailRequest {
  ExtapiConfirmShopifyEmailRequest({
    this.organizationId,
    this.token,
  });

  factory ExtapiConfirmShopifyEmailRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiConfirmShopifyEmailRequestFromJson(json);

  @JsonKey(name: 'organizationId')
  final String? organizationId;
  @JsonKey(name: 'token')
  final String? token;
  static const fromJsonFactory = _$ExtapiConfirmShopifyEmailRequestFromJson;
  static const toJsonFactory = _$ExtapiConfirmShopifyEmailRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiConfirmShopifyEmailRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiConfirmShopifyEmailRequest &&
            (identical(other.organizationId, organizationId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationId, organizationId)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }
}

extension $ExtapiConfirmShopifyEmailRequestExtension
    on ExtapiConfirmShopifyEmailRequest {
  ExtapiConfirmShopifyEmailRequest copyWith(
      {String? organizationId, String? token}) {
    return ExtapiConfirmShopifyEmailRequest(
        organizationId: organizationId ?? this.organizationId,
        token: token ?? this.token);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiConfirmShopifyEmailResponse {
  ExtapiConfirmShopifyEmailResponse();

  factory ExtapiConfirmShopifyEmailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiConfirmShopifyEmailResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiConfirmShopifyEmailResponseFromJson;
  static const toJsonFactory = _$ExtapiConfirmShopifyEmailResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiConfirmShopifyEmailResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiCouncil {
  ExtapiCouncil({
    this.chairOrgId,
    this.id,
    this.lastDhxRevenue,
    this.lastMpower,
    this.lastPaidDate,
    this.name,
  });

  factory ExtapiCouncil.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCouncilFromJson(json);

  @JsonKey(name: 'chairOrgId')
  final String? chairOrgId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'lastDhxRevenue')
  final String? lastDhxRevenue;
  @JsonKey(name: 'lastMpower')
  final String? lastMpower;
  @JsonKey(name: 'lastPaidDate')
  final DateTime? lastPaidDate;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ExtapiCouncilFromJson;
  static const toJsonFactory = _$ExtapiCouncilToJson;
  Map<String, dynamic> toJson() => _$ExtapiCouncilToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCouncil &&
            (identical(other.chairOrgId, chairOrgId) ||
                const DeepCollectionEquality()
                    .equals(other.chairOrgId, chairOrgId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastDhxRevenue, lastDhxRevenue) ||
                const DeepCollectionEquality()
                    .equals(other.lastDhxRevenue, lastDhxRevenue)) &&
            (identical(other.lastMpower, lastMpower) ||
                const DeepCollectionEquality()
                    .equals(other.lastMpower, lastMpower)) &&
            (identical(other.lastPaidDate, lastPaidDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastPaidDate, lastPaidDate)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }
}

extension $ExtapiCouncilExtension on ExtapiCouncil {
  ExtapiCouncil copyWith(
      {String? chairOrgId,
      String? id,
      String? lastDhxRevenue,
      String? lastMpower,
      DateTime? lastPaidDate,
      String? name}) {
    return ExtapiCouncil(
        chairOrgId: chairOrgId ?? this.chairOrgId,
        id: id ?? this.id,
        lastDhxRevenue: lastDhxRevenue ?? this.lastDhxRevenue,
        lastMpower: lastMpower ?? this.lastMpower,
        lastPaidDate: lastPaidDate ?? this.lastPaidDate,
        name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateApplicationRequest {
  ExtapiCreateApplicationRequest({
    this.application,
  });

  factory ExtapiCreateApplicationRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCreateApplicationRequestFromJson(json);

  @JsonKey(name: 'application')
  final ExtapiApplication? application;
  static const fromJsonFactory = _$ExtapiCreateApplicationRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateApplicationRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiCreateApplicationRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateApplicationRequest &&
            (identical(other.application, application) ||
                const DeepCollectionEquality()
                    .equals(other.application, application)));
  }
}

extension $ExtapiCreateApplicationRequestExtension
    on ExtapiCreateApplicationRequest {
  ExtapiCreateApplicationRequest copyWith({ExtapiApplication? application}) {
    return ExtapiCreateApplicationRequest(
        application: application ?? this.application);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateApplicationResponse {
  ExtapiCreateApplicationResponse({
    this.id,
  });

  factory ExtapiCreateApplicationResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCreateApplicationResponseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ExtapiCreateApplicationResponseFromJson;
  static const toJsonFactory = _$ExtapiCreateApplicationResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateApplicationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateApplicationResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }
}

extension $ExtapiCreateApplicationResponseExtension
    on ExtapiCreateApplicationResponse {
  ExtapiCreateApplicationResponse copyWith({String? id}) {
    return ExtapiCreateApplicationResponse(id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateDeviceKeysRequest {
  ExtapiCreateDeviceKeysRequest({
    this.deviceKeys,
  });

  factory ExtapiCreateDeviceKeysRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCreateDeviceKeysRequestFromJson(json);

  @JsonKey(name: 'deviceKeys')
  final ExtapiDeviceKeys? deviceKeys;
  static const fromJsonFactory = _$ExtapiCreateDeviceKeysRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateDeviceKeysRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiCreateDeviceKeysRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateDeviceKeysRequest &&
            (identical(other.deviceKeys, deviceKeys) ||
                const DeepCollectionEquality()
                    .equals(other.deviceKeys, deviceKeys)));
  }
}

extension $ExtapiCreateDeviceKeysRequestExtension
    on ExtapiCreateDeviceKeysRequest {
  ExtapiCreateDeviceKeysRequest copyWith({ExtapiDeviceKeys? deviceKeys}) {
    return ExtapiCreateDeviceKeysRequest(
        deviceKeys: deviceKeys ?? this.deviceKeys);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateDeviceProfileRequest {
  ExtapiCreateDeviceProfileRequest({
    this.deviceProfile,
  });

  factory ExtapiCreateDeviceProfileRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiCreateDeviceProfileRequestFromJson(json);

  @JsonKey(name: 'deviceProfile')
  final ExtapiDeviceProfile? deviceProfile;
  static const fromJsonFactory = _$ExtapiCreateDeviceProfileRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateDeviceProfileRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateDeviceProfileRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateDeviceProfileRequest &&
            (identical(other.deviceProfile, deviceProfile) ||
                const DeepCollectionEquality()
                    .equals(other.deviceProfile, deviceProfile)));
  }
}

extension $ExtapiCreateDeviceProfileRequestExtension
    on ExtapiCreateDeviceProfileRequest {
  ExtapiCreateDeviceProfileRequest copyWith(
      {ExtapiDeviceProfile? deviceProfile}) {
    return ExtapiCreateDeviceProfileRequest(
        deviceProfile: deviceProfile ?? this.deviceProfile);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateDeviceProfileResponse {
  ExtapiCreateDeviceProfileResponse({
    this.id,
  });

  factory ExtapiCreateDeviceProfileResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiCreateDeviceProfileResponseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ExtapiCreateDeviceProfileResponseFromJson;
  static const toJsonFactory = _$ExtapiCreateDeviceProfileResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateDeviceProfileResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateDeviceProfileResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }
}

extension $ExtapiCreateDeviceProfileResponseExtension
    on ExtapiCreateDeviceProfileResponse {
  ExtapiCreateDeviceProfileResponse copyWith({String? id}) {
    return ExtapiCreateDeviceProfileResponse(id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateDeviceRequest {
  ExtapiCreateDeviceRequest({
    this.device,
  });

  factory ExtapiCreateDeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCreateDeviceRequestFromJson(json);

  @JsonKey(name: 'device')
  final ExtapiDevice? device;
  static const fromJsonFactory = _$ExtapiCreateDeviceRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateDeviceRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiCreateDeviceRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateDeviceRequest &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }
}

extension $ExtapiCreateDeviceRequestExtension on ExtapiCreateDeviceRequest {
  ExtapiCreateDeviceRequest copyWith({ExtapiDevice? device}) {
    return ExtapiCreateDeviceRequest(device: device ?? this.device);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateGatewayProfileRequest {
  ExtapiCreateGatewayProfileRequest({
    this.gatewayProfile,
  });

  factory ExtapiCreateGatewayProfileRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiCreateGatewayProfileRequestFromJson(json);

  @JsonKey(name: 'gatewayProfile')
  final ExtapiGatewayProfile? gatewayProfile;
  static const fromJsonFactory = _$ExtapiCreateGatewayProfileRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateGatewayProfileRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateGatewayProfileRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateGatewayProfileRequest &&
            (identical(other.gatewayProfile, gatewayProfile) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayProfile, gatewayProfile)));
  }
}

extension $ExtapiCreateGatewayProfileRequestExtension
    on ExtapiCreateGatewayProfileRequest {
  ExtapiCreateGatewayProfileRequest copyWith(
      {ExtapiGatewayProfile? gatewayProfile}) {
    return ExtapiCreateGatewayProfileRequest(
        gatewayProfile: gatewayProfile ?? this.gatewayProfile);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateGatewayProfileResponse {
  ExtapiCreateGatewayProfileResponse({
    this.id,
  });

  factory ExtapiCreateGatewayProfileResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiCreateGatewayProfileResponseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ExtapiCreateGatewayProfileResponseFromJson;
  static const toJsonFactory = _$ExtapiCreateGatewayProfileResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateGatewayProfileResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateGatewayProfileResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }
}

extension $ExtapiCreateGatewayProfileResponseExtension
    on ExtapiCreateGatewayProfileResponse {
  ExtapiCreateGatewayProfileResponse copyWith({String? id}) {
    return ExtapiCreateGatewayProfileResponse(id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateGatewayRequest {
  ExtapiCreateGatewayRequest({
    this.gateway,
  });

  factory ExtapiCreateGatewayRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCreateGatewayRequestFromJson(json);

  @JsonKey(name: 'gateway')
  final ExtapiGateway? gateway;
  static const fromJsonFactory = _$ExtapiCreateGatewayRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateGatewayRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiCreateGatewayRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateGatewayRequest &&
            (identical(other.gateway, gateway) ||
                const DeepCollectionEquality().equals(other.gateway, gateway)));
  }
}

extension $ExtapiCreateGatewayRequestExtension on ExtapiCreateGatewayRequest {
  ExtapiCreateGatewayRequest copyWith({ExtapiGateway? gateway}) {
    return ExtapiCreateGatewayRequest(gateway: gateway ?? this.gateway);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateNetworkServerRequest {
  ExtapiCreateNetworkServerRequest({
    this.networkServer,
  });

  factory ExtapiCreateNetworkServerRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiCreateNetworkServerRequestFromJson(json);

  @JsonKey(name: 'networkServer')
  final ExtapiNetworkServer? networkServer;
  static const fromJsonFactory = _$ExtapiCreateNetworkServerRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateNetworkServerRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateNetworkServerRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateNetworkServerRequest &&
            (identical(other.networkServer, networkServer) ||
                const DeepCollectionEquality()
                    .equals(other.networkServer, networkServer)));
  }
}

extension $ExtapiCreateNetworkServerRequestExtension
    on ExtapiCreateNetworkServerRequest {
  ExtapiCreateNetworkServerRequest copyWith(
      {ExtapiNetworkServer? networkServer}) {
    return ExtapiCreateNetworkServerRequest(
        networkServer: networkServer ?? this.networkServer);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateNetworkServerResponse {
  ExtapiCreateNetworkServerResponse({
    this.id,
  });

  factory ExtapiCreateNetworkServerResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiCreateNetworkServerResponseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ExtapiCreateNetworkServerResponseFromJson;
  static const toJsonFactory = _$ExtapiCreateNetworkServerResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateNetworkServerResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateNetworkServerResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }
}

extension $ExtapiCreateNetworkServerResponseExtension
    on ExtapiCreateNetworkServerResponse {
  ExtapiCreateNetworkServerResponse copyWith({String? id}) {
    return ExtapiCreateNetworkServerResponse(id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateOrganizationRequest {
  ExtapiCreateOrganizationRequest({
    this.organization,
  });

  factory ExtapiCreateOrganizationRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCreateOrganizationRequestFromJson(json);

  @JsonKey(name: 'organization')
  final ExtapiOrganization? organization;
  static const fromJsonFactory = _$ExtapiCreateOrganizationRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateOrganizationRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateOrganizationRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateOrganizationRequest &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)));
  }
}

extension $ExtapiCreateOrganizationRequestExtension
    on ExtapiCreateOrganizationRequest {
  ExtapiCreateOrganizationRequest copyWith({ExtapiOrganization? organization}) {
    return ExtapiCreateOrganizationRequest(
        organization: organization ?? this.organization);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateOrganizationResponse {
  ExtapiCreateOrganizationResponse({
    this.id,
  });

  factory ExtapiCreateOrganizationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiCreateOrganizationResponseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ExtapiCreateOrganizationResponseFromJson;
  static const toJsonFactory = _$ExtapiCreateOrganizationResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateOrganizationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateOrganizationResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }
}

extension $ExtapiCreateOrganizationResponseExtension
    on ExtapiCreateOrganizationResponse {
  ExtapiCreateOrganizationResponse copyWith({String? id}) {
    return ExtapiCreateOrganizationResponse(id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateRequest {
  ExtapiCreateRequest({
    this.applicationId,
    this.organizationId,
    this.provisionId,
  });

  factory ExtapiCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCreateRequestFromJson(json);

  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'organizationId')
  final String? organizationId;
  @JsonKey(name: 'provisionId')
  final String? provisionId;
  static const fromJsonFactory = _$ExtapiCreateRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiCreateRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateRequest &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.organizationId, organizationId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationId, organizationId)) &&
            (identical(other.provisionId, provisionId) ||
                const DeepCollectionEquality()
                    .equals(other.provisionId, provisionId)));
  }
}

extension $ExtapiCreateRequestExtension on ExtapiCreateRequest {
  ExtapiCreateRequest copyWith(
      {String? applicationId, String? organizationId, String? provisionId}) {
    return ExtapiCreateRequest(
        applicationId: applicationId ?? this.applicationId,
        organizationId: organizationId ?? this.organizationId,
        provisionId: provisionId ?? this.provisionId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateResponse {
  ExtapiCreateResponse({
    this.devEui,
  });

  factory ExtapiCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCreateResponseFromJson(json);

  @JsonKey(name: 'devEui')
  final String? devEui;
  static const fromJsonFactory = _$ExtapiCreateResponseFromJson;
  static const toJsonFactory = _$ExtapiCreateResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiCreateResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateResponse &&
            (identical(other.devEui, devEui) ||
                const DeepCollectionEquality().equals(other.devEui, devEui)));
  }
}

extension $ExtapiCreateResponseExtension on ExtapiCreateResponse {
  ExtapiCreateResponse copyWith({String? devEui}) {
    return ExtapiCreateResponse(devEui: devEui ?? this.devEui);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateServiceProfileRequest {
  ExtapiCreateServiceProfileRequest({
    this.serviceProfile,
  });

  factory ExtapiCreateServiceProfileRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiCreateServiceProfileRequestFromJson(json);

  @JsonKey(name: 'serviceProfile')
  final ExtapiServiceProfile? serviceProfile;
  static const fromJsonFactory = _$ExtapiCreateServiceProfileRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateServiceProfileRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateServiceProfileRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateServiceProfileRequest &&
            (identical(other.serviceProfile, serviceProfile) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProfile, serviceProfile)));
  }
}

extension $ExtapiCreateServiceProfileRequestExtension
    on ExtapiCreateServiceProfileRequest {
  ExtapiCreateServiceProfileRequest copyWith(
      {ExtapiServiceProfile? serviceProfile}) {
    return ExtapiCreateServiceProfileRequest(
        serviceProfile: serviceProfile ?? this.serviceProfile);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateServiceProfileResponse {
  ExtapiCreateServiceProfileResponse({
    this.id,
  });

  factory ExtapiCreateServiceProfileResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiCreateServiceProfileResponseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ExtapiCreateServiceProfileResponseFromJson;
  static const toJsonFactory = _$ExtapiCreateServiceProfileResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiCreateServiceProfileResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateServiceProfileResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }
}

extension $ExtapiCreateServiceProfileResponseExtension
    on ExtapiCreateServiceProfileResponse {
  ExtapiCreateServiceProfileResponse copyWith({String? id}) {
    return ExtapiCreateServiceProfileResponse(id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateUserRequest {
  ExtapiCreateUserRequest({
    this.organizations,
    this.password,
    this.user,
  });

  factory ExtapiCreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCreateUserRequestFromJson(json);

  @JsonKey(name: 'organizations', defaultValue: <ExtapiUserOrganization>[])
  final List<ExtapiUserOrganization>? organizations;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'user')
  final ExtapiUser? user;
  static const fromJsonFactory = _$ExtapiCreateUserRequestFromJson;
  static const toJsonFactory = _$ExtapiCreateUserRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiCreateUserRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateUserRequest &&
            (identical(other.organizations, organizations) ||
                const DeepCollectionEquality()
                    .equals(other.organizations, organizations)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }
}

extension $ExtapiCreateUserRequestExtension on ExtapiCreateUserRequest {
  ExtapiCreateUserRequest copyWith(
      {List<ExtapiUserOrganization>? organizations,
      String? password,
      ExtapiUser? user}) {
    return ExtapiCreateUserRequest(
        organizations: organizations ?? this.organizations,
        password: password ?? this.password,
        user: user ?? this.user);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiCreateUserResponse {
  ExtapiCreateUserResponse({
    this.id,
  });

  factory ExtapiCreateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiCreateUserResponseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ExtapiCreateUserResponseFromJson;
  static const toJsonFactory = _$ExtapiCreateUserResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiCreateUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiCreateUserResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }
}

extension $ExtapiCreateUserResponseExtension on ExtapiCreateUserResponse {
  ExtapiCreateUserResponse copyWith({String? id}) {
    return ExtapiCreateUserResponse(id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDFIAuthenticateUserResponse {
  ExtapiDFIAuthenticateUserResponse({
    this.mxcBalance,
    this.organizationID,
    this.userEmail,
  });

  factory ExtapiDFIAuthenticateUserResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiDFIAuthenticateUserResponseFromJson(json);

  @JsonKey(name: 'mxcBalance')
  final String? mxcBalance;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'userEmail')
  final String? userEmail;
  static const fromJsonFactory = _$ExtapiDFIAuthenticateUserResponseFromJson;
  static const toJsonFactory = _$ExtapiDFIAuthenticateUserResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiDFIAuthenticateUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDFIAuthenticateUserResponse &&
            (identical(other.mxcBalance, mxcBalance) ||
                const DeepCollectionEquality()
                    .equals(other.mxcBalance, mxcBalance)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)));
  }
}

extension $ExtapiDFIAuthenticateUserResponseExtension
    on ExtapiDFIAuthenticateUserResponse {
  ExtapiDFIAuthenticateUserResponse copyWith(
      {String? mxcBalance, String? organizationID, String? userEmail}) {
    return ExtapiDFIAuthenticateUserResponse(
        mxcBalance: mxcBalance ?? this.mxcBalance,
        organizationID: organizationID ?? this.organizationID,
        userEmail: userEmail ?? this.userEmail);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXBondInfoRequest {
  ExtapiDHXBondInfoRequest({
    this.orgId,
  });

  factory ExtapiDHXBondInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXBondInfoRequestFromJson(json);

  @JsonKey(name: 'orgId')
  final String? orgId;
  static const fromJsonFactory = _$ExtapiDHXBondInfoRequestFromJson;
  static const toJsonFactory = _$ExtapiDHXBondInfoRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXBondInfoRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXBondInfoRequest &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)));
  }
}

extension $ExtapiDHXBondInfoRequestExtension on ExtapiDHXBondInfoRequest {
  ExtapiDHXBondInfoRequest copyWith({String? orgId}) {
    return ExtapiDHXBondInfoRequest(orgId: orgId ?? this.orgId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXBondInfoResponse {
  ExtapiDHXBondInfoResponse({
    this.dhxBonded,
    this.dhxCoolingOff,
    this.dhxCoolingOffTotal,
    this.dhxUnbonding,
    this.dhxUnbondingTotal,
    this.orgId,
  });

  factory ExtapiDHXBondInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXBondInfoResponseFromJson(json);

  @JsonKey(name: 'dhxBonded')
  final String? dhxBonded;
  @JsonKey(name: 'dhxCoolingOff', defaultValue: <ExtapiDHXCoolingOff>[])
  final List<ExtapiDHXCoolingOff>? dhxCoolingOff;
  @JsonKey(name: 'dhxCoolingOffTotal')
  final String? dhxCoolingOffTotal;
  @JsonKey(name: 'dhxUnbonding', defaultValue: <ExtapiDHXUnbonding>[])
  final List<ExtapiDHXUnbonding>? dhxUnbonding;
  @JsonKey(name: 'dhxUnbondingTotal')
  final String? dhxUnbondingTotal;
  @JsonKey(name: 'orgId')
  final String? orgId;
  static const fromJsonFactory = _$ExtapiDHXBondInfoResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXBondInfoResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXBondInfoResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXBondInfoResponse &&
            (identical(other.dhxBonded, dhxBonded) ||
                const DeepCollectionEquality()
                    .equals(other.dhxBonded, dhxBonded)) &&
            (identical(other.dhxCoolingOff, dhxCoolingOff) ||
                const DeepCollectionEquality()
                    .equals(other.dhxCoolingOff, dhxCoolingOff)) &&
            (identical(other.dhxCoolingOffTotal, dhxCoolingOffTotal) ||
                const DeepCollectionEquality()
                    .equals(other.dhxCoolingOffTotal, dhxCoolingOffTotal)) &&
            (identical(other.dhxUnbonding, dhxUnbonding) ||
                const DeepCollectionEquality()
                    .equals(other.dhxUnbonding, dhxUnbonding)) &&
            (identical(other.dhxUnbondingTotal, dhxUnbondingTotal) ||
                const DeepCollectionEquality()
                    .equals(other.dhxUnbondingTotal, dhxUnbondingTotal)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)));
  }
}

extension $ExtapiDHXBondInfoResponseExtension on ExtapiDHXBondInfoResponse {
  ExtapiDHXBondInfoResponse copyWith(
      {String? dhxBonded,
      List<ExtapiDHXCoolingOff>? dhxCoolingOff,
      String? dhxCoolingOffTotal,
      List<ExtapiDHXUnbonding>? dhxUnbonding,
      String? dhxUnbondingTotal,
      String? orgId}) {
    return ExtapiDHXBondInfoResponse(
        dhxBonded: dhxBonded ?? this.dhxBonded,
        dhxCoolingOff: dhxCoolingOff ?? this.dhxCoolingOff,
        dhxCoolingOffTotal: dhxCoolingOffTotal ?? this.dhxCoolingOffTotal,
        dhxUnbonding: dhxUnbonding ?? this.dhxUnbonding,
        dhxUnbondingTotal: dhxUnbondingTotal ?? this.dhxUnbondingTotal,
        orgId: orgId ?? this.orgId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXBondRequest {
  ExtapiDHXBondRequest({
    this.amount,
    this.orgId,
  });

  factory ExtapiDHXBondRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXBondRequestFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'orgId')
  final String? orgId;
  static const fromJsonFactory = _$ExtapiDHXBondRequestFromJson;
  static const toJsonFactory = _$ExtapiDHXBondRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXBondRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXBondRequest &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)));
  }
}

extension $ExtapiDHXBondRequestExtension on ExtapiDHXBondRequest {
  ExtapiDHXBondRequest copyWith({String? amount, String? orgId}) {
    return ExtapiDHXBondRequest(
        amount: amount ?? this.amount, orgId: orgId ?? this.orgId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXBondResponse {
  ExtapiDHXBondResponse();

  factory ExtapiDHXBondResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXBondResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiDHXBondResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXBondResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXBondResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXCoolingOff {
  ExtapiDHXCoolingOff({
    this.amount,
    this.created,
  });

  factory ExtapiDHXCoolingOff.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXCoolingOffFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'created')
  final DateTime? created;
  static const fromJsonFactory = _$ExtapiDHXCoolingOffFromJson;
  static const toJsonFactory = _$ExtapiDHXCoolingOffToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXCoolingOffToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXCoolingOff &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }
}

extension $ExtapiDHXCoolingOffExtension on ExtapiDHXCoolingOff {
  ExtapiDHXCoolingOff copyWith({String? amount, DateTime? created}) {
    return ExtapiDHXCoolingOff(
        amount: amount ?? this.amount, created: created ?? this.created);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXCreateCouncilRequest {
  ExtapiDHXCreateCouncilRequest({
    this.amount,
    this.boost,
    this.currency,
    this.lockMonths,
    this.name,
    this.organizationId,
  });

  factory ExtapiDHXCreateCouncilRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXCreateCouncilRequestFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'boost')
  final String? boost;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'lockMonths')
  final String? lockMonths;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'organizationId')
  final String? organizationId;
  static const fromJsonFactory = _$ExtapiDHXCreateCouncilRequestFromJson;
  static const toJsonFactory = _$ExtapiDHXCreateCouncilRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXCreateCouncilRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXCreateCouncilRequest &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.boost, boost) ||
                const DeepCollectionEquality().equals(other.boost, boost)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.lockMonths, lockMonths) ||
                const DeepCollectionEquality()
                    .equals(other.lockMonths, lockMonths)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.organizationId, organizationId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationId, organizationId)));
  }
}

extension $ExtapiDHXCreateCouncilRequestExtension
    on ExtapiDHXCreateCouncilRequest {
  ExtapiDHXCreateCouncilRequest copyWith(
      {String? amount,
      String? boost,
      String? currency,
      String? lockMonths,
      String? name,
      String? organizationId}) {
    return ExtapiDHXCreateCouncilRequest(
        amount: amount ?? this.amount,
        boost: boost ?? this.boost,
        currency: currency ?? this.currency,
        lockMonths: lockMonths ?? this.lockMonths,
        name: name ?? this.name,
        organizationId: organizationId ?? this.organizationId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXCreateCouncilResponse {
  ExtapiDHXCreateCouncilResponse({
    this.councilId,
    this.stakeId,
  });

  factory ExtapiDHXCreateCouncilResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXCreateCouncilResponseFromJson(json);

  @JsonKey(name: 'councilId')
  final String? councilId;
  @JsonKey(name: 'stakeId')
  final String? stakeId;
  static const fromJsonFactory = _$ExtapiDHXCreateCouncilResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXCreateCouncilResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXCreateCouncilResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXCreateCouncilResponse &&
            (identical(other.councilId, councilId) ||
                const DeepCollectionEquality()
                    .equals(other.councilId, councilId)) &&
            (identical(other.stakeId, stakeId) ||
                const DeepCollectionEquality().equals(other.stakeId, stakeId)));
  }
}

extension $ExtapiDHXCreateCouncilResponseExtension
    on ExtapiDHXCreateCouncilResponse {
  ExtapiDHXCreateCouncilResponse copyWith(
      {String? councilId, String? stakeId}) {
    return ExtapiDHXCreateCouncilResponse(
        councilId: councilId ?? this.councilId,
        stakeId: stakeId ?? this.stakeId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXCreateStakeRequest {
  ExtapiDHXCreateStakeRequest({
    this.amount,
    this.boost,
    this.councilId,
    this.currency,
    this.lockMonths,
    this.organizationId,
  });

  factory ExtapiDHXCreateStakeRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXCreateStakeRequestFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'boost')
  final String? boost;
  @JsonKey(name: 'councilId')
  final String? councilId;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'lockMonths')
  final String? lockMonths;
  @JsonKey(name: 'organizationId')
  final String? organizationId;
  static const fromJsonFactory = _$ExtapiDHXCreateStakeRequestFromJson;
  static const toJsonFactory = _$ExtapiDHXCreateStakeRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXCreateStakeRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXCreateStakeRequest &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.boost, boost) ||
                const DeepCollectionEquality().equals(other.boost, boost)) &&
            (identical(other.councilId, councilId) ||
                const DeepCollectionEquality()
                    .equals(other.councilId, councilId)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.lockMonths, lockMonths) ||
                const DeepCollectionEquality()
                    .equals(other.lockMonths, lockMonths)) &&
            (identical(other.organizationId, organizationId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationId, organizationId)));
  }
}

extension $ExtapiDHXCreateStakeRequestExtension on ExtapiDHXCreateStakeRequest {
  ExtapiDHXCreateStakeRequest copyWith(
      {String? amount,
      String? boost,
      String? councilId,
      String? currency,
      String? lockMonths,
      String? organizationId}) {
    return ExtapiDHXCreateStakeRequest(
        amount: amount ?? this.amount,
        boost: boost ?? this.boost,
        councilId: councilId ?? this.councilId,
        currency: currency ?? this.currency,
        lockMonths: lockMonths ?? this.lockMonths,
        organizationId: organizationId ?? this.organizationId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXCreateStakeResponse {
  ExtapiDHXCreateStakeResponse({
    this.stakeId,
  });

  factory ExtapiDHXCreateStakeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXCreateStakeResponseFromJson(json);

  @JsonKey(name: 'stakeId')
  final String? stakeId;
  static const fromJsonFactory = _$ExtapiDHXCreateStakeResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXCreateStakeResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXCreateStakeResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXCreateStakeResponse &&
            (identical(other.stakeId, stakeId) ||
                const DeepCollectionEquality().equals(other.stakeId, stakeId)));
  }
}

extension $ExtapiDHXCreateStakeResponseExtension
    on ExtapiDHXCreateStakeResponse {
  ExtapiDHXCreateStakeResponse copyWith({String? stakeId}) {
    return ExtapiDHXCreateStakeResponse(stakeId: stakeId ?? this.stakeId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXEstimateMiningResponse {
  ExtapiDHXEstimateMiningResponse({
    this.dhxBondRecommended,
    this.dhxBonded,
    this.dhxMiningLimit,
    this.estimatedDhxRevenue,
    this.estimatedMiningPower,
    this.gateways,
  });

  factory ExtapiDHXEstimateMiningResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXEstimateMiningResponseFromJson(json);

  @JsonKey(name: 'dhxBondRecommended')
  final String? dhxBondRecommended;
  @JsonKey(name: 'dhxBonded')
  final String? dhxBonded;
  @JsonKey(name: 'dhxMiningLimit')
  final String? dhxMiningLimit;
  @JsonKey(name: 'estimatedDhxRevenue')
  final String? estimatedDhxRevenue;
  @JsonKey(name: 'estimatedMiningPower')
  final String? estimatedMiningPower;
  @JsonKey(name: 'gateways')
  final String? gateways;
  static const fromJsonFactory = _$ExtapiDHXEstimateMiningResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXEstimateMiningResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiDHXEstimateMiningResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXEstimateMiningResponse &&
            (identical(other.dhxBondRecommended, dhxBondRecommended) ||
                const DeepCollectionEquality()
                    .equals(other.dhxBondRecommended, dhxBondRecommended)) &&
            (identical(other.dhxBonded, dhxBonded) ||
                const DeepCollectionEquality()
                    .equals(other.dhxBonded, dhxBonded)) &&
            (identical(other.dhxMiningLimit, dhxMiningLimit) ||
                const DeepCollectionEquality()
                    .equals(other.dhxMiningLimit, dhxMiningLimit)) &&
            (identical(other.estimatedDhxRevenue, estimatedDhxRevenue) ||
                const DeepCollectionEquality()
                    .equals(other.estimatedDhxRevenue, estimatedDhxRevenue)) &&
            (identical(other.estimatedMiningPower, estimatedMiningPower) ||
                const DeepCollectionEquality().equals(
                    other.estimatedMiningPower, estimatedMiningPower)) &&
            (identical(other.gateways, gateways) ||
                const DeepCollectionEquality()
                    .equals(other.gateways, gateways)));
  }
}

extension $ExtapiDHXEstimateMiningResponseExtension
    on ExtapiDHXEstimateMiningResponse {
  ExtapiDHXEstimateMiningResponse copyWith(
      {String? dhxBondRecommended,
      String? dhxBonded,
      String? dhxMiningLimit,
      String? estimatedDhxRevenue,
      String? estimatedMiningPower,
      String? gateways}) {
    return ExtapiDHXEstimateMiningResponse(
        dhxBondRecommended: dhxBondRecommended ?? this.dhxBondRecommended,
        dhxBonded: dhxBonded ?? this.dhxBonded,
        dhxMiningLimit: dhxMiningLimit ?? this.dhxMiningLimit,
        estimatedDhxRevenue: estimatedDhxRevenue ?? this.estimatedDhxRevenue,
        estimatedMiningPower: estimatedMiningPower ?? this.estimatedMiningPower,
        gateways: gateways ?? this.gateways);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXGetLastMiningResponse {
  ExtapiDHXGetLastMiningResponse({
    this.councilDhxAmount,
    this.councilId,
    this.councilMiningPower,
    this.councilName,
    this.date,
    this.dhxAllocated,
    this.dhxAmount,
    this.globalMiningPower,
    this.miningPower,
    this.orgDhxAmount,
    this.orgDhxLimit,
    this.orgId,
    this.orgMiningPower,
  });

  factory ExtapiDHXGetLastMiningResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXGetLastMiningResponseFromJson(json);

  @JsonKey(name: 'councilDhxAmount')
  final String? councilDhxAmount;
  @JsonKey(name: 'councilId')
  final String? councilId;
  @JsonKey(name: 'councilMiningPower')
  final String? councilMiningPower;
  @JsonKey(name: 'councilName')
  final String? councilName;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'dhxAllocated')
  final String? dhxAllocated;
  @JsonKey(name: 'dhxAmount')
  final String? dhxAmount;
  @JsonKey(name: 'globalMiningPower')
  final String? globalMiningPower;
  @JsonKey(name: 'miningPower')
  final String? miningPower;
  @JsonKey(name: 'orgDhxAmount')
  final String? orgDhxAmount;
  @JsonKey(name: 'orgDhxLimit')
  final String? orgDhxLimit;
  @JsonKey(name: 'orgId')
  final String? orgId;
  @JsonKey(name: 'orgMiningPower')
  final String? orgMiningPower;
  static const fromJsonFactory = _$ExtapiDHXGetLastMiningResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXGetLastMiningResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXGetLastMiningResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXGetLastMiningResponse &&
            (identical(other.councilDhxAmount, councilDhxAmount) ||
                const DeepCollectionEquality()
                    .equals(other.councilDhxAmount, councilDhxAmount)) &&
            (identical(other.councilId, councilId) ||
                const DeepCollectionEquality()
                    .equals(other.councilId, councilId)) &&
            (identical(other.councilMiningPower, councilMiningPower) ||
                const DeepCollectionEquality()
                    .equals(other.councilMiningPower, councilMiningPower)) &&
            (identical(other.councilName, councilName) ||
                const DeepCollectionEquality()
                    .equals(other.councilName, councilName)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.dhxAllocated, dhxAllocated) ||
                const DeepCollectionEquality()
                    .equals(other.dhxAllocated, dhxAllocated)) &&
            (identical(other.dhxAmount, dhxAmount) ||
                const DeepCollectionEquality()
                    .equals(other.dhxAmount, dhxAmount)) &&
            (identical(other.globalMiningPower, globalMiningPower) ||
                const DeepCollectionEquality()
                    .equals(other.globalMiningPower, globalMiningPower)) &&
            (identical(other.miningPower, miningPower) ||
                const DeepCollectionEquality()
                    .equals(other.miningPower, miningPower)) &&
            (identical(other.orgDhxAmount, orgDhxAmount) ||
                const DeepCollectionEquality()
                    .equals(other.orgDhxAmount, orgDhxAmount)) &&
            (identical(other.orgDhxLimit, orgDhxLimit) ||
                const DeepCollectionEquality()
                    .equals(other.orgDhxLimit, orgDhxLimit)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.orgMiningPower, orgMiningPower) ||
                const DeepCollectionEquality()
                    .equals(other.orgMiningPower, orgMiningPower)));
  }
}

extension $ExtapiDHXGetLastMiningResponseExtension
    on ExtapiDHXGetLastMiningResponse {
  ExtapiDHXGetLastMiningResponse copyWith(
      {String? councilDhxAmount,
      String? councilId,
      String? councilMiningPower,
      String? councilName,
      DateTime? date,
      String? dhxAllocated,
      String? dhxAmount,
      String? globalMiningPower,
      String? miningPower,
      String? orgDhxAmount,
      String? orgDhxLimit,
      String? orgId,
      String? orgMiningPower}) {
    return ExtapiDHXGetLastMiningResponse(
        councilDhxAmount: councilDhxAmount ?? this.councilDhxAmount,
        councilId: councilId ?? this.councilId,
        councilMiningPower: councilMiningPower ?? this.councilMiningPower,
        councilName: councilName ?? this.councilName,
        date: date ?? this.date,
        dhxAllocated: dhxAllocated ?? this.dhxAllocated,
        dhxAmount: dhxAmount ?? this.dhxAmount,
        globalMiningPower: globalMiningPower ?? this.globalMiningPower,
        miningPower: miningPower ?? this.miningPower,
        orgDhxAmount: orgDhxAmount ?? this.orgDhxAmount,
        orgDhxLimit: orgDhxLimit ?? this.orgDhxLimit,
        orgId: orgId ?? this.orgId,
        orgMiningPower: orgMiningPower ?? this.orgMiningPower);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXListCouncilsResponse {
  ExtapiDHXListCouncilsResponse({
    this.council,
  });

  factory ExtapiDHXListCouncilsResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXListCouncilsResponseFromJson(json);

  @JsonKey(name: 'council', defaultValue: <ExtapiCouncil>[])
  final List<ExtapiCouncil>? council;
  static const fromJsonFactory = _$ExtapiDHXListCouncilsResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXListCouncilsResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXListCouncilsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXListCouncilsResponse &&
            (identical(other.council, council) ||
                const DeepCollectionEquality().equals(other.council, council)));
  }
}

extension $ExtapiDHXListCouncilsResponseExtension
    on ExtapiDHXListCouncilsResponse {
  ExtapiDHXListCouncilsResponse copyWith({List<ExtapiCouncil>? council}) {
    return ExtapiDHXListCouncilsResponse(council: council ?? this.council);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXListStakesResponse {
  ExtapiDHXListStakesResponse({
    this.stake,
  });

  factory ExtapiDHXListStakesResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXListStakesResponseFromJson(json);

  @JsonKey(name: 'stake', defaultValue: <ExtapiDHXStake>[])
  final List<ExtapiDHXStake>? stake;
  static const fromJsonFactory = _$ExtapiDHXListStakesResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXListStakesResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXListStakesResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXListStakesResponse &&
            (identical(other.stake, stake) ||
                const DeepCollectionEquality().equals(other.stake, stake)));
  }
}

extension $ExtapiDHXListStakesResponseExtension on ExtapiDHXListStakesResponse {
  ExtapiDHXListStakesResponse copyWith({List<ExtapiDHXStake>? stake}) {
    return ExtapiDHXListStakesResponse(stake: stake ?? this.stake);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXMining {
  ExtapiDHXMining({
    this.miningDate,
    this.orgDhxBonded,
    this.orgDhxMined,
    this.orgId,
    this.orgMiningPower,
  });

  factory ExtapiDHXMining.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXMiningFromJson(json);

  @JsonKey(name: 'miningDate')
  final DateTime? miningDate;
  @JsonKey(name: 'orgDhxBonded')
  final String? orgDhxBonded;
  @JsonKey(name: 'orgDhxMined')
  final String? orgDhxMined;
  @JsonKey(name: 'orgId')
  final String? orgId;
  @JsonKey(name: 'orgMiningPower')
  final String? orgMiningPower;
  static const fromJsonFactory = _$ExtapiDHXMiningFromJson;
  static const toJsonFactory = _$ExtapiDHXMiningToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXMiningToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXMining &&
            (identical(other.miningDate, miningDate) ||
                const DeepCollectionEquality()
                    .equals(other.miningDate, miningDate)) &&
            (identical(other.orgDhxBonded, orgDhxBonded) ||
                const DeepCollectionEquality()
                    .equals(other.orgDhxBonded, orgDhxBonded)) &&
            (identical(other.orgDhxMined, orgDhxMined) ||
                const DeepCollectionEquality()
                    .equals(other.orgDhxMined, orgDhxMined)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.orgMiningPower, orgMiningPower) ||
                const DeepCollectionEquality()
                    .equals(other.orgMiningPower, orgMiningPower)));
  }
}

extension $ExtapiDHXMiningExtension on ExtapiDHXMining {
  ExtapiDHXMining copyWith(
      {DateTime? miningDate,
      String? orgDhxBonded,
      String? orgDhxMined,
      String? orgId,
      String? orgMiningPower}) {
    return ExtapiDHXMining(
        miningDate: miningDate ?? this.miningDate,
        orgDhxBonded: orgDhxBonded ?? this.orgDhxBonded,
        orgDhxMined: orgDhxMined ?? this.orgDhxMined,
        orgId: orgId ?? this.orgId,
        orgMiningPower: orgMiningPower ?? this.orgMiningPower);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXMiningHistoryResponse {
  ExtapiDHXMiningHistoryResponse({
    this.dhxMining,
  });

  factory ExtapiDHXMiningHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXMiningHistoryResponseFromJson(json);

  @JsonKey(name: 'dhxMining', defaultValue: <ExtapiDHXMining>[])
  final List<ExtapiDHXMining>? dhxMining;
  static const fromJsonFactory = _$ExtapiDHXMiningHistoryResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXMiningHistoryResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXMiningHistoryResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXMiningHistoryResponse &&
            (identical(other.dhxMining, dhxMining) ||
                const DeepCollectionEquality()
                    .equals(other.dhxMining, dhxMining)));
  }
}

extension $ExtapiDHXMiningHistoryResponseExtension
    on ExtapiDHXMiningHistoryResponse {
  ExtapiDHXMiningHistoryResponse copyWith({List<ExtapiDHXMining>? dhxMining}) {
    return ExtapiDHXMiningHistoryResponse(
        dhxMining: dhxMining ?? this.dhxMining);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXStake {
  ExtapiDHXStake({
    this.amount,
    this.boost,
    this.closed,
    this.councilId,
    this.councilName,
    this.created,
    this.currency,
    this.dhxMined,
    this.id,
    this.lockTill,
    this.organizationId,
  });

  factory ExtapiDHXStake.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXStakeFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'boost')
  final String? boost;
  @JsonKey(name: 'closed')
  final bool? closed;
  @JsonKey(name: 'councilId')
  final String? councilId;
  @JsonKey(name: 'councilName')
  final String? councilName;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'dhxMined')
  final String? dhxMined;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'lockTill')
  final DateTime? lockTill;
  @JsonKey(name: 'organizationId')
  final String? organizationId;
  static const fromJsonFactory = _$ExtapiDHXStakeFromJson;
  static const toJsonFactory = _$ExtapiDHXStakeToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXStakeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXStake &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.boost, boost) ||
                const DeepCollectionEquality().equals(other.boost, boost)) &&
            (identical(other.closed, closed) ||
                const DeepCollectionEquality().equals(other.closed, closed)) &&
            (identical(other.councilId, councilId) ||
                const DeepCollectionEquality()
                    .equals(other.councilId, councilId)) &&
            (identical(other.councilName, councilName) ||
                const DeepCollectionEquality()
                    .equals(other.councilName, councilName)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.dhxMined, dhxMined) ||
                const DeepCollectionEquality()
                    .equals(other.dhxMined, dhxMined)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lockTill, lockTill) ||
                const DeepCollectionEquality()
                    .equals(other.lockTill, lockTill)) &&
            (identical(other.organizationId, organizationId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationId, organizationId)));
  }
}

extension $ExtapiDHXStakeExtension on ExtapiDHXStake {
  ExtapiDHXStake copyWith(
      {String? amount,
      String? boost,
      bool? closed,
      String? councilId,
      String? councilName,
      DateTime? created,
      String? currency,
      String? dhxMined,
      String? id,
      DateTime? lockTill,
      String? organizationId}) {
    return ExtapiDHXStake(
        amount: amount ?? this.amount,
        boost: boost ?? this.boost,
        closed: closed ?? this.closed,
        councilId: councilId ?? this.councilId,
        councilName: councilName ?? this.councilName,
        created: created ?? this.created,
        currency: currency ?? this.currency,
        dhxMined: dhxMined ?? this.dhxMined,
        id: id ?? this.id,
        lockTill: lockTill ?? this.lockTill,
        organizationId: organizationId ?? this.organizationId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXTotalMiningResponse {
  ExtapiDHXTotalMiningResponse({
    this.amount,
  });

  factory ExtapiDHXTotalMiningResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXTotalMiningResponseFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  static const fromJsonFactory = _$ExtapiDHXTotalMiningResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXTotalMiningResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXTotalMiningResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXTotalMiningResponse &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }
}

extension $ExtapiDHXTotalMiningResponseExtension
    on ExtapiDHXTotalMiningResponse {
  ExtapiDHXTotalMiningResponse copyWith({String? amount}) {
    return ExtapiDHXTotalMiningResponse(amount: amount ?? this.amount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXUnbondRequest {
  ExtapiDHXUnbondRequest({
    this.amount,
    this.orgId,
  });

  factory ExtapiDHXUnbondRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXUnbondRequestFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'orgId')
  final String? orgId;
  static const fromJsonFactory = _$ExtapiDHXUnbondRequestFromJson;
  static const toJsonFactory = _$ExtapiDHXUnbondRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXUnbondRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXUnbondRequest &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)));
  }
}

extension $ExtapiDHXUnbondRequestExtension on ExtapiDHXUnbondRequest {
  ExtapiDHXUnbondRequest copyWith({String? amount, String? orgId}) {
    return ExtapiDHXUnbondRequest(
        amount: amount ?? this.amount, orgId: orgId ?? this.orgId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXUnbondResponse {
  ExtapiDHXUnbondResponse();

  factory ExtapiDHXUnbondResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXUnbondResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiDHXUnbondResponseFromJson;
  static const toJsonFactory = _$ExtapiDHXUnbondResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXUnbondResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiDHXUnbonding {
  ExtapiDHXUnbonding({
    this.amount,
    this.created,
  });

  factory ExtapiDHXUnbonding.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDHXUnbondingFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'created')
  final DateTime? created;
  static const fromJsonFactory = _$ExtapiDHXUnbondingFromJson;
  static const toJsonFactory = _$ExtapiDHXUnbondingToJson;
  Map<String, dynamic> toJson() => _$ExtapiDHXUnbondingToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDHXUnbonding &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }
}

extension $ExtapiDHXUnbondingExtension on ExtapiDHXUnbonding {
  ExtapiDHXUnbonding copyWith({String? amount, DateTime? created}) {
    return ExtapiDHXUnbonding(
        amount: amount ?? this.amount, created: created ?? this.created);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDeactivateUserRequest {
  ExtapiDeactivateUserRequest({
    this.reason,
    this.userID,
  });

  factory ExtapiDeactivateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDeactivateUserRequestFromJson(json);

  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'userID')
  final String? userID;
  static const fromJsonFactory = _$ExtapiDeactivateUserRequestFromJson;
  static const toJsonFactory = _$ExtapiDeactivateUserRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiDeactivateUserRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDeactivateUserRequest &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }
}

extension $ExtapiDeactivateUserRequestExtension on ExtapiDeactivateUserRequest {
  ExtapiDeactivateUserRequest copyWith({String? reason, String? userID}) {
    return ExtapiDeactivateUserRequest(
        reason: reason ?? this.reason, userID: userID ?? this.userID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDeactivateUserResponse {
  ExtapiDeactivateUserResponse({
    this.message,
  });

  factory ExtapiDeactivateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDeactivateUserResponseFromJson(json);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ExtapiDeactivateUserResponseFromJson;
  static const toJsonFactory = _$ExtapiDeactivateUserResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiDeactivateUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDeactivateUserResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }
}

extension $ExtapiDeactivateUserResponseExtension
    on ExtapiDeactivateUserResponse {
  ExtapiDeactivateUserResponse copyWith({String? message}) {
    return ExtapiDeactivateUserResponse(message: message ?? this.message);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDevice {
  ExtapiDevice({
    this.applicationID,
    this.description,
    this.devEUI,
    this.deviceProfileID,
    this.isDisabled,
    this.name,
    this.referenceAltitude,
    this.skipFCntCheck,
    this.tags,
    this.variables,
  });

  factory ExtapiDevice.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDeviceFromJson(json);

  @JsonKey(name: 'applicationID')
  final String? applicationID;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'devEUI')
  final String? devEUI;
  @JsonKey(name: 'deviceProfileID')
  final String? deviceProfileID;
  @JsonKey(name: 'isDisabled')
  final bool? isDisabled;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'referenceAltitude')
  final double? referenceAltitude;
  @JsonKey(name: 'skipFCntCheck')
  final bool? skipFCntCheck;
  @JsonKey(name: 'tags')
  final Object? tags;
  @JsonKey(name: 'variables')
  final Object? variables;
  static const fromJsonFactory = _$ExtapiDeviceFromJson;
  static const toJsonFactory = _$ExtapiDeviceToJson;
  Map<String, dynamic> toJson() => _$ExtapiDeviceToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDevice &&
            (identical(other.applicationID, applicationID) ||
                const DeepCollectionEquality()
                    .equals(other.applicationID, applicationID)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.devEUI, devEUI) ||
                const DeepCollectionEquality().equals(other.devEUI, devEUI)) &&
            (identical(other.deviceProfileID, deviceProfileID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceProfileID, deviceProfileID)) &&
            (identical(other.isDisabled, isDisabled) ||
                const DeepCollectionEquality()
                    .equals(other.isDisabled, isDisabled)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.referenceAltitude, referenceAltitude) ||
                const DeepCollectionEquality()
                    .equals(other.referenceAltitude, referenceAltitude)) &&
            (identical(other.skipFCntCheck, skipFCntCheck) ||
                const DeepCollectionEquality()
                    .equals(other.skipFCntCheck, skipFCntCheck)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.variables, variables) ||
                const DeepCollectionEquality()
                    .equals(other.variables, variables)));
  }
}

extension $ExtapiDeviceExtension on ExtapiDevice {
  ExtapiDevice copyWith(
      {String? applicationID,
      String? description,
      String? devEUI,
      String? deviceProfileID,
      bool? isDisabled,
      String? name,
      double? referenceAltitude,
      bool? skipFCntCheck,
      Object? tags,
      Object? variables}) {
    return ExtapiDevice(
        applicationID: applicationID ?? this.applicationID,
        description: description ?? this.description,
        devEUI: devEUI ?? this.devEUI,
        deviceProfileID: deviceProfileID ?? this.deviceProfileID,
        isDisabled: isDisabled ?? this.isDisabled,
        name: name ?? this.name,
        referenceAltitude: referenceAltitude ?? this.referenceAltitude,
        skipFCntCheck: skipFCntCheck ?? this.skipFCntCheck,
        tags: tags ?? this.tags,
        variables: variables ?? this.variables);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDeviceActivation {
  ExtapiDeviceActivation({
    this.aFCntDown,
    this.appSKey,
    this.devAddr,
    this.devEUI,
    this.fCntUp,
    this.fNwkSIntKey,
    this.nFCntDown,
    this.nwkSEncKey,
    this.sNwkSIntKey,
  });

  factory ExtapiDeviceActivation.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDeviceActivationFromJson(json);

  @JsonKey(name: 'aFCntDown')
  final int? aFCntDown;
  @JsonKey(name: 'appSKey')
  final String? appSKey;
  @JsonKey(name: 'devAddr')
  final String? devAddr;
  @JsonKey(name: 'devEUI')
  final String? devEUI;
  @JsonKey(name: 'fCntUp')
  final int? fCntUp;
  @JsonKey(name: 'fNwkSIntKey')
  final String? fNwkSIntKey;
  @JsonKey(name: 'nFCntDown')
  final int? nFCntDown;
  @JsonKey(name: 'nwkSEncKey')
  final String? nwkSEncKey;
  @JsonKey(name: 'sNwkSIntKey')
  final String? sNwkSIntKey;
  static const fromJsonFactory = _$ExtapiDeviceActivationFromJson;
  static const toJsonFactory = _$ExtapiDeviceActivationToJson;
  Map<String, dynamic> toJson() => _$ExtapiDeviceActivationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDeviceActivation &&
            (identical(other.aFCntDown, aFCntDown) ||
                const DeepCollectionEquality()
                    .equals(other.aFCntDown, aFCntDown)) &&
            (identical(other.appSKey, appSKey) ||
                const DeepCollectionEquality()
                    .equals(other.appSKey, appSKey)) &&
            (identical(other.devAddr, devAddr) ||
                const DeepCollectionEquality()
                    .equals(other.devAddr, devAddr)) &&
            (identical(other.devEUI, devEUI) ||
                const DeepCollectionEquality().equals(other.devEUI, devEUI)) &&
            (identical(other.fCntUp, fCntUp) ||
                const DeepCollectionEquality().equals(other.fCntUp, fCntUp)) &&
            (identical(other.fNwkSIntKey, fNwkSIntKey) ||
                const DeepCollectionEquality()
                    .equals(other.fNwkSIntKey, fNwkSIntKey)) &&
            (identical(other.nFCntDown, nFCntDown) ||
                const DeepCollectionEquality()
                    .equals(other.nFCntDown, nFCntDown)) &&
            (identical(other.nwkSEncKey, nwkSEncKey) ||
                const DeepCollectionEquality()
                    .equals(other.nwkSEncKey, nwkSEncKey)) &&
            (identical(other.sNwkSIntKey, sNwkSIntKey) ||
                const DeepCollectionEquality()
                    .equals(other.sNwkSIntKey, sNwkSIntKey)));
  }
}

extension $ExtapiDeviceActivationExtension on ExtapiDeviceActivation {
  ExtapiDeviceActivation copyWith(
      {int? aFCntDown,
      String? appSKey,
      String? devAddr,
      String? devEUI,
      int? fCntUp,
      String? fNwkSIntKey,
      int? nFCntDown,
      String? nwkSEncKey,
      String? sNwkSIntKey}) {
    return ExtapiDeviceActivation(
        aFCntDown: aFCntDown ?? this.aFCntDown,
        appSKey: appSKey ?? this.appSKey,
        devAddr: devAddr ?? this.devAddr,
        devEUI: devEUI ?? this.devEUI,
        fCntUp: fCntUp ?? this.fCntUp,
        fNwkSIntKey: fNwkSIntKey ?? this.fNwkSIntKey,
        nFCntDown: nFCntDown ?? this.nFCntDown,
        nwkSEncKey: nwkSEncKey ?? this.nwkSEncKey,
        sNwkSIntKey: sNwkSIntKey ?? this.sNwkSIntKey);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDeviceKeys {
  ExtapiDeviceKeys({
    this.appKey,
    this.devEUI,
    this.nwkKey,
  });

  factory ExtapiDeviceKeys.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDeviceKeysFromJson(json);

  @JsonKey(name: 'appKey')
  final String? appKey;
  @JsonKey(name: 'devEUI')
  final String? devEUI;
  @JsonKey(name: 'nwkKey')
  final String? nwkKey;
  static const fromJsonFactory = _$ExtapiDeviceKeysFromJson;
  static const toJsonFactory = _$ExtapiDeviceKeysToJson;
  Map<String, dynamic> toJson() => _$ExtapiDeviceKeysToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDeviceKeys &&
            (identical(other.appKey, appKey) ||
                const DeepCollectionEquality().equals(other.appKey, appKey)) &&
            (identical(other.devEUI, devEUI) ||
                const DeepCollectionEquality().equals(other.devEUI, devEUI)) &&
            (identical(other.nwkKey, nwkKey) ||
                const DeepCollectionEquality().equals(other.nwkKey, nwkKey)));
  }
}

extension $ExtapiDeviceKeysExtension on ExtapiDeviceKeys {
  ExtapiDeviceKeys copyWith({String? appKey, String? devEUI, String? nwkKey}) {
    return ExtapiDeviceKeys(
        appKey: appKey ?? this.appKey,
        devEUI: devEUI ?? this.devEUI,
        nwkKey: nwkKey ?? this.nwkKey);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDeviceListItem {
  ExtapiDeviceListItem({
    this.applicationID,
    this.description,
    this.devEUI,
    this.deviceProfileID,
    this.deviceProfileName,
    this.deviceStatusBattery,
    this.deviceStatusBatteryLevel,
    this.deviceStatusBatteryLevelUnavailable,
    this.deviceStatusExternalPowerSource,
    this.deviceStatusMargin,
    this.lastSeenAt,
    this.name,
  });

  factory ExtapiDeviceListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDeviceListItemFromJson(json);

  @JsonKey(name: 'applicationID')
  final String? applicationID;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'devEUI')
  final String? devEUI;
  @JsonKey(name: 'deviceProfileID')
  final String? deviceProfileID;
  @JsonKey(name: 'deviceProfileName')
  final String? deviceProfileName;
  @JsonKey(name: 'deviceStatusBattery')
  final int? deviceStatusBattery;
  @JsonKey(name: 'deviceStatusBatteryLevel')
  final double? deviceStatusBatteryLevel;
  @JsonKey(name: 'deviceStatusBatteryLevelUnavailable')
  final bool? deviceStatusBatteryLevelUnavailable;
  @JsonKey(name: 'deviceStatusExternalPowerSource')
  final bool? deviceStatusExternalPowerSource;
  @JsonKey(name: 'deviceStatusMargin')
  final int? deviceStatusMargin;
  @JsonKey(name: 'lastSeenAt')
  final DateTime? lastSeenAt;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ExtapiDeviceListItemFromJson;
  static const toJsonFactory = _$ExtapiDeviceListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiDeviceListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDeviceListItem &&
            (identical(other.applicationID, applicationID) ||
                const DeepCollectionEquality()
                    .equals(other.applicationID, applicationID)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.devEUI, devEUI) ||
                const DeepCollectionEquality().equals(other.devEUI, devEUI)) &&
            (identical(other.deviceProfileID, deviceProfileID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceProfileID, deviceProfileID)) &&
            (identical(other.deviceProfileName, deviceProfileName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceProfileName, deviceProfileName)) &&
            (identical(other.deviceStatusBattery, deviceStatusBattery) ||
                const DeepCollectionEquality()
                    .equals(other.deviceStatusBattery, deviceStatusBattery)) &&
            (identical(other.deviceStatusBatteryLevel, deviceStatusBatteryLevel) ||
                const DeepCollectionEquality().equals(
                    other.deviceStatusBatteryLevel,
                    deviceStatusBatteryLevel)) &&
            (identical(other.deviceStatusBatteryLevelUnavailable,
                    deviceStatusBatteryLevelUnavailable) ||
                const DeepCollectionEquality().equals(
                    other.deviceStatusBatteryLevelUnavailable,
                    deviceStatusBatteryLevelUnavailable)) &&
            (identical(other.deviceStatusExternalPowerSource,
                    deviceStatusExternalPowerSource) ||
                const DeepCollectionEquality().equals(
                    other.deviceStatusExternalPowerSource,
                    deviceStatusExternalPowerSource)) &&
            (identical(other.deviceStatusMargin, deviceStatusMargin) ||
                const DeepCollectionEquality()
                    .equals(other.deviceStatusMargin, deviceStatusMargin)) &&
            (identical(other.lastSeenAt, lastSeenAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeenAt, lastSeenAt)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }
}

extension $ExtapiDeviceListItemExtension on ExtapiDeviceListItem {
  ExtapiDeviceListItem copyWith(
      {String? applicationID,
      String? description,
      String? devEUI,
      String? deviceProfileID,
      String? deviceProfileName,
      int? deviceStatusBattery,
      double? deviceStatusBatteryLevel,
      bool? deviceStatusBatteryLevelUnavailable,
      bool? deviceStatusExternalPowerSource,
      int? deviceStatusMargin,
      DateTime? lastSeenAt,
      String? name}) {
    return ExtapiDeviceListItem(
        applicationID: applicationID ?? this.applicationID,
        description: description ?? this.description,
        devEUI: devEUI ?? this.devEUI,
        deviceProfileID: deviceProfileID ?? this.deviceProfileID,
        deviceProfileName: deviceProfileName ?? this.deviceProfileName,
        deviceStatusBattery: deviceStatusBattery ?? this.deviceStatusBattery,
        deviceStatusBatteryLevel:
            deviceStatusBatteryLevel ?? this.deviceStatusBatteryLevel,
        deviceStatusBatteryLevelUnavailable:
            deviceStatusBatteryLevelUnavailable ??
                this.deviceStatusBatteryLevelUnavailable,
        deviceStatusExternalPowerSource: deviceStatusExternalPowerSource ??
            this.deviceStatusExternalPowerSource,
        deviceStatusMargin: deviceStatusMargin ?? this.deviceStatusMargin,
        lastSeenAt: lastSeenAt ?? this.lastSeenAt,
        name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDeviceProfile {
  ExtapiDeviceProfile({
    this.classBTimeout,
    this.classCTimeout,
    this.factoryPresetFreqs,
    this.geolocBufferTTL,
    this.geolocMinBufferSize,
    this.id,
    this.macVersion,
    this.maxDutyCycle,
    this.maxEIRP,
    this.name,
    this.networkServerID,
    this.organizationID,
    this.payloadCodec,
    this.payloadDecoderScript,
    this.payloadEncoderScript,
    this.pingSlotDR,
    this.pingSlotFreq,
    this.pingSlotPeriod,
    this.regParamsRevision,
    this.rfRegion,
    this.rxDROffset1,
    this.rxDataRate2,
    this.rxDelay1,
    this.rxFreq2,
    this.supports32BitFCnt,
    this.supportsClassB,
    this.supportsClassC,
    this.supportsJoin,
    this.tags,
  });

  factory ExtapiDeviceProfile.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDeviceProfileFromJson(json);

  @JsonKey(name: 'classBTimeout')
  final int? classBTimeout;
  @JsonKey(name: 'classCTimeout')
  final int? classCTimeout;
  @JsonKey(name: 'factoryPresetFreqs', defaultValue: <int>[])
  final List<int>? factoryPresetFreqs;
  @JsonKey(name: 'geolocBufferTTL')
  final int? geolocBufferTTL;
  @JsonKey(name: 'geolocMinBufferSize')
  final int? geolocMinBufferSize;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'macVersion')
  final String? macVersion;
  @JsonKey(name: 'maxDutyCycle')
  final int? maxDutyCycle;
  @JsonKey(name: 'maxEIRP')
  final int? maxEIRP;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'networkServerID')
  final String? networkServerID;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'payloadCodec')
  final String? payloadCodec;
  @JsonKey(name: 'payloadDecoderScript')
  final String? payloadDecoderScript;
  @JsonKey(name: 'payloadEncoderScript')
  final String? payloadEncoderScript;
  @JsonKey(name: 'pingSlotDR')
  final int? pingSlotDR;
  @JsonKey(name: 'pingSlotFreq')
  final int? pingSlotFreq;
  @JsonKey(name: 'pingSlotPeriod')
  final int? pingSlotPeriod;
  @JsonKey(name: 'regParamsRevision')
  final String? regParamsRevision;
  @JsonKey(name: 'rfRegion')
  final String? rfRegion;
  @JsonKey(name: 'rxDROffset1')
  final int? rxDROffset1;
  @JsonKey(name: 'rxDataRate2')
  final int? rxDataRate2;
  @JsonKey(name: 'rxDelay1')
  final int? rxDelay1;
  @JsonKey(name: 'rxFreq2')
  final int? rxFreq2;
  @JsonKey(name: 'supports32BitFCnt')
  final bool? supports32BitFCnt;
  @JsonKey(name: 'supportsClassB')
  final bool? supportsClassB;
  @JsonKey(name: 'supportsClassC')
  final bool? supportsClassC;
  @JsonKey(name: 'supportsJoin')
  final bool? supportsJoin;
  @JsonKey(name: 'tags')
  final Object? tags;
  static const fromJsonFactory = _$ExtapiDeviceProfileFromJson;
  static const toJsonFactory = _$ExtapiDeviceProfileToJson;
  Map<String, dynamic> toJson() => _$ExtapiDeviceProfileToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDeviceProfile &&
            (identical(other.classBTimeout, classBTimeout) ||
                const DeepCollectionEquality()
                    .equals(other.classBTimeout, classBTimeout)) &&
            (identical(other.classCTimeout, classCTimeout) ||
                const DeepCollectionEquality()
                    .equals(other.classCTimeout, classCTimeout)) &&
            (identical(other.factoryPresetFreqs, factoryPresetFreqs) ||
                const DeepCollectionEquality()
                    .equals(other.factoryPresetFreqs, factoryPresetFreqs)) &&
            (identical(other.geolocBufferTTL, geolocBufferTTL) ||
                const DeepCollectionEquality()
                    .equals(other.geolocBufferTTL, geolocBufferTTL)) &&
            (identical(other.geolocMinBufferSize, geolocMinBufferSize) ||
                const DeepCollectionEquality()
                    .equals(other.geolocMinBufferSize, geolocMinBufferSize)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.macVersion, macVersion) ||
                const DeepCollectionEquality()
                    .equals(other.macVersion, macVersion)) &&
            (identical(other.maxDutyCycle, maxDutyCycle) ||
                const DeepCollectionEquality()
                    .equals(other.maxDutyCycle, maxDutyCycle)) &&
            (identical(other.maxEIRP, maxEIRP) ||
                const DeepCollectionEquality()
                    .equals(other.maxEIRP, maxEIRP)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.networkServerID, networkServerID) ||
                const DeepCollectionEquality()
                    .equals(other.networkServerID, networkServerID)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.payloadCodec, payloadCodec) ||
                const DeepCollectionEquality()
                    .equals(other.payloadCodec, payloadCodec)) &&
            (identical(other.payloadDecoderScript, payloadDecoderScript) ||
                const DeepCollectionEquality().equals(
                    other.payloadDecoderScript, payloadDecoderScript)) &&
            (identical(other.payloadEncoderScript, payloadEncoderScript) ||
                const DeepCollectionEquality().equals(
                    other.payloadEncoderScript, payloadEncoderScript)) &&
            (identical(other.pingSlotDR, pingSlotDR) ||
                const DeepCollectionEquality()
                    .equals(other.pingSlotDR, pingSlotDR)) &&
            (identical(other.pingSlotFreq, pingSlotFreq) ||
                const DeepCollectionEquality()
                    .equals(other.pingSlotFreq, pingSlotFreq)) &&
            (identical(other.pingSlotPeriod, pingSlotPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.pingSlotPeriod, pingSlotPeriod)) &&
            (identical(other.regParamsRevision, regParamsRevision) ||
                const DeepCollectionEquality()
                    .equals(other.regParamsRevision, regParamsRevision)) &&
            (identical(other.rfRegion, rfRegion) ||
                const DeepCollectionEquality()
                    .equals(other.rfRegion, rfRegion)) &&
            (identical(other.rxDROffset1, rxDROffset1) ||
                const DeepCollectionEquality()
                    .equals(other.rxDROffset1, rxDROffset1)) &&
            (identical(other.rxDataRate2, rxDataRate2) ||
                const DeepCollectionEquality()
                    .equals(other.rxDataRate2, rxDataRate2)) &&
            (identical(other.rxDelay1, rxDelay1) ||
                const DeepCollectionEquality().equals(other.rxDelay1, rxDelay1)) &&
            (identical(other.rxFreq2, rxFreq2) || const DeepCollectionEquality().equals(other.rxFreq2, rxFreq2)) &&
            (identical(other.supports32BitFCnt, supports32BitFCnt) || const DeepCollectionEquality().equals(other.supports32BitFCnt, supports32BitFCnt)) &&
            (identical(other.supportsClassB, supportsClassB) || const DeepCollectionEquality().equals(other.supportsClassB, supportsClassB)) &&
            (identical(other.supportsClassC, supportsClassC) || const DeepCollectionEquality().equals(other.supportsClassC, supportsClassC)) &&
            (identical(other.supportsJoin, supportsJoin) || const DeepCollectionEquality().equals(other.supportsJoin, supportsJoin)) &&
            (identical(other.tags, tags) || const DeepCollectionEquality().equals(other.tags, tags)));
  }
}

extension $ExtapiDeviceProfileExtension on ExtapiDeviceProfile {
  ExtapiDeviceProfile copyWith(
      {int? classBTimeout,
      int? classCTimeout,
      List<int>? factoryPresetFreqs,
      int? geolocBufferTTL,
      int? geolocMinBufferSize,
      String? id,
      String? macVersion,
      int? maxDutyCycle,
      int? maxEIRP,
      String? name,
      String? networkServerID,
      String? organizationID,
      String? payloadCodec,
      String? payloadDecoderScript,
      String? payloadEncoderScript,
      int? pingSlotDR,
      int? pingSlotFreq,
      int? pingSlotPeriod,
      String? regParamsRevision,
      String? rfRegion,
      int? rxDROffset1,
      int? rxDataRate2,
      int? rxDelay1,
      int? rxFreq2,
      bool? supports32BitFCnt,
      bool? supportsClassB,
      bool? supportsClassC,
      bool? supportsJoin,
      Object? tags}) {
    return ExtapiDeviceProfile(
        classBTimeout: classBTimeout ?? this.classBTimeout,
        classCTimeout: classCTimeout ?? this.classCTimeout,
        factoryPresetFreqs: factoryPresetFreqs ?? this.factoryPresetFreqs,
        geolocBufferTTL: geolocBufferTTL ?? this.geolocBufferTTL,
        geolocMinBufferSize: geolocMinBufferSize ?? this.geolocMinBufferSize,
        id: id ?? this.id,
        macVersion: macVersion ?? this.macVersion,
        maxDutyCycle: maxDutyCycle ?? this.maxDutyCycle,
        maxEIRP: maxEIRP ?? this.maxEIRP,
        name: name ?? this.name,
        networkServerID: networkServerID ?? this.networkServerID,
        organizationID: organizationID ?? this.organizationID,
        payloadCodec: payloadCodec ?? this.payloadCodec,
        payloadDecoderScript: payloadDecoderScript ?? this.payloadDecoderScript,
        payloadEncoderScript: payloadEncoderScript ?? this.payloadEncoderScript,
        pingSlotDR: pingSlotDR ?? this.pingSlotDR,
        pingSlotFreq: pingSlotFreq ?? this.pingSlotFreq,
        pingSlotPeriod: pingSlotPeriod ?? this.pingSlotPeriod,
        regParamsRevision: regParamsRevision ?? this.regParamsRevision,
        rfRegion: rfRegion ?? this.rfRegion,
        rxDROffset1: rxDROffset1 ?? this.rxDROffset1,
        rxDataRate2: rxDataRate2 ?? this.rxDataRate2,
        rxDelay1: rxDelay1 ?? this.rxDelay1,
        rxFreq2: rxFreq2 ?? this.rxFreq2,
        supports32BitFCnt: supports32BitFCnt ?? this.supports32BitFCnt,
        supportsClassB: supportsClassB ?? this.supportsClassB,
        supportsClassC: supportsClassC ?? this.supportsClassC,
        supportsJoin: supportsJoin ?? this.supportsJoin,
        tags: tags ?? this.tags);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDeviceProfileListItem {
  ExtapiDeviceProfileListItem({
    this.createdAt,
    this.id,
    this.name,
    this.networkServerID,
    this.organizationID,
    this.updatedAt,
  });

  factory ExtapiDeviceProfileListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDeviceProfileListItemFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'networkServerID')
  final String? networkServerID;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiDeviceProfileListItemFromJson;
  static const toJsonFactory = _$ExtapiDeviceProfileListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiDeviceProfileListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDeviceProfileListItem &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.networkServerID, networkServerID) ||
                const DeepCollectionEquality()
                    .equals(other.networkServerID, networkServerID)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiDeviceProfileListItemExtension on ExtapiDeviceProfileListItem {
  ExtapiDeviceProfileListItem copyWith(
      {DateTime? createdAt,
      String? id,
      String? name,
      String? networkServerID,
      String? organizationID,
      DateTime? updatedAt}) {
    return ExtapiDeviceProfileListItem(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        name: name ?? this.name,
        networkServerID: networkServerID ?? this.networkServerID,
        organizationID: organizationID ?? this.organizationID,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDeviceQueueItem {
  ExtapiDeviceQueueItem({
    this.confirmed,
    this.data,
    this.devEUI,
    this.fCnt,
    this.fPort,
    this.jsonObject,
  });

  factory ExtapiDeviceQueueItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDeviceQueueItemFromJson(json);

  @JsonKey(name: 'confirmed')
  final bool? confirmed;
  @JsonKey(name: 'data')
  final String? data;
  @JsonKey(name: 'devEUI')
  final String? devEUI;
  @JsonKey(name: 'fCnt')
  final int? fCnt;
  @JsonKey(name: 'fPort')
  final int? fPort;
  @JsonKey(name: 'jsonObject')
  final String? jsonObject;
  static const fromJsonFactory = _$ExtapiDeviceQueueItemFromJson;
  static const toJsonFactory = _$ExtapiDeviceQueueItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiDeviceQueueItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDeviceQueueItem &&
            (identical(other.confirmed, confirmed) ||
                const DeepCollectionEquality()
                    .equals(other.confirmed, confirmed)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.devEUI, devEUI) ||
                const DeepCollectionEquality().equals(other.devEUI, devEUI)) &&
            (identical(other.fCnt, fCnt) ||
                const DeepCollectionEquality().equals(other.fCnt, fCnt)) &&
            (identical(other.fPort, fPort) ||
                const DeepCollectionEquality().equals(other.fPort, fPort)) &&
            (identical(other.jsonObject, jsonObject) ||
                const DeepCollectionEquality()
                    .equals(other.jsonObject, jsonObject)));
  }
}

extension $ExtapiDeviceQueueItemExtension on ExtapiDeviceQueueItem {
  ExtapiDeviceQueueItem copyWith(
      {bool? confirmed,
      String? data,
      String? devEUI,
      int? fCnt,
      int? fPort,
      String? jsonObject}) {
    return ExtapiDeviceQueueItem(
        confirmed: confirmed ?? this.confirmed,
        data: data ?? this.data,
        devEUI: devEUI ?? this.devEUI,
        fCnt: fCnt ?? this.fCnt,
        fPort: fPort ?? this.fPort,
        jsonObject: jsonObject ?? this.jsonObject);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiDownlinkFrameLog {
  ExtapiDownlinkFrameLog({
    this.phyPayloadJSON,
    this.txInfo,
  });

  factory ExtapiDownlinkFrameLog.fromJson(Map<String, dynamic> json) =>
      _$ExtapiDownlinkFrameLogFromJson(json);

  @JsonKey(name: 'phyPayloadJSON')
  final String? phyPayloadJSON;
  @JsonKey(name: 'txInfo')
  final GwDownlinkTXInfo? txInfo;
  static const fromJsonFactory = _$ExtapiDownlinkFrameLogFromJson;
  static const toJsonFactory = _$ExtapiDownlinkFrameLogToJson;
  Map<String, dynamic> toJson() => _$ExtapiDownlinkFrameLogToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiDownlinkFrameLog &&
            (identical(other.phyPayloadJSON, phyPayloadJSON) ||
                const DeepCollectionEquality()
                    .equals(other.phyPayloadJSON, phyPayloadJSON)) &&
            (identical(other.txInfo, txInfo) ||
                const DeepCollectionEquality().equals(other.txInfo, txInfo)));
  }
}

extension $ExtapiDownlinkFrameLogExtension on ExtapiDownlinkFrameLog {
  ExtapiDownlinkFrameLog copyWith(
      {String? phyPayloadJSON, GwDownlinkTXInfo? txInfo}) {
    return ExtapiDownlinkFrameLog(
        phyPayloadJSON: phyPayloadJSON ?? this.phyPayloadJSON,
        txInfo: txInfo ?? this.txInfo);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiEnqueueDeviceQueueItemRequest {
  ExtapiEnqueueDeviceQueueItemRequest({
    this.deviceQueueItem,
  });

  factory ExtapiEnqueueDeviceQueueItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiEnqueueDeviceQueueItemRequestFromJson(json);

  @JsonKey(name: 'deviceQueueItem')
  final ExtapiDeviceQueueItem? deviceQueueItem;
  static const fromJsonFactory = _$ExtapiEnqueueDeviceQueueItemRequestFromJson;
  static const toJsonFactory = _$ExtapiEnqueueDeviceQueueItemRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiEnqueueDeviceQueueItemRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiEnqueueDeviceQueueItemRequest &&
            (identical(other.deviceQueueItem, deviceQueueItem) ||
                const DeepCollectionEquality()
                    .equals(other.deviceQueueItem, deviceQueueItem)));
  }
}

extension $ExtapiEnqueueDeviceQueueItemRequestExtension
    on ExtapiEnqueueDeviceQueueItemRequest {
  ExtapiEnqueueDeviceQueueItemRequest copyWith(
      {ExtapiDeviceQueueItem? deviceQueueItem}) {
    return ExtapiEnqueueDeviceQueueItemRequest(
        deviceQueueItem: deviceQueueItem ?? this.deviceQueueItem);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiEnqueueDeviceQueueItemResponse {
  ExtapiEnqueueDeviceQueueItemResponse({
    this.fCnt,
  });

  factory ExtapiEnqueueDeviceQueueItemResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiEnqueueDeviceQueueItemResponseFromJson(json);

  @JsonKey(name: 'fCnt')
  final int? fCnt;
  static const fromJsonFactory = _$ExtapiEnqueueDeviceQueueItemResponseFromJson;
  static const toJsonFactory = _$ExtapiEnqueueDeviceQueueItemResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiEnqueueDeviceQueueItemResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiEnqueueDeviceQueueItemResponse &&
            (identical(other.fCnt, fCnt) ||
                const DeepCollectionEquality().equals(other.fCnt, fCnt)));
  }
}

extension $ExtapiEnqueueDeviceQueueItemResponseExtension
    on ExtapiEnqueueDeviceQueueItemResponse {
  ExtapiEnqueueDeviceQueueItemResponse copyWith({int? fCnt}) {
    return ExtapiEnqueueDeviceQueueItemResponse(fCnt: fCnt ?? this.fCnt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiExternalUserAccount {
  ExtapiExternalUserAccount({
    this.externalUserId,
    this.externalUsername,
    this.service,
  });

  factory ExtapiExternalUserAccount.fromJson(Map<String, dynamic> json) =>
      _$ExtapiExternalUserAccountFromJson(json);

  @JsonKey(name: 'externalUserId')
  final String? externalUserId;
  @JsonKey(name: 'externalUsername')
  final String? externalUsername;
  @JsonKey(name: 'service')
  final String? service;
  static const fromJsonFactory = _$ExtapiExternalUserAccountFromJson;
  static const toJsonFactory = _$ExtapiExternalUserAccountToJson;
  Map<String, dynamic> toJson() => _$ExtapiExternalUserAccountToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiExternalUserAccount &&
            (identical(other.externalUserId, externalUserId) ||
                const DeepCollectionEquality()
                    .equals(other.externalUserId, externalUserId)) &&
            (identical(other.externalUsername, externalUsername) ||
                const DeepCollectionEquality()
                    .equals(other.externalUsername, externalUsername)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality().equals(other.service, service)));
  }
}

extension $ExtapiExternalUserAccountExtension on ExtapiExternalUserAccount {
  ExtapiExternalUserAccount copyWith(
      {String? externalUserId, String? externalUsername, String? service}) {
    return ExtapiExternalUserAccount(
        externalUserId: externalUserId ?? this.externalUserId,
        externalUsername: externalUsername ?? this.externalUsername,
        service: service ?? this.service);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiFiatCurrency {
  ExtapiFiatCurrency({
    this.description,
    this.id,
  });

  factory ExtapiFiatCurrency.fromJson(Map<String, dynamic> json) =>
      _$ExtapiFiatCurrencyFromJson(json);

  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ExtapiFiatCurrencyFromJson;
  static const toJsonFactory = _$ExtapiFiatCurrencyToJson;
  Map<String, dynamic> toJson() => _$ExtapiFiatCurrencyToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiFiatCurrency &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }
}

extension $ExtapiFiatCurrencyExtension on ExtapiFiatCurrency {
  ExtapiFiatCurrency copyWith({String? description, String? id}) {
    return ExtapiFiatCurrency(
        description: description ?? this.description, id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiFinishRegistrationRequest {
  ExtapiFinishRegistrationRequest({
    this.organizationDisplayName,
    this.organizationName,
    this.password,
    this.userId,
  });

  factory ExtapiFinishRegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiFinishRegistrationRequestFromJson(json);

  @JsonKey(name: 'organizationDisplayName')
  final String? organizationDisplayName;
  @JsonKey(name: 'organizationName')
  final String? organizationName;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'userId')
  final String? userId;
  static const fromJsonFactory = _$ExtapiFinishRegistrationRequestFromJson;
  static const toJsonFactory = _$ExtapiFinishRegistrationRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiFinishRegistrationRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiFinishRegistrationRequest &&
            (identical(
                    other.organizationDisplayName, organizationDisplayName) ||
                const DeepCollectionEquality().equals(
                    other.organizationDisplayName, organizationDisplayName)) &&
            (identical(other.organizationName, organizationName) ||
                const DeepCollectionEquality()
                    .equals(other.organizationName, organizationName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }
}

extension $ExtapiFinishRegistrationRequestExtension
    on ExtapiFinishRegistrationRequest {
  ExtapiFinishRegistrationRequest copyWith(
      {String? organizationDisplayName,
      String? organizationName,
      String? password,
      String? userId}) {
    return ExtapiFinishRegistrationRequest(
        organizationDisplayName:
            organizationDisplayName ?? this.organizationDisplayName,
        organizationName: organizationName ?? this.organizationName,
        password: password ?? this.password,
        userId: userId ?? this.userId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGateway {
  ExtapiGateway({
    this.boards,
    this.description,
    this.discoveryEnabled,
    this.gatewayProfileID,
    this.id,
    this.location,
    this.metadata,
    this.name,
    this.networkServerID,
    this.organizationID,
    this.tags,
  });

  factory ExtapiGateway.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGatewayFromJson(json);

  @JsonKey(name: 'boards', defaultValue: <ExtapiGatewayBoard>[])
  final List<ExtapiGatewayBoard>? boards;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'discoveryEnabled')
  final bool? discoveryEnabled;
  @JsonKey(name: 'gatewayProfileID')
  final String? gatewayProfileID;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'location')
  final CommonLocation? location;
  @JsonKey(name: 'metadata')
  final Object? metadata;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'networkServerID')
  final String? networkServerID;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'tags')
  final Object? tags;
  static const fromJsonFactory = _$ExtapiGatewayFromJson;
  static const toJsonFactory = _$ExtapiGatewayToJson;
  Map<String, dynamic> toJson() => _$ExtapiGatewayToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGateway &&
            (identical(other.boards, boards) ||
                const DeepCollectionEquality().equals(other.boards, boards)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.discoveryEnabled, discoveryEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.discoveryEnabled, discoveryEnabled)) &&
            (identical(other.gatewayProfileID, gatewayProfileID) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayProfileID, gatewayProfileID)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.networkServerID, networkServerID) ||
                const DeepCollectionEquality()
                    .equals(other.networkServerID, networkServerID)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)));
  }
}

extension $ExtapiGatewayExtension on ExtapiGateway {
  ExtapiGateway copyWith(
      {List<ExtapiGatewayBoard>? boards,
      String? description,
      bool? discoveryEnabled,
      String? gatewayProfileID,
      String? id,
      CommonLocation? location,
      Object? metadata,
      String? name,
      String? networkServerID,
      String? organizationID,
      Object? tags}) {
    return ExtapiGateway(
        boards: boards ?? this.boards,
        description: description ?? this.description,
        discoveryEnabled: discoveryEnabled ?? this.discoveryEnabled,
        gatewayProfileID: gatewayProfileID ?? this.gatewayProfileID,
        id: id ?? this.id,
        location: location ?? this.location,
        metadata: metadata ?? this.metadata,
        name: name ?? this.name,
        networkServerID: networkServerID ?? this.networkServerID,
        organizationID: organizationID ?? this.organizationID,
        tags: tags ?? this.tags);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGatewayBoard {
  ExtapiGatewayBoard({
    this.fineTimestampKey,
    this.fpgaID,
  });

  factory ExtapiGatewayBoard.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGatewayBoardFromJson(json);

  @JsonKey(name: 'fineTimestampKey')
  final String? fineTimestampKey;
  @JsonKey(name: 'fpgaID')
  final String? fpgaID;
  static const fromJsonFactory = _$ExtapiGatewayBoardFromJson;
  static const toJsonFactory = _$ExtapiGatewayBoardToJson;
  Map<String, dynamic> toJson() => _$ExtapiGatewayBoardToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGatewayBoard &&
            (identical(other.fineTimestampKey, fineTimestampKey) ||
                const DeepCollectionEquality()
                    .equals(other.fineTimestampKey, fineTimestampKey)) &&
            (identical(other.fpgaID, fpgaID) ||
                const DeepCollectionEquality().equals(other.fpgaID, fpgaID)));
  }
}

extension $ExtapiGatewayBoardExtension on ExtapiGatewayBoard {
  ExtapiGatewayBoard copyWith({String? fineTimestampKey, String? fpgaID}) {
    return ExtapiGatewayBoard(
        fineTimestampKey: fineTimestampKey ?? this.fineTimestampKey,
        fpgaID: fpgaID ?? this.fpgaID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGatewayListItem {
  ExtapiGatewayListItem({
    this.createdAt,
    this.description,
    this.firstSeenAt,
    this.id,
    this.lastSeenAt,
    this.location,
    this.name,
    this.networkServerID,
    this.organizationID,
    this.updatedAt,
  });

  factory ExtapiGatewayListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGatewayListItemFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'firstSeenAt')
  final DateTime? firstSeenAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'lastSeenAt')
  final DateTime? lastSeenAt;
  @JsonKey(name: 'location')
  final CommonLocation? location;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'networkServerID')
  final String? networkServerID;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiGatewayListItemFromJson;
  static const toJsonFactory = _$ExtapiGatewayListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiGatewayListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGatewayListItem &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.firstSeenAt, firstSeenAt) ||
                const DeepCollectionEquality()
                    .equals(other.firstSeenAt, firstSeenAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastSeenAt, lastSeenAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeenAt, lastSeenAt)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.networkServerID, networkServerID) ||
                const DeepCollectionEquality()
                    .equals(other.networkServerID, networkServerID)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiGatewayListItemExtension on ExtapiGatewayListItem {
  ExtapiGatewayListItem copyWith(
      {DateTime? createdAt,
      String? description,
      DateTime? firstSeenAt,
      String? id,
      DateTime? lastSeenAt,
      CommonLocation? location,
      String? name,
      String? networkServerID,
      String? organizationID,
      DateTime? updatedAt}) {
    return ExtapiGatewayListItem(
        createdAt: createdAt ?? this.createdAt,
        description: description ?? this.description,
        firstSeenAt: firstSeenAt ?? this.firstSeenAt,
        id: id ?? this.id,
        lastSeenAt: lastSeenAt ?? this.lastSeenAt,
        location: location ?? this.location,
        name: name ?? this.name,
        networkServerID: networkServerID ?? this.networkServerID,
        organizationID: organizationID ?? this.organizationID,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGatewayLocation {
  ExtapiGatewayLocation({
    this.altitude,
    this.h3CellId,
    this.latitude,
    this.longitude,
  });

  factory ExtapiGatewayLocation.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGatewayLocationFromJson(json);

  @JsonKey(name: 'altitude')
  final double? altitude;
  @JsonKey(name: 'h3CellId')
  final String? h3CellId;
  @JsonKey(name: 'latitude')
  final double? latitude;
  @JsonKey(name: 'longitude')
  final double? longitude;
  static const fromJsonFactory = _$ExtapiGatewayLocationFromJson;
  static const toJsonFactory = _$ExtapiGatewayLocationToJson;
  Map<String, dynamic> toJson() => _$ExtapiGatewayLocationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGatewayLocation &&
            (identical(other.altitude, altitude) ||
                const DeepCollectionEquality()
                    .equals(other.altitude, altitude)) &&
            (identical(other.h3CellId, h3CellId) ||
                const DeepCollectionEquality()
                    .equals(other.h3CellId, h3CellId)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }
}

extension $ExtapiGatewayLocationExtension on ExtapiGatewayLocation {
  ExtapiGatewayLocation copyWith(
      {double? altitude,
      String? h3CellId,
      double? latitude,
      double? longitude}) {
    return ExtapiGatewayLocation(
        altitude: altitude ?? this.altitude,
        h3CellId: h3CellId ?? this.h3CellId,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGatewayLocationListItem {
  ExtapiGatewayLocationListItem({
    this.location,
  });

  factory ExtapiGatewayLocationListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGatewayLocationListItemFromJson(json);

  @JsonKey(name: 'location')
  final ExtapiGatewayLocation? location;
  static const fromJsonFactory = _$ExtapiGatewayLocationListItemFromJson;
  static const toJsonFactory = _$ExtapiGatewayLocationListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiGatewayLocationListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGatewayLocationListItem &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }
}

extension $ExtapiGatewayLocationListItemExtension
    on ExtapiGatewayLocationListItem {
  ExtapiGatewayLocationListItem copyWith({ExtapiGatewayLocation? location}) {
    return ExtapiGatewayLocationListItem(location: location ?? this.location);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGatewayMiningFuelChange {
  ExtapiGatewayMiningFuelChange({
    this.amount,
    this.gatewayMac,
  });

  factory ExtapiGatewayMiningFuelChange.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGatewayMiningFuelChangeFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'gatewayMac')
  final String? gatewayMac;
  static const fromJsonFactory = _$ExtapiGatewayMiningFuelChangeFromJson;
  static const toJsonFactory = _$ExtapiGatewayMiningFuelChangeToJson;
  Map<String, dynamic> toJson() => _$ExtapiGatewayMiningFuelChangeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGatewayMiningFuelChange &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.gatewayMac, gatewayMac) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayMac, gatewayMac)));
  }
}

extension $ExtapiGatewayMiningFuelChangeExtension
    on ExtapiGatewayMiningFuelChange {
  ExtapiGatewayMiningFuelChange copyWith({String? amount, String? gatewayMac}) {
    return ExtapiGatewayMiningFuelChange(
        amount: amount ?? this.amount,
        gatewayMac: gatewayMac ?? this.gatewayMac);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGatewayMiningHealth {
  ExtapiGatewayMiningHealth({
    this.ageSeconds,
    this.health,
    this.id,
    this.miningFuel,
    this.miningFuelHealth,
    this.miningFuelMax,
    this.orgId,
    this.totalMined,
    this.uptimeHealth,
  });

  factory ExtapiGatewayMiningHealth.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGatewayMiningHealthFromJson(json);

  @JsonKey(name: 'ageSeconds')
  final String? ageSeconds;
  @JsonKey(name: 'health')
  final double? health;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'miningFuel')
  final String? miningFuel;
  @JsonKey(name: 'miningFuelHealth')
  final double? miningFuelHealth;
  @JsonKey(name: 'miningFuelMax')
  final String? miningFuelMax;
  @JsonKey(name: 'orgId')
  final String? orgId;
  @JsonKey(name: 'totalMined')
  final String? totalMined;
  @JsonKey(name: 'uptimeHealth')
  final double? uptimeHealth;
  static const fromJsonFactory = _$ExtapiGatewayMiningHealthFromJson;
  static const toJsonFactory = _$ExtapiGatewayMiningHealthToJson;
  Map<String, dynamic> toJson() => _$ExtapiGatewayMiningHealthToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGatewayMiningHealth &&
            (identical(other.ageSeconds, ageSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.ageSeconds, ageSeconds)) &&
            (identical(other.health, health) ||
                const DeepCollectionEquality().equals(other.health, health)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.miningFuel, miningFuel) ||
                const DeepCollectionEquality()
                    .equals(other.miningFuel, miningFuel)) &&
            (identical(other.miningFuelHealth, miningFuelHealth) ||
                const DeepCollectionEquality()
                    .equals(other.miningFuelHealth, miningFuelHealth)) &&
            (identical(other.miningFuelMax, miningFuelMax) ||
                const DeepCollectionEquality()
                    .equals(other.miningFuelMax, miningFuelMax)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.totalMined, totalMined) ||
                const DeepCollectionEquality()
                    .equals(other.totalMined, totalMined)) &&
            (identical(other.uptimeHealth, uptimeHealth) ||
                const DeepCollectionEquality()
                    .equals(other.uptimeHealth, uptimeHealth)));
  }
}

extension $ExtapiGatewayMiningHealthExtension on ExtapiGatewayMiningHealth {
  ExtapiGatewayMiningHealth copyWith(
      {String? ageSeconds,
      double? health,
      String? id,
      String? miningFuel,
      double? miningFuelHealth,
      String? miningFuelMax,
      String? orgId,
      String? totalMined,
      double? uptimeHealth}) {
    return ExtapiGatewayMiningHealth(
        ageSeconds: ageSeconds ?? this.ageSeconds,
        health: health ?? this.health,
        id: id ?? this.id,
        miningFuel: miningFuel ?? this.miningFuel,
        miningFuelHealth: miningFuelHealth ?? this.miningFuelHealth,
        miningFuelMax: miningFuelMax ?? this.miningFuelMax,
        orgId: orgId ?? this.orgId,
        totalMined: totalMined ?? this.totalMined,
        uptimeHealth: uptimeHealth ?? this.uptimeHealth);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGatewayProfile {
  ExtapiGatewayProfile({
    this.channels,
    this.extraChannels,
    this.id,
    this.name,
    this.networkServerID,
  });

  factory ExtapiGatewayProfile.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGatewayProfileFromJson(json);

  @JsonKey(name: 'channels', defaultValue: <int>[])
  final List<int>? channels;
  @JsonKey(
      name: 'extraChannels', defaultValue: <ExtapiGatewayProfileExtraChannel>[])
  final List<ExtapiGatewayProfileExtraChannel>? extraChannels;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'networkServerID')
  final String? networkServerID;
  static const fromJsonFactory = _$ExtapiGatewayProfileFromJson;
  static const toJsonFactory = _$ExtapiGatewayProfileToJson;
  Map<String, dynamic> toJson() => _$ExtapiGatewayProfileToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGatewayProfile &&
            (identical(other.channels, channels) ||
                const DeepCollectionEquality()
                    .equals(other.channels, channels)) &&
            (identical(other.extraChannels, extraChannels) ||
                const DeepCollectionEquality()
                    .equals(other.extraChannels, extraChannels)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.networkServerID, networkServerID) ||
                const DeepCollectionEquality()
                    .equals(other.networkServerID, networkServerID)));
  }
}

extension $ExtapiGatewayProfileExtension on ExtapiGatewayProfile {
  ExtapiGatewayProfile copyWith(
      {List<int>? channels,
      List<ExtapiGatewayProfileExtraChannel>? extraChannels,
      String? id,
      String? name,
      String? networkServerID}) {
    return ExtapiGatewayProfile(
        channels: channels ?? this.channels,
        extraChannels: extraChannels ?? this.extraChannels,
        id: id ?? this.id,
        name: name ?? this.name,
        networkServerID: networkServerID ?? this.networkServerID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGatewayProfileExtraChannel {
  ExtapiGatewayProfileExtraChannel({
    this.bandwidth,
    this.bitrate,
    this.frequency,
    this.modulation,
    this.spreadingFactors,
  });

  factory ExtapiGatewayProfileExtraChannel.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGatewayProfileExtraChannelFromJson(json);

  @JsonKey(name: 'bandwidth')
  final int? bandwidth;
  @JsonKey(name: 'bitrate')
  final int? bitrate;
  @JsonKey(name: 'frequency')
  final int? frequency;
  @JsonKey(
      name: 'modulation',
      toJson: commonModulationToJson,
      fromJson: commonModulationFromJson)
  final enums.CommonModulation? modulation;
  @JsonKey(name: 'spreadingFactors', defaultValue: <int>[])
  final List<int>? spreadingFactors;
  static const fromJsonFactory = _$ExtapiGatewayProfileExtraChannelFromJson;
  static const toJsonFactory = _$ExtapiGatewayProfileExtraChannelToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGatewayProfileExtraChannelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGatewayProfileExtraChannel &&
            (identical(other.bandwidth, bandwidth) ||
                const DeepCollectionEquality()
                    .equals(other.bandwidth, bandwidth)) &&
            (identical(other.bitrate, bitrate) ||
                const DeepCollectionEquality()
                    .equals(other.bitrate, bitrate)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.modulation, modulation) ||
                const DeepCollectionEquality()
                    .equals(other.modulation, modulation)) &&
            (identical(other.spreadingFactors, spreadingFactors) ||
                const DeepCollectionEquality()
                    .equals(other.spreadingFactors, spreadingFactors)));
  }
}

extension $ExtapiGatewayProfileExtraChannelExtension
    on ExtapiGatewayProfileExtraChannel {
  ExtapiGatewayProfileExtraChannel copyWith(
      {int? bandwidth,
      int? bitrate,
      int? frequency,
      enums.CommonModulation? modulation,
      List<int>? spreadingFactors}) {
    return ExtapiGatewayProfileExtraChannel(
        bandwidth: bandwidth ?? this.bandwidth,
        bitrate: bitrate ?? this.bitrate,
        frequency: frequency ?? this.frequency,
        modulation: modulation ?? this.modulation,
        spreadingFactors: spreadingFactors ?? this.spreadingFactors);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGatewayProfileListItem {
  ExtapiGatewayProfileListItem({
    this.createdAt,
    this.id,
    this.name,
    this.networkServerID,
    this.networkServerName,
    this.updatedAt,
  });

  factory ExtapiGatewayProfileListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGatewayProfileListItemFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'networkServerID')
  final String? networkServerID;
  @JsonKey(name: 'networkServerName')
  final String? networkServerName;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiGatewayProfileListItemFromJson;
  static const toJsonFactory = _$ExtapiGatewayProfileListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiGatewayProfileListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGatewayProfileListItem &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.networkServerID, networkServerID) ||
                const DeepCollectionEquality()
                    .equals(other.networkServerID, networkServerID)) &&
            (identical(other.networkServerName, networkServerName) ||
                const DeepCollectionEquality()
                    .equals(other.networkServerName, networkServerName)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiGatewayProfileListItemExtension
    on ExtapiGatewayProfileListItem {
  ExtapiGatewayProfileListItem copyWith(
      {DateTime? createdAt,
      String? id,
      String? name,
      String? networkServerID,
      String? networkServerName,
      DateTime? updatedAt}) {
    return ExtapiGatewayProfileListItem(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        name: name ?? this.name,
        networkServerID: networkServerID ?? this.networkServerID,
        networkServerName: networkServerName ?? this.networkServerName,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGatewayStats {
  ExtapiGatewayStats({
    this.rxPacketsReceived,
    this.rxPacketsReceivedOK,
    this.timestamp,
    this.txPacketsEmitted,
    this.txPacketsReceived,
  });

  factory ExtapiGatewayStats.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGatewayStatsFromJson(json);

  @JsonKey(name: 'rxPacketsReceived')
  final int? rxPacketsReceived;
  @JsonKey(name: 'rxPacketsReceivedOK')
  final int? rxPacketsReceivedOK;
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;
  @JsonKey(name: 'txPacketsEmitted')
  final int? txPacketsEmitted;
  @JsonKey(name: 'txPacketsReceived')
  final int? txPacketsReceived;
  static const fromJsonFactory = _$ExtapiGatewayStatsFromJson;
  static const toJsonFactory = _$ExtapiGatewayStatsToJson;
  Map<String, dynamic> toJson() => _$ExtapiGatewayStatsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGatewayStats &&
            (identical(other.rxPacketsReceived, rxPacketsReceived) ||
                const DeepCollectionEquality()
                    .equals(other.rxPacketsReceived, rxPacketsReceived)) &&
            (identical(other.rxPacketsReceivedOK, rxPacketsReceivedOK) ||
                const DeepCollectionEquality()
                    .equals(other.rxPacketsReceivedOK, rxPacketsReceivedOK)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.txPacketsEmitted, txPacketsEmitted) ||
                const DeepCollectionEquality()
                    .equals(other.txPacketsEmitted, txPacketsEmitted)) &&
            (identical(other.txPacketsReceived, txPacketsReceived) ||
                const DeepCollectionEquality()
                    .equals(other.txPacketsReceived, txPacketsReceived)));
  }
}

extension $ExtapiGatewayStatsExtension on ExtapiGatewayStats {
  ExtapiGatewayStats copyWith(
      {int? rxPacketsReceived,
      int? rxPacketsReceivedOK,
      DateTime? timestamp,
      int? txPacketsEmitted,
      int? txPacketsReceived}) {
    return ExtapiGatewayStats(
        rxPacketsReceived: rxPacketsReceived ?? this.rxPacketsReceived,
        rxPacketsReceivedOK: rxPacketsReceivedOK ?? this.rxPacketsReceivedOK,
        timestamp: timestamp ?? this.timestamp,
        txPacketsEmitted: txPacketsEmitted ?? this.txPacketsEmitted,
        txPacketsReceived: txPacketsReceived ?? this.txPacketsReceived);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetActiveStakesResponse {
  ExtapiGetActiveStakesResponse({
    this.actStake,
  });

  factory ExtapiGetActiveStakesResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetActiveStakesResponseFromJson(json);

  @JsonKey(name: 'actStake', defaultValue: <ExtapiStake>[])
  final List<ExtapiStake>? actStake;
  static const fromJsonFactory = _$ExtapiGetActiveStakesResponseFromJson;
  static const toJsonFactory = _$ExtapiGetActiveStakesResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetActiveStakesResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetActiveStakesResponse &&
            (identical(other.actStake, actStake) ||
                const DeepCollectionEquality()
                    .equals(other.actStake, actStake)));
  }
}

extension $ExtapiGetActiveStakesResponseExtension
    on ExtapiGetActiveStakesResponse {
  ExtapiGetActiveStakesResponse copyWith({List<ExtapiStake>? actStake}) {
    return ExtapiGetActiveStakesResponse(actStake: actStake ?? this.actStake);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetApplicationResponse {
  ExtapiGetApplicationResponse({
    this.application,
  });

  factory ExtapiGetApplicationResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetApplicationResponseFromJson(json);

  @JsonKey(name: 'application')
  final ExtapiApplication? application;
  static const fromJsonFactory = _$ExtapiGetApplicationResponseFromJson;
  static const toJsonFactory = _$ExtapiGetApplicationResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetApplicationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetApplicationResponse &&
            (identical(other.application, application) ||
                const DeepCollectionEquality()
                    .equals(other.application, application)));
  }
}

extension $ExtapiGetApplicationResponseExtension
    on ExtapiGetApplicationResponse {
  ExtapiGetApplicationResponse copyWith({ExtapiApplication? application}) {
    return ExtapiGetApplicationResponse(
        application: application ?? this.application);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetAppserverVersionResponse {
  ExtapiGetAppserverVersionResponse({
    this.version,
  });

  factory ExtapiGetAppserverVersionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetAppserverVersionResponseFromJson(json);

  @JsonKey(name: 'version')
  final String? version;
  static const fromJsonFactory = _$ExtapiGetAppserverVersionResponseFromJson;
  static const toJsonFactory = _$ExtapiGetAppserverVersionResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetAppserverVersionResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetAppserverVersionResponse &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }
}

extension $ExtapiGetAppserverVersionResponseExtension
    on ExtapiGetAppserverVersionResponse {
  ExtapiGetAppserverVersionResponse copyWith({String? version}) {
    return ExtapiGetAppserverVersionResponse(version: version ?? this.version);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetDefaultGatewayConfigResponse {
  ExtapiGetDefaultGatewayConfigResponse({
    this.defaultConfig,
  });

  factory ExtapiGetDefaultGatewayConfigResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetDefaultGatewayConfigResponseFromJson(json);

  @JsonKey(name: 'defaultConfig')
  final String? defaultConfig;
  static const fromJsonFactory =
      _$ExtapiGetDefaultGatewayConfigResponseFromJson;
  static const toJsonFactory = _$ExtapiGetDefaultGatewayConfigResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetDefaultGatewayConfigResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetDefaultGatewayConfigResponse &&
            (identical(other.defaultConfig, defaultConfig) ||
                const DeepCollectionEquality()
                    .equals(other.defaultConfig, defaultConfig)));
  }
}

extension $ExtapiGetDefaultGatewayConfigResponseExtension
    on ExtapiGetDefaultGatewayConfigResponse {
  ExtapiGetDefaultGatewayConfigResponse copyWith({String? defaultConfig}) {
    return ExtapiGetDefaultGatewayConfigResponse(
        defaultConfig: defaultConfig ?? this.defaultConfig);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetDeviceActivationResponse {
  ExtapiGetDeviceActivationResponse({
    this.deviceActivation,
  });

  factory ExtapiGetDeviceActivationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetDeviceActivationResponseFromJson(json);

  @JsonKey(name: 'deviceActivation')
  final ExtapiDeviceActivation? deviceActivation;
  static const fromJsonFactory = _$ExtapiGetDeviceActivationResponseFromJson;
  static const toJsonFactory = _$ExtapiGetDeviceActivationResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetDeviceActivationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetDeviceActivationResponse &&
            (identical(other.deviceActivation, deviceActivation) ||
                const DeepCollectionEquality()
                    .equals(other.deviceActivation, deviceActivation)));
  }
}

extension $ExtapiGetDeviceActivationResponseExtension
    on ExtapiGetDeviceActivationResponse {
  ExtapiGetDeviceActivationResponse copyWith(
      {ExtapiDeviceActivation? deviceActivation}) {
    return ExtapiGetDeviceActivationResponse(
        deviceActivation: deviceActivation ?? this.deviceActivation);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetDeviceKeysResponse {
  ExtapiGetDeviceKeysResponse({
    this.deviceKeys,
  });

  factory ExtapiGetDeviceKeysResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetDeviceKeysResponseFromJson(json);

  @JsonKey(name: 'deviceKeys')
  final ExtapiDeviceKeys? deviceKeys;
  static const fromJsonFactory = _$ExtapiGetDeviceKeysResponseFromJson;
  static const toJsonFactory = _$ExtapiGetDeviceKeysResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetDeviceKeysResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetDeviceKeysResponse &&
            (identical(other.deviceKeys, deviceKeys) ||
                const DeepCollectionEquality()
                    .equals(other.deviceKeys, deviceKeys)));
  }
}

extension $ExtapiGetDeviceKeysResponseExtension on ExtapiGetDeviceKeysResponse {
  ExtapiGetDeviceKeysResponse copyWith({ExtapiDeviceKeys? deviceKeys}) {
    return ExtapiGetDeviceKeysResponse(
        deviceKeys: deviceKeys ?? this.deviceKeys);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetDeviceProfileResponse {
  ExtapiGetDeviceProfileResponse({
    this.createdAt,
    this.deviceProfile,
    this.updatedAt,
  });

  factory ExtapiGetDeviceProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetDeviceProfileResponseFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'deviceProfile')
  final ExtapiDeviceProfile? deviceProfile;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiGetDeviceProfileResponseFromJson;
  static const toJsonFactory = _$ExtapiGetDeviceProfileResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetDeviceProfileResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetDeviceProfileResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deviceProfile, deviceProfile) ||
                const DeepCollectionEquality()
                    .equals(other.deviceProfile, deviceProfile)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiGetDeviceProfileResponseExtension
    on ExtapiGetDeviceProfileResponse {
  ExtapiGetDeviceProfileResponse copyWith(
      {DateTime? createdAt,
      ExtapiDeviceProfile? deviceProfile,
      DateTime? updatedAt}) {
    return ExtapiGetDeviceProfileResponse(
        createdAt: createdAt ?? this.createdAt,
        deviceProfile: deviceProfile ?? this.deviceProfile,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetDeviceResponse {
  ExtapiGetDeviceResponse({
    this.device,
    this.deviceStatusBattery,
    this.deviceStatusMargin,
    this.lastSeenAt,
    this.location,
  });

  factory ExtapiGetDeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetDeviceResponseFromJson(json);

  @JsonKey(name: 'device')
  final ExtapiDevice? device;
  @JsonKey(name: 'deviceStatusBattery')
  final int? deviceStatusBattery;
  @JsonKey(name: 'deviceStatusMargin')
  final int? deviceStatusMargin;
  @JsonKey(name: 'lastSeenAt')
  final DateTime? lastSeenAt;
  @JsonKey(name: 'location')
  final CommonLocation? location;
  static const fromJsonFactory = _$ExtapiGetDeviceResponseFromJson;
  static const toJsonFactory = _$ExtapiGetDeviceResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetDeviceResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetDeviceResponse &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.deviceStatusBattery, deviceStatusBattery) ||
                const DeepCollectionEquality()
                    .equals(other.deviceStatusBattery, deviceStatusBattery)) &&
            (identical(other.deviceStatusMargin, deviceStatusMargin) ||
                const DeepCollectionEquality()
                    .equals(other.deviceStatusMargin, deviceStatusMargin)) &&
            (identical(other.lastSeenAt, lastSeenAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeenAt, lastSeenAt)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }
}

extension $ExtapiGetDeviceResponseExtension on ExtapiGetDeviceResponse {
  ExtapiGetDeviceResponse copyWith(
      {ExtapiDevice? device,
      int? deviceStatusBattery,
      int? deviceStatusMargin,
      DateTime? lastSeenAt,
      CommonLocation? location}) {
    return ExtapiGetDeviceResponse(
        device: device ?? this.device,
        deviceStatusBattery: deviceStatusBattery ?? this.deviceStatusBattery,
        deviceStatusMargin: deviceStatusMargin ?? this.deviceStatusMargin,
        lastSeenAt: lastSeenAt ?? this.lastSeenAt,
        location: location ?? this.location);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetDownLinkPriceResponse {
  ExtapiGetDownLinkPriceResponse({
    this.downLinkPrice,
  });

  factory ExtapiGetDownLinkPriceResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetDownLinkPriceResponseFromJson(json);

  @JsonKey(name: 'downLinkPrice')
  final double? downLinkPrice;
  static const fromJsonFactory = _$ExtapiGetDownLinkPriceResponseFromJson;
  static const toJsonFactory = _$ExtapiGetDownLinkPriceResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetDownLinkPriceResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetDownLinkPriceResponse &&
            (identical(other.downLinkPrice, downLinkPrice) ||
                const DeepCollectionEquality()
                    .equals(other.downLinkPrice, downLinkPrice)));
  }
}

extension $ExtapiGetDownLinkPriceResponseExtension
    on ExtapiGetDownLinkPriceResponse {
  ExtapiGetDownLinkPriceResponse copyWith({double? downLinkPrice}) {
    return ExtapiGetDownLinkPriceResponse(
        downLinkPrice: downLinkPrice ?? this.downLinkPrice);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetFiatCurrencyListResponse {
  ExtapiGetFiatCurrencyListResponse({
    this.fiatCurrencyList,
  });

  factory ExtapiGetFiatCurrencyListResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetFiatCurrencyListResponseFromJson(json);

  @JsonKey(name: 'fiatCurrencyList', defaultValue: <ExtapiFiatCurrency>[])
  final List<ExtapiFiatCurrency>? fiatCurrencyList;
  static const fromJsonFactory = _$ExtapiGetFiatCurrencyListResponseFromJson;
  static const toJsonFactory = _$ExtapiGetFiatCurrencyListResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetFiatCurrencyListResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetFiatCurrencyListResponse &&
            (identical(other.fiatCurrencyList, fiatCurrencyList) ||
                const DeepCollectionEquality()
                    .equals(other.fiatCurrencyList, fiatCurrencyList)));
  }
}

extension $ExtapiGetFiatCurrencyListResponseExtension
    on ExtapiGetFiatCurrencyListResponse {
  ExtapiGetFiatCurrencyListResponse copyWith(
      {List<ExtapiFiatCurrency>? fiatCurrencyList}) {
    return ExtapiGetFiatCurrencyListResponse(
        fiatCurrencyList: fiatCurrencyList ?? this.fiatCurrencyList);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetGatewayMiningHealthResponse {
  ExtapiGetGatewayMiningHealthResponse({
    this.gatewayHealth,
    this.miningHealthAverage,
  });

  factory ExtapiGetGatewayMiningHealthResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetGatewayMiningHealthResponseFromJson(json);

  @JsonKey(name: 'gatewayHealth', defaultValue: <ExtapiGatewayMiningHealth>[])
  final List<ExtapiGatewayMiningHealth>? gatewayHealth;
  @JsonKey(name: 'miningHealthAverage')
  final ExtapiMiningHealthAverage? miningHealthAverage;
  static const fromJsonFactory = _$ExtapiGetGatewayMiningHealthResponseFromJson;
  static const toJsonFactory = _$ExtapiGetGatewayMiningHealthResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetGatewayMiningHealthResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetGatewayMiningHealthResponse &&
            (identical(other.gatewayHealth, gatewayHealth) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayHealth, gatewayHealth)) &&
            (identical(other.miningHealthAverage, miningHealthAverage) ||
                const DeepCollectionEquality()
                    .equals(other.miningHealthAverage, miningHealthAverage)));
  }
}

extension $ExtapiGetGatewayMiningHealthResponseExtension
    on ExtapiGetGatewayMiningHealthResponse {
  ExtapiGetGatewayMiningHealthResponse copyWith(
      {List<ExtapiGatewayMiningHealth>? gatewayHealth,
      ExtapiMiningHealthAverage? miningHealthAverage}) {
    return ExtapiGetGatewayMiningHealthResponse(
        gatewayHealth: gatewayHealth ?? this.gatewayHealth,
        miningHealthAverage: miningHealthAverage ?? this.miningHealthAverage);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetGatewayMiningIncomeResponse {
  ExtapiGetGatewayMiningIncomeResponse({
    this.dailyStats,
    this.total,
  });

  factory ExtapiGetGatewayMiningIncomeResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetGatewayMiningIncomeResponseFromJson(json);

  @JsonKey(name: 'dailyStats', defaultValue: <ExtapiMiningStats>[])
  final List<ExtapiMiningStats>? dailyStats;
  @JsonKey(name: 'total')
  final String? total;
  static const fromJsonFactory = _$ExtapiGetGatewayMiningIncomeResponseFromJson;
  static const toJsonFactory = _$ExtapiGetGatewayMiningIncomeResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetGatewayMiningIncomeResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetGatewayMiningIncomeResponse &&
            (identical(other.dailyStats, dailyStats) ||
                const DeepCollectionEquality()
                    .equals(other.dailyStats, dailyStats)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }
}

extension $ExtapiGetGatewayMiningIncomeResponseExtension
    on ExtapiGetGatewayMiningIncomeResponse {
  ExtapiGetGatewayMiningIncomeResponse copyWith(
      {List<ExtapiMiningStats>? dailyStats, String? total}) {
    return ExtapiGetGatewayMiningIncomeResponse(
        dailyStats: dailyStats ?? this.dailyStats, total: total ?? this.total);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetGatewayProfileResponse {
  ExtapiGetGatewayProfileResponse({
    this.createdAt,
    this.gatewayProfile,
    this.updatedAt,
  });

  factory ExtapiGetGatewayProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetGatewayProfileResponseFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'gatewayProfile')
  final ExtapiGatewayProfile? gatewayProfile;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiGetGatewayProfileResponseFromJson;
  static const toJsonFactory = _$ExtapiGetGatewayProfileResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetGatewayProfileResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetGatewayProfileResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.gatewayProfile, gatewayProfile) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayProfile, gatewayProfile)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiGetGatewayProfileResponseExtension
    on ExtapiGetGatewayProfileResponse {
  ExtapiGetGatewayProfileResponse copyWith(
      {DateTime? createdAt,
      ExtapiGatewayProfile? gatewayProfile,
      DateTime? updatedAt}) {
    return ExtapiGetGatewayProfileResponse(
        createdAt: createdAt ?? this.createdAt,
        gatewayProfile: gatewayProfile ?? this.gatewayProfile,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetGatewayResponse {
  ExtapiGetGatewayResponse({
    this.createdAt,
    this.firstSeenAt,
    this.gateway,
    this.lastSeenAt,
    this.updatedAt,
  });

  factory ExtapiGetGatewayResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetGatewayResponseFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'firstSeenAt')
  final DateTime? firstSeenAt;
  @JsonKey(name: 'gateway')
  final ExtapiGateway? gateway;
  @JsonKey(name: 'lastSeenAt')
  final DateTime? lastSeenAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiGetGatewayResponseFromJson;
  static const toJsonFactory = _$ExtapiGetGatewayResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetGatewayResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetGatewayResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.firstSeenAt, firstSeenAt) ||
                const DeepCollectionEquality()
                    .equals(other.firstSeenAt, firstSeenAt)) &&
            (identical(other.gateway, gateway) ||
                const DeepCollectionEquality()
                    .equals(other.gateway, gateway)) &&
            (identical(other.lastSeenAt, lastSeenAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeenAt, lastSeenAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiGetGatewayResponseExtension on ExtapiGetGatewayResponse {
  ExtapiGetGatewayResponse copyWith(
      {DateTime? createdAt,
      DateTime? firstSeenAt,
      ExtapiGateway? gateway,
      DateTime? lastSeenAt,
      DateTime? updatedAt}) {
    return ExtapiGetGatewayResponse(
        createdAt: createdAt ?? this.createdAt,
        firstSeenAt: firstSeenAt ?? this.firstSeenAt,
        gateway: gateway ?? this.gateway,
        lastSeenAt: lastSeenAt ?? this.lastSeenAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetGatewayStatsResponse {
  ExtapiGetGatewayStatsResponse({
    this.result,
  });

  factory ExtapiGetGatewayStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetGatewayStatsResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiGatewayStats>[])
  final List<ExtapiGatewayStats>? result;
  static const fromJsonFactory = _$ExtapiGetGatewayStatsResponseFromJson;
  static const toJsonFactory = _$ExtapiGetGatewayStatsResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetGatewayStatsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetGatewayStatsResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }
}

extension $ExtapiGetGatewayStatsResponseExtension
    on ExtapiGetGatewayStatsResponse {
  ExtapiGetGatewayStatsResponse copyWith({List<ExtapiGatewayStats>? result}) {
    return ExtapiGetGatewayStatsResponse(result: result ?? this.result);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetGwConfigResponse {
  ExtapiGetGwConfigResponse({
    this.conf,
  });

  factory ExtapiGetGwConfigResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetGwConfigResponseFromJson(json);

  @JsonKey(name: 'conf')
  final String? conf;
  static const fromJsonFactory = _$ExtapiGetGwConfigResponseFromJson;
  static const toJsonFactory = _$ExtapiGetGwConfigResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetGwConfigResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetGwConfigResponse &&
            (identical(other.conf, conf) ||
                const DeepCollectionEquality().equals(other.conf, conf)));
  }
}

extension $ExtapiGetGwConfigResponseExtension on ExtapiGetGwConfigResponse {
  ExtapiGetGwConfigResponse copyWith({String? conf}) {
    return ExtapiGetGwConfigResponse(conf: conf ?? this.conf);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetGwPwdResponse {
  ExtapiGetGwPwdResponse({
    this.password,
  });

  factory ExtapiGetGwPwdResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetGwPwdResponseFromJson(json);

  @JsonKey(name: 'password')
  final String? password;
  static const fromJsonFactory = _$ExtapiGetGwPwdResponseFromJson;
  static const toJsonFactory = _$ExtapiGetGwPwdResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetGwPwdResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetGwPwdResponse &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }
}

extension $ExtapiGetGwPwdResponseExtension on ExtapiGetGwPwdResponse {
  ExtapiGetGwPwdResponse copyWith({String? password}) {
    return ExtapiGetGwPwdResponse(password: password ?? this.password);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetJWTRequest {
  ExtapiGetJWTRequest({
    this.organizationId,
    this.ttlInSeconds,
  });

  factory ExtapiGetJWTRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetJWTRequestFromJson(json);

  @JsonKey(name: 'organizationId')
  final String? organizationId;
  @JsonKey(name: 'ttlInSeconds')
  final String? ttlInSeconds;
  static const fromJsonFactory = _$ExtapiGetJWTRequestFromJson;
  static const toJsonFactory = _$ExtapiGetJWTRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetJWTRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetJWTRequest &&
            (identical(other.organizationId, organizationId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationId, organizationId)) &&
            (identical(other.ttlInSeconds, ttlInSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.ttlInSeconds, ttlInSeconds)));
  }
}

extension $ExtapiGetJWTRequestExtension on ExtapiGetJWTRequest {
  ExtapiGetJWTRequest copyWith({String? organizationId, String? ttlInSeconds}) {
    return ExtapiGetJWTRequest(
        organizationId: organizationId ?? this.organizationId,
        ttlInSeconds: ttlInSeconds ?? this.ttlInSeconds);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetJWTResponse {
  ExtapiGetJWTResponse({
    this.jwtMqttAuth,
  });

  factory ExtapiGetJWTResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetJWTResponseFromJson(json);

  @JsonKey(name: 'jwtMqttAuth')
  final String? jwtMqttAuth;
  static const fromJsonFactory = _$ExtapiGetJWTResponseFromJson;
  static const toJsonFactory = _$ExtapiGetJWTResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetJWTResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetJWTResponse &&
            (identical(other.jwtMqttAuth, jwtMqttAuth) ||
                const DeepCollectionEquality()
                    .equals(other.jwtMqttAuth, jwtMqttAuth)));
  }
}

extension $ExtapiGetJWTResponseExtension on ExtapiGetJWTResponse {
  ExtapiGetJWTResponse copyWith({String? jwtMqttAuth}) {
    return ExtapiGetJWTResponse(jwtMqttAuth: jwtMqttAuth ?? this.jwtMqttAuth);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetLastPingResponse {
  ExtapiGetLastPingResponse({
    this.createdAt,
    this.dr,
    this.frequency,
    this.pingRX,
  });

  factory ExtapiGetLastPingResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetLastPingResponseFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'dr')
  final int? dr;
  @JsonKey(name: 'frequency')
  final int? frequency;
  @JsonKey(name: 'pingRX', defaultValue: <ExtapiPingRX>[])
  final List<ExtapiPingRX>? pingRX;
  static const fromJsonFactory = _$ExtapiGetLastPingResponseFromJson;
  static const toJsonFactory = _$ExtapiGetLastPingResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetLastPingResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetLastPingResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.dr, dr) ||
                const DeepCollectionEquality().equals(other.dr, dr)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.pingRX, pingRX) ||
                const DeepCollectionEquality().equals(other.pingRX, pingRX)));
  }
}

extension $ExtapiGetLastPingResponseExtension on ExtapiGetLastPingResponse {
  ExtapiGetLastPingResponse copyWith(
      {DateTime? createdAt,
      int? dr,
      int? frequency,
      List<ExtapiPingRX>? pingRX}) {
    return ExtapiGetLastPingResponse(
        createdAt: createdAt ?? this.createdAt,
        dr: dr ?? this.dr,
        frequency: frequency ?? this.frequency,
        pingRX: pingRX ?? this.pingRX);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetMXCpriceResponse {
  ExtapiGetMXCpriceResponse({
    this.mxcPrice,
  });

  factory ExtapiGetMXCpriceResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetMXCpriceResponseFromJson(json);

  @JsonKey(name: 'mxcPrice')
  final String? mxcPrice;
  static const fromJsonFactory = _$ExtapiGetMXCpriceResponseFromJson;
  static const toJsonFactory = _$ExtapiGetMXCpriceResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetMXCpriceResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetMXCpriceResponse &&
            (identical(other.mxcPrice, mxcPrice) ||
                const DeepCollectionEquality()
                    .equals(other.mxcPrice, mxcPrice)));
  }
}

extension $ExtapiGetMXCpriceResponseExtension on ExtapiGetMXCpriceResponse {
  ExtapiGetMXCpriceResponse copyWith({String? mxcPrice}) {
    return ExtapiGetMXCpriceResponse(mxcPrice: mxcPrice ?? this.mxcPrice);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetMiningInfoResponse {
  ExtapiGetMiningInfoResponse({
    this.data,
    this.todayRev,
  });

  factory ExtapiGetMiningInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetMiningInfoResponseFromJson(json);

  @JsonKey(name: 'data', defaultValue: <ExtapiMiningData>[])
  final List<ExtapiMiningData>? data;
  @JsonKey(name: 'todayRev')
  final String? todayRev;
  static const fromJsonFactory = _$ExtapiGetMiningInfoResponseFromJson;
  static const toJsonFactory = _$ExtapiGetMiningInfoResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetMiningInfoResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetMiningInfoResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.todayRev, todayRev) ||
                const DeepCollectionEquality()
                    .equals(other.todayRev, todayRev)));
  }
}

extension $ExtapiGetMiningInfoResponseExtension on ExtapiGetMiningInfoResponse {
  ExtapiGetMiningInfoResponse copyWith(
      {List<ExtapiMiningData>? data, String? todayRev}) {
    return ExtapiGetMiningInfoResponse(
        data: data ?? this.data, todayRev: todayRev ?? this.todayRev);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetMxprotocolServerVersionResponse {
  ExtapiGetMxprotocolServerVersionResponse({
    this.version,
  });

  factory ExtapiGetMxprotocolServerVersionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetMxprotocolServerVersionResponseFromJson(json);

  @JsonKey(name: 'version')
  final String? version;
  static const fromJsonFactory =
      _$ExtapiGetMxprotocolServerVersionResponseFromJson;
  static const toJsonFactory = _$ExtapiGetMxprotocolServerVersionResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetMxprotocolServerVersionResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetMxprotocolServerVersionResponse &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }
}

extension $ExtapiGetMxprotocolServerVersionResponseExtension
    on ExtapiGetMxprotocolServerVersionResponse {
  ExtapiGetMxprotocolServerVersionResponse copyWith({String? version}) {
    return ExtapiGetMxprotocolServerVersionResponse(
        version: version ?? this.version);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetNetworkServerResponse {
  ExtapiGetNetworkServerResponse({
    this.createdAt,
    this.networkServer,
    this.region,
    this.updatedAt,
    this.version,
  });

  factory ExtapiGetNetworkServerResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetNetworkServerResponseFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'networkServer')
  final ExtapiNetworkServer? networkServer;
  @JsonKey(name: 'region')
  final String? region;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'version')
  final String? version;
  static const fromJsonFactory = _$ExtapiGetNetworkServerResponseFromJson;
  static const toJsonFactory = _$ExtapiGetNetworkServerResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetNetworkServerResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetNetworkServerResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.networkServer, networkServer) ||
                const DeepCollectionEquality()
                    .equals(other.networkServer, networkServer)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }
}

extension $ExtapiGetNetworkServerResponseExtension
    on ExtapiGetNetworkServerResponse {
  ExtapiGetNetworkServerResponse copyWith(
      {DateTime? createdAt,
      ExtapiNetworkServer? networkServer,
      String? region,
      DateTime? updatedAt,
      String? version}) {
    return ExtapiGetNetworkServerResponse(
        createdAt: createdAt ?? this.createdAt,
        networkServer: networkServer ?? this.networkServer,
        region: region ?? this.region,
        updatedAt: updatedAt ?? this.updatedAt,
        version: version ?? this.version);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetOrdersByUserResponse {
  ExtapiGetOrdersByUserResponse({
    this.orders,
  });

  factory ExtapiGetOrdersByUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetOrdersByUserResponseFromJson(json);

  @JsonKey(name: 'orders', defaultValue: <ExtapiOrder>[])
  final List<ExtapiOrder>? orders;
  static const fromJsonFactory = _$ExtapiGetOrdersByUserResponseFromJson;
  static const toJsonFactory = _$ExtapiGetOrdersByUserResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetOrdersByUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetOrdersByUserResponse &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }
}

extension $ExtapiGetOrdersByUserResponseExtension
    on ExtapiGetOrdersByUserResponse {
  ExtapiGetOrdersByUserResponse copyWith({List<ExtapiOrder>? orders}) {
    return ExtapiGetOrdersByUserResponse(orders: orders ?? this.orders);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetOrganizationResponse {
  ExtapiGetOrganizationResponse({
    this.createdAt,
    this.organization,
    this.updatedAt,
  });

  factory ExtapiGetOrganizationResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetOrganizationResponseFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'organization')
  final ExtapiOrganization? organization;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiGetOrganizationResponseFromJson;
  static const toJsonFactory = _$ExtapiGetOrganizationResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetOrganizationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetOrganizationResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiGetOrganizationResponseExtension
    on ExtapiGetOrganizationResponse {
  ExtapiGetOrganizationResponse copyWith(
      {DateTime? createdAt,
      ExtapiOrganization? organization,
      DateTime? updatedAt}) {
    return ExtapiGetOrganizationResponse(
        createdAt: createdAt ?? this.createdAt,
        organization: organization ?? this.organization,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetOrganizationUserResponse {
  ExtapiGetOrganizationUserResponse({
    this.createdAt,
    this.organizationUser,
    this.updatedAt,
  });

  factory ExtapiGetOrganizationUserResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetOrganizationUserResponseFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'organizationUser')
  final ExtapiOrganizationUser? organizationUser;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiGetOrganizationUserResponseFromJson;
  static const toJsonFactory = _$ExtapiGetOrganizationUserResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetOrganizationUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetOrganizationUserResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.organizationUser, organizationUser) ||
                const DeepCollectionEquality()
                    .equals(other.organizationUser, organizationUser)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiGetOrganizationUserResponseExtension
    on ExtapiGetOrganizationUserResponse {
  ExtapiGetOrganizationUserResponse copyWith(
      {DateTime? createdAt,
      ExtapiOrganizationUser? organizationUser,
      DateTime? updatedAt}) {
    return ExtapiGetOrganizationUserResponse(
        createdAt: createdAt ?? this.createdAt,
        organizationUser: organizationUser ?? this.organizationUser,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetRandomDevAddrResponse {
  ExtapiGetRandomDevAddrResponse({
    this.devAddr,
  });

  factory ExtapiGetRandomDevAddrResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetRandomDevAddrResponseFromJson(json);

  @JsonKey(name: 'devAddr')
  final String? devAddr;
  static const fromJsonFactory = _$ExtapiGetRandomDevAddrResponseFromJson;
  static const toJsonFactory = _$ExtapiGetRandomDevAddrResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetRandomDevAddrResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetRandomDevAddrResponse &&
            (identical(other.devAddr, devAddr) ||
                const DeepCollectionEquality().equals(other.devAddr, devAddr)));
  }
}

extension $ExtapiGetRandomDevAddrResponseExtension
    on ExtapiGetRandomDevAddrResponse {
  ExtapiGetRandomDevAddrResponse copyWith({String? devAddr}) {
    return ExtapiGetRandomDevAddrResponse(devAddr: devAddr ?? this.devAddr);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetRecoveryCodesRequest {
  ExtapiGetRecoveryCodesRequest({
    this.regenerate,
  });

  factory ExtapiGetRecoveryCodesRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetRecoveryCodesRequestFromJson(json);

  @JsonKey(name: 'regenerate')
  final bool? regenerate;
  static const fromJsonFactory = _$ExtapiGetRecoveryCodesRequestFromJson;
  static const toJsonFactory = _$ExtapiGetRecoveryCodesRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetRecoveryCodesRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetRecoveryCodesRequest &&
            (identical(other.regenerate, regenerate) ||
                const DeepCollectionEquality()
                    .equals(other.regenerate, regenerate)));
  }
}

extension $ExtapiGetRecoveryCodesRequestExtension
    on ExtapiGetRecoveryCodesRequest {
  ExtapiGetRecoveryCodesRequest copyWith({bool? regenerate}) {
    return ExtapiGetRecoveryCodesRequest(
        regenerate: regenerate ?? this.regenerate);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetRecoveryCodesResponse {
  ExtapiGetRecoveryCodesResponse({
    this.recoveryCode,
  });

  factory ExtapiGetRecoveryCodesResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetRecoveryCodesResponseFromJson(json);

  @JsonKey(name: 'recoveryCode', defaultValue: <String>[])
  final List<String>? recoveryCode;
  static const fromJsonFactory = _$ExtapiGetRecoveryCodesResponseFromJson;
  static const toJsonFactory = _$ExtapiGetRecoveryCodesResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetRecoveryCodesResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetRecoveryCodesResponse &&
            (identical(other.recoveryCode, recoveryCode) ||
                const DeepCollectionEquality()
                    .equals(other.recoveryCode, recoveryCode)));
  }
}

extension $ExtapiGetRecoveryCodesResponseExtension
    on ExtapiGetRecoveryCodesResponse {
  ExtapiGetRecoveryCodesResponse copyWith({List<String>? recoveryCode}) {
    return ExtapiGetRecoveryCodesResponse(
        recoveryCode: recoveryCode ?? this.recoveryCode);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetRequestsForSupportPermissionResponse {
  ExtapiGetRequestsForSupportPermissionResponse({
    this.count,
    this.list,
  });

  factory ExtapiGetRequestsForSupportPermissionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetRequestsForSupportPermissionResponseFromJson(json);

  @JsonKey(name: 'count')
  final String? count;
  @JsonKey(name: 'list', defaultValue: <ExtapiSupportPermissionRequest>[])
  final List<ExtapiSupportPermissionRequest>? list;
  static const fromJsonFactory =
      _$ExtapiGetRequestsForSupportPermissionResponseFromJson;
  static const toJsonFactory =
      _$ExtapiGetRequestsForSupportPermissionResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetRequestsForSupportPermissionResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetRequestsForSupportPermissionResponse &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }
}

extension $ExtapiGetRequestsForSupportPermissionResponseExtension
    on ExtapiGetRequestsForSupportPermissionResponse {
  ExtapiGetRequestsForSupportPermissionResponse copyWith(
      {String? count, List<ExtapiSupportPermissionRequest>? list}) {
    return ExtapiGetRequestsForSupportPermissionResponse(
        count: count ?? this.count, list: list ?? this.list);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetServerRegionResponse {
  ExtapiGetServerRegionResponse({
    this.serverRegion,
  });

  factory ExtapiGetServerRegionResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetServerRegionResponseFromJson(json);

  @JsonKey(name: 'serverRegion')
  final String? serverRegion;
  static const fromJsonFactory = _$ExtapiGetServerRegionResponseFromJson;
  static const toJsonFactory = _$ExtapiGetServerRegionResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetServerRegionResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetServerRegionResponse &&
            (identical(other.serverRegion, serverRegion) ||
                const DeepCollectionEquality()
                    .equals(other.serverRegion, serverRegion)));
  }
}

extension $ExtapiGetServerRegionResponseExtension
    on ExtapiGetServerRegionResponse {
  ExtapiGetServerRegionResponse copyWith({String? serverRegion}) {
    return ExtapiGetServerRegionResponse(
        serverRegion: serverRegion ?? this.serverRegion);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetServiceProfileResponse {
  ExtapiGetServiceProfileResponse({
    this.createdAt,
    this.serviceProfile,
    this.updatedAt,
  });

  factory ExtapiGetServiceProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetServiceProfileResponseFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'serviceProfile')
  final ExtapiServiceProfile? serviceProfile;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiGetServiceProfileResponseFromJson;
  static const toJsonFactory = _$ExtapiGetServiceProfileResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetServiceProfileResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetServiceProfileResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.serviceProfile, serviceProfile) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProfile, serviceProfile)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiGetServiceProfileResponseExtension
    on ExtapiGetServiceProfileResponse {
  ExtapiGetServiceProfileResponse copyWith(
      {DateTime? createdAt,
      ExtapiServiceProfile? serviceProfile,
      DateTime? updatedAt}) {
    return ExtapiGetServiceProfileResponse(
        createdAt: createdAt ?? this.createdAt,
        serviceProfile: serviceProfile ?? this.serviceProfile,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetStakesResponse {
  ExtapiGetStakesResponse({
    this.stake,
  });

  factory ExtapiGetStakesResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetStakesResponseFromJson(json);

  @JsonKey(name: 'stake', defaultValue: <ExtapiStake>[])
  final List<ExtapiStake>? stake;
  static const fromJsonFactory = _$ExtapiGetStakesResponseFromJson;
  static const toJsonFactory = _$ExtapiGetStakesResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetStakesResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetStakesResponse &&
            (identical(other.stake, stake) ||
                const DeepCollectionEquality().equals(other.stake, stake)));
  }
}

extension $ExtapiGetStakesResponseExtension on ExtapiGetStakesResponse {
  ExtapiGetStakesResponse copyWith({List<ExtapiStake>? stake}) {
    return ExtapiGetStakesResponse(stake: stake ?? this.stake);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetTOTPConfigurationRequest {
  ExtapiGetTOTPConfigurationRequest({
    this.qrCodeSize,
  });

  factory ExtapiGetTOTPConfigurationRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetTOTPConfigurationRequestFromJson(json);

  @JsonKey(name: 'qrCodeSize')
  final String? qrCodeSize;
  static const fromJsonFactory = _$ExtapiGetTOTPConfigurationRequestFromJson;
  static const toJsonFactory = _$ExtapiGetTOTPConfigurationRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetTOTPConfigurationRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetTOTPConfigurationRequest &&
            (identical(other.qrCodeSize, qrCodeSize) ||
                const DeepCollectionEquality()
                    .equals(other.qrCodeSize, qrCodeSize)));
  }
}

extension $ExtapiGetTOTPConfigurationRequestExtension
    on ExtapiGetTOTPConfigurationRequest {
  ExtapiGetTOTPConfigurationRequest copyWith({String? qrCodeSize}) {
    return ExtapiGetTOTPConfigurationRequest(
        qrCodeSize: qrCodeSize ?? this.qrCodeSize);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetTOTPConfigurationResponse {
  ExtapiGetTOTPConfigurationResponse({
    this.qrCode,
    this.recoveryCode,
    this.secret,
    this.url,
  });

  factory ExtapiGetTOTPConfigurationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetTOTPConfigurationResponseFromJson(json);

  @JsonKey(name: 'qrCode')
  final String? qrCode;
  @JsonKey(name: 'recoveryCode', defaultValue: <String>[])
  final List<String>? recoveryCode;
  @JsonKey(name: 'secret')
  final String? secret;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory = _$ExtapiGetTOTPConfigurationResponseFromJson;
  static const toJsonFactory = _$ExtapiGetTOTPConfigurationResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetTOTPConfigurationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetTOTPConfigurationResponse &&
            (identical(other.qrCode, qrCode) ||
                const DeepCollectionEquality().equals(other.qrCode, qrCode)) &&
            (identical(other.recoveryCode, recoveryCode) ||
                const DeepCollectionEquality()
                    .equals(other.recoveryCode, recoveryCode)) &&
            (identical(other.secret, secret) ||
                const DeepCollectionEquality().equals(other.secret, secret)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }
}

extension $ExtapiGetTOTPConfigurationResponseExtension
    on ExtapiGetTOTPConfigurationResponse {
  ExtapiGetTOTPConfigurationResponse copyWith(
      {String? qrCode,
      List<String>? recoveryCode,
      String? secret,
      String? url}) {
    return ExtapiGetTOTPConfigurationResponse(
        qrCode: qrCode ?? this.qrCode,
        recoveryCode: recoveryCode ?? this.recoveryCode,
        secret: secret ?? this.secret,
        url: url ?? this.url);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetTopUpDestinationResponse {
  ExtapiGetTopUpDestinationResponse({
    this.activeAccount,
  });

  factory ExtapiGetTopUpDestinationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetTopUpDestinationResponseFromJson(json);

  @JsonKey(name: 'activeAccount')
  final String? activeAccount;
  static const fromJsonFactory = _$ExtapiGetTopUpDestinationResponseFromJson;
  static const toJsonFactory = _$ExtapiGetTopUpDestinationResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetTopUpDestinationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetTopUpDestinationResponse &&
            (identical(other.activeAccount, activeAccount) ||
                const DeepCollectionEquality()
                    .equals(other.activeAccount, activeAccount)));
  }
}

extension $ExtapiGetTopUpDestinationResponseExtension
    on ExtapiGetTopUpDestinationResponse {
  ExtapiGetTopUpDestinationResponse copyWith({String? activeAccount}) {
    return ExtapiGetTopUpDestinationResponse(
        activeAccount: activeAccount ?? this.activeAccount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetTopUpHistoryRequest {
  ExtapiGetTopUpHistoryRequest({
    this.currency,
    this.from,
    this.orgId,
    this.till,
  });

  factory ExtapiGetTopUpHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetTopUpHistoryRequestFromJson(json);

  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'from')
  final DateTime? from;
  @JsonKey(name: 'orgId')
  final String? orgId;
  @JsonKey(name: 'till')
  final DateTime? till;
  static const fromJsonFactory = _$ExtapiGetTopUpHistoryRequestFromJson;
  static const toJsonFactory = _$ExtapiGetTopUpHistoryRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetTopUpHistoryRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetTopUpHistoryRequest &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.till, till) ||
                const DeepCollectionEquality().equals(other.till, till)));
  }
}

extension $ExtapiGetTopUpHistoryRequestExtension
    on ExtapiGetTopUpHistoryRequest {
  ExtapiGetTopUpHistoryRequest copyWith(
      {String? currency, DateTime? from, String? orgId, DateTime? till}) {
    return ExtapiGetTopUpHistoryRequest(
        currency: currency ?? this.currency,
        from: from ?? this.from,
        orgId: orgId ?? this.orgId,
        till: till ?? this.till);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetTopUpHistoryResponse {
  ExtapiGetTopUpHistoryResponse({
    this.topupHistory,
  });

  factory ExtapiGetTopUpHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetTopUpHistoryResponseFromJson(json);

  @JsonKey(name: 'topupHistory', defaultValue: <ExtapiTopUpHistory>[])
  final List<ExtapiTopUpHistory>? topupHistory;
  static const fromJsonFactory = _$ExtapiGetTopUpHistoryResponseFromJson;
  static const toJsonFactory = _$ExtapiGetTopUpHistoryResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetTopUpHistoryResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetTopUpHistoryResponse &&
            (identical(other.topupHistory, topupHistory) ||
                const DeepCollectionEquality()
                    .equals(other.topupHistory, topupHistory)));
  }
}

extension $ExtapiGetTopUpHistoryResponseExtension
    on ExtapiGetTopUpHistoryResponse {
  ExtapiGetTopUpHistoryResponse copyWith(
      {List<ExtapiTopUpHistory>? topupHistory}) {
    return ExtapiGetTopUpHistoryResponse(
        topupHistory: topupHistory ?? this.topupHistory);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetTransactionHistoryResponse {
  ExtapiGetTransactionHistoryResponse({
    this.tx,
  });

  factory ExtapiGetTransactionHistoryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetTransactionHistoryResponseFromJson(json);

  @JsonKey(name: 'tx', defaultValue: <ExtapiTransaction>[])
  final List<ExtapiTransaction>? tx;
  static const fromJsonFactory = _$ExtapiGetTransactionHistoryResponseFromJson;
  static const toJsonFactory = _$ExtapiGetTransactionHistoryResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetTransactionHistoryResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetTransactionHistoryResponse &&
            (identical(other.tx, tx) ||
                const DeepCollectionEquality().equals(other.tx, tx)));
  }
}

extension $ExtapiGetTransactionHistoryResponseExtension
    on ExtapiGetTransactionHistoryResponse {
  ExtapiGetTransactionHistoryResponse copyWith({List<ExtapiTransaction>? tx}) {
    return ExtapiGetTransactionHistoryResponse(tx: tx ?? this.tx);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetUserEmailResponse {
  ExtapiGetUserEmailResponse({
    this.status,
  });

  factory ExtapiGetUserEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetUserEmailResponseFromJson(json);

  @JsonKey(name: 'status')
  final bool? status;
  static const fromJsonFactory = _$ExtapiGetUserEmailResponseFromJson;
  static const toJsonFactory = _$ExtapiGetUserEmailResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetUserEmailResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetUserEmailResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiGetUserEmailResponseExtension on ExtapiGetUserEmailResponse {
  ExtapiGetUserEmailResponse copyWith({bool? status}) {
    return ExtapiGetUserEmailResponse(status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetUserResponse {
  ExtapiGetUserResponse({
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory ExtapiGetUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetUserResponseFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'user')
  final ExtapiUser? user;
  static const fromJsonFactory = _$ExtapiGetUserResponseFromJson;
  static const toJsonFactory = _$ExtapiGetUserResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetUserResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }
}

extension $ExtapiGetUserResponseExtension on ExtapiGetUserResponse {
  ExtapiGetUserResponse copyWith(
      {DateTime? createdAt, DateTime? updatedAt, ExtapiUser? user}) {
    return ExtapiGetUserResponse(
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        user: user ?? this.user);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetWalletBalanceResponse {
  ExtapiGetWalletBalanceResponse({
    this.balance,
  });

  factory ExtapiGetWalletBalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetWalletBalanceResponseFromJson(json);

  @JsonKey(name: 'balance')
  final String? balance;
  static const fromJsonFactory = _$ExtapiGetWalletBalanceResponseFromJson;
  static const toJsonFactory = _$ExtapiGetWalletBalanceResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetWalletBalanceResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetWalletBalanceResponse &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(other.balance, balance)));
  }
}

extension $ExtapiGetWalletBalanceResponseExtension
    on ExtapiGetWalletBalanceResponse {
  ExtapiGetWalletBalanceResponse copyWith({String? balance}) {
    return ExtapiGetWalletBalanceResponse(balance: balance ?? this.balance);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetWalletMiningIncomeResponse {
  ExtapiGetWalletMiningIncomeResponse({
    this.miningIncome,
  });

  factory ExtapiGetWalletMiningIncomeResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetWalletMiningIncomeResponseFromJson(json);

  @JsonKey(name: 'miningIncome')
  final String? miningIncome;
  static const fromJsonFactory = _$ExtapiGetWalletMiningIncomeResponseFromJson;
  static const toJsonFactory = _$ExtapiGetWalletMiningIncomeResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetWalletMiningIncomeResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetWalletMiningIncomeResponse &&
            (identical(other.miningIncome, miningIncome) ||
                const DeepCollectionEquality()
                    .equals(other.miningIncome, miningIncome)));
  }
}

extension $ExtapiGetWalletMiningIncomeResponseExtension
    on ExtapiGetWalletMiningIncomeResponse {
  ExtapiGetWalletMiningIncomeResponse copyWith({String? miningIncome}) {
    return ExtapiGetWalletMiningIncomeResponse(
        miningIncome: miningIncome ?? this.miningIncome);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetWithdrawFeeResponse {
  ExtapiGetWithdrawFeeResponse({
    this.currency,
    this.withdrawFee,
  });

  factory ExtapiGetWithdrawFeeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetWithdrawFeeResponseFromJson(json);

  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'withdrawFee')
  final String? withdrawFee;
  static const fromJsonFactory = _$ExtapiGetWithdrawFeeResponseFromJson;
  static const toJsonFactory = _$ExtapiGetWithdrawFeeResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetWithdrawFeeResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetWithdrawFeeResponse &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.withdrawFee, withdrawFee) ||
                const DeepCollectionEquality()
                    .equals(other.withdrawFee, withdrawFee)));
  }
}

extension $ExtapiGetWithdrawFeeResponseExtension
    on ExtapiGetWithdrawFeeResponse {
  ExtapiGetWithdrawFeeResponse copyWith(
      {String? currency, String? withdrawFee}) {
    return ExtapiGetWithdrawFeeResponse(
        currency: currency ?? this.currency,
        withdrawFee: withdrawFee ?? this.withdrawFee);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetWithdrawHistoryResponse {
  ExtapiGetWithdrawHistoryResponse({
    this.withdrawHistory,
  });

  factory ExtapiGetWithdrawHistoryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiGetWithdrawHistoryResponseFromJson(json);

  @JsonKey(name: 'withdrawHistory', defaultValue: <ExtapiWithdrawHistory>[])
  final List<ExtapiWithdrawHistory>? withdrawHistory;
  static const fromJsonFactory = _$ExtapiGetWithdrawHistoryResponseFromJson;
  static const toJsonFactory = _$ExtapiGetWithdrawHistoryResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiGetWithdrawHistoryResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetWithdrawHistoryResponse &&
            (identical(other.withdrawHistory, withdrawHistory) ||
                const DeepCollectionEquality()
                    .equals(other.withdrawHistory, withdrawHistory)));
  }
}

extension $ExtapiGetWithdrawHistoryResponseExtension
    on ExtapiGetWithdrawHistoryResponse {
  ExtapiGetWithdrawHistoryResponse copyWith(
      {List<ExtapiWithdrawHistory>? withdrawHistory}) {
    return ExtapiGetWithdrawHistoryResponse(
        withdrawHistory: withdrawHistory ?? this.withdrawHistory);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetWithdrawRequest {
  ExtapiGetWithdrawRequest({
    this.amount,
    this.currency,
    this.ethAddress,
    this.orgId,
  });

  factory ExtapiGetWithdrawRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetWithdrawRequestFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'ethAddress')
  final String? ethAddress;
  @JsonKey(name: 'orgId')
  final String? orgId;
  static const fromJsonFactory = _$ExtapiGetWithdrawRequestFromJson;
  static const toJsonFactory = _$ExtapiGetWithdrawRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetWithdrawRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetWithdrawRequest &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.ethAddress, ethAddress) ||
                const DeepCollectionEquality()
                    .equals(other.ethAddress, ethAddress)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)));
  }
}

extension $ExtapiGetWithdrawRequestExtension on ExtapiGetWithdrawRequest {
  ExtapiGetWithdrawRequest copyWith(
      {String? amount, String? currency, String? ethAddress, String? orgId}) {
    return ExtapiGetWithdrawRequest(
        amount: amount ?? this.amount,
        currency: currency ?? this.currency,
        ethAddress: ethAddress ?? this.ethAddress,
        orgId: orgId ?? this.orgId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGetWithdrawResponse {
  ExtapiGetWithdrawResponse({
    this.status,
  });

  factory ExtapiGetWithdrawResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGetWithdrawResponseFromJson(json);

  @JsonKey(name: 'status')
  final bool? status;
  static const fromJsonFactory = _$ExtapiGetWithdrawResponseFromJson;
  static const toJsonFactory = _$ExtapiGetWithdrawResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGetWithdrawResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGetWithdrawResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiGetWithdrawResponseExtension on ExtapiGetWithdrawResponse {
  ExtapiGetWithdrawResponse copyWith({bool? status}) {
    return ExtapiGetWithdrawResponse(status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGlobalSearchResponse {
  ExtapiGlobalSearchResponse({
    this.result,
  });

  factory ExtapiGlobalSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGlobalSearchResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiGlobalSearchResult>[])
  final List<ExtapiGlobalSearchResult>? result;
  static const fromJsonFactory = _$ExtapiGlobalSearchResponseFromJson;
  static const toJsonFactory = _$ExtapiGlobalSearchResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiGlobalSearchResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGlobalSearchResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }
}

extension $ExtapiGlobalSearchResponseExtension on ExtapiGlobalSearchResponse {
  ExtapiGlobalSearchResponse copyWith(
      {List<ExtapiGlobalSearchResult>? result}) {
    return ExtapiGlobalSearchResponse(result: result ?? this.result);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiGlobalSearchResult {
  ExtapiGlobalSearchResult({
    this.applicationID,
    this.applicationName,
    this.deviceDevEUI,
    this.deviceName,
    this.gatewayMAC,
    this.gatewayName,
    this.kind,
    this.organizationID,
    this.organizationName,
    this.score,
  });

  factory ExtapiGlobalSearchResult.fromJson(Map<String, dynamic> json) =>
      _$ExtapiGlobalSearchResultFromJson(json);

  @JsonKey(name: 'applicationID')
  final String? applicationID;
  @JsonKey(name: 'applicationName')
  final String? applicationName;
  @JsonKey(name: 'deviceDevEUI')
  final String? deviceDevEUI;
  @JsonKey(name: 'deviceName')
  final String? deviceName;
  @JsonKey(name: 'gatewayMAC')
  final String? gatewayMAC;
  @JsonKey(name: 'gatewayName')
  final String? gatewayName;
  @JsonKey(name: 'kind')
  final String? kind;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'organizationName')
  final String? organizationName;
  @JsonKey(name: 'score')
  final double? score;
  static const fromJsonFactory = _$ExtapiGlobalSearchResultFromJson;
  static const toJsonFactory = _$ExtapiGlobalSearchResultToJson;
  Map<String, dynamic> toJson() => _$ExtapiGlobalSearchResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiGlobalSearchResult &&
            (identical(other.applicationID, applicationID) ||
                const DeepCollectionEquality()
                    .equals(other.applicationID, applicationID)) &&
            (identical(other.applicationName, applicationName) ||
                const DeepCollectionEquality()
                    .equals(other.applicationName, applicationName)) &&
            (identical(other.deviceDevEUI, deviceDevEUI) ||
                const DeepCollectionEquality()
                    .equals(other.deviceDevEUI, deviceDevEUI)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.gatewayMAC, gatewayMAC) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayMAC, gatewayMAC)) &&
            (identical(other.gatewayName, gatewayName) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayName, gatewayName)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.organizationName, organizationName) ||
                const DeepCollectionEquality()
                    .equals(other.organizationName, organizationName)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)));
  }
}

extension $ExtapiGlobalSearchResultExtension on ExtapiGlobalSearchResult {
  ExtapiGlobalSearchResult copyWith(
      {String? applicationID,
      String? applicationName,
      String? deviceDevEUI,
      String? deviceName,
      String? gatewayMAC,
      String? gatewayName,
      String? kind,
      String? organizationID,
      String? organizationName,
      double? score}) {
    return ExtapiGlobalSearchResult(
        applicationID: applicationID ?? this.applicationID,
        applicationName: applicationName ?? this.applicationName,
        deviceDevEUI: deviceDevEUI ?? this.deviceDevEUI,
        deviceName: deviceName ?? this.deviceName,
        gatewayMAC: gatewayMAC ?? this.gatewayMAC,
        gatewayName: gatewayName ?? this.gatewayName,
        kind: kind ?? this.kind,
        organizationID: organizationID ?? this.organizationID,
        organizationName: organizationName ?? this.organizationName,
        score: score ?? this.score);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiInsertNewDefaultGatewayConfigRequest {
  ExtapiInsertNewDefaultGatewayConfigRequest({
    this.defaultConfig,
    this.model,
    this.region,
  });

  factory ExtapiInsertNewDefaultGatewayConfigRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiInsertNewDefaultGatewayConfigRequestFromJson(json);

  @JsonKey(name: 'defaultConfig')
  final String? defaultConfig;
  @JsonKey(name: 'model')
  final String? model;
  @JsonKey(name: 'region')
  final String? region;
  static const fromJsonFactory =
      _$ExtapiInsertNewDefaultGatewayConfigRequestFromJson;
  static const toJsonFactory =
      _$ExtapiInsertNewDefaultGatewayConfigRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiInsertNewDefaultGatewayConfigRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiInsertNewDefaultGatewayConfigRequest &&
            (identical(other.defaultConfig, defaultConfig) ||
                const DeepCollectionEquality()
                    .equals(other.defaultConfig, defaultConfig)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)));
  }
}

extension $ExtapiInsertNewDefaultGatewayConfigRequestExtension
    on ExtapiInsertNewDefaultGatewayConfigRequest {
  ExtapiInsertNewDefaultGatewayConfigRequest copyWith(
      {String? defaultConfig, String? model, String? region}) {
    return ExtapiInsertNewDefaultGatewayConfigRequest(
        defaultConfig: defaultConfig ?? this.defaultConfig,
        model: model ?? this.model,
        region: region ?? this.region);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiInsertNewDefaultGatewayConfigResponse {
  ExtapiInsertNewDefaultGatewayConfigResponse({
    this.status,
  });

  factory ExtapiInsertNewDefaultGatewayConfigResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiInsertNewDefaultGatewayConfigResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$ExtapiInsertNewDefaultGatewayConfigResponseFromJson;
  static const toJsonFactory =
      _$ExtapiInsertNewDefaultGatewayConfigResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiInsertNewDefaultGatewayConfigResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiInsertNewDefaultGatewayConfigResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiInsertNewDefaultGatewayConfigResponseExtension
    on ExtapiInsertNewDefaultGatewayConfigResponse {
  ExtapiInsertNewDefaultGatewayConfigResponse copyWith({String? status}) {
    return ExtapiInsertNewDefaultGatewayConfigResponse(
        status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiJWTAuthenticationRequest {
  ExtapiJWTAuthenticationRequest();

  factory ExtapiJWTAuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiJWTAuthenticationRequestFromJson(json);

  static const fromJsonFactory = _$ExtapiJWTAuthenticationRequestFromJson;
  static const toJsonFactory = _$ExtapiJWTAuthenticationRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiJWTAuthenticationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiJWTAuthenticationResponse {
  ExtapiJWTAuthenticationResponse();

  factory ExtapiJWTAuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiJWTAuthenticationResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiJWTAuthenticationResponseFromJson;
  static const toJsonFactory = _$ExtapiJWTAuthenticationResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiJWTAuthenticationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiListApplicationResponse {
  ExtapiListApplicationResponse({
    this.result,
    this.totalCount,
  });

  factory ExtapiListApplicationResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiListApplicationResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiApplicationListItem>[])
  final List<ExtapiApplicationListItem>? result;
  @JsonKey(name: 'totalCount')
  final String? totalCount;
  static const fromJsonFactory = _$ExtapiListApplicationResponseFromJson;
  static const toJsonFactory = _$ExtapiListApplicationResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiListApplicationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListApplicationResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }
}

extension $ExtapiListApplicationResponseExtension
    on ExtapiListApplicationResponse {
  ExtapiListApplicationResponse copyWith(
      {List<ExtapiApplicationListItem>? result, String? totalCount}) {
    return ExtapiListApplicationResponse(
        result: result ?? this.result,
        totalCount: totalCount ?? this.totalCount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListCellsResponse {
  ExtapiListCellsResponse({
    this.cell,
  });

  factory ExtapiListCellsResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiListCellsResponseFromJson(json);

  @JsonKey(name: 'cell', defaultValue: <ExtapiCell>[])
  final List<ExtapiCell>? cell;
  static const fromJsonFactory = _$ExtapiListCellsResponseFromJson;
  static const toJsonFactory = _$ExtapiListCellsResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiListCellsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListCellsResponse &&
            (identical(other.cell, cell) ||
                const DeepCollectionEquality().equals(other.cell, cell)));
  }
}

extension $ExtapiListCellsResponseExtension on ExtapiListCellsResponse {
  ExtapiListCellsResponse copyWith({List<ExtapiCell>? cell}) {
    return ExtapiListCellsResponse(cell: cell ?? this.cell);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListDeviceProfileResponse {
  ExtapiListDeviceProfileResponse({
    this.result,
    this.totalCount,
  });

  factory ExtapiListDeviceProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiListDeviceProfileResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiDeviceProfileListItem>[])
  final List<ExtapiDeviceProfileListItem>? result;
  @JsonKey(name: 'totalCount')
  final String? totalCount;
  static const fromJsonFactory = _$ExtapiListDeviceProfileResponseFromJson;
  static const toJsonFactory = _$ExtapiListDeviceProfileResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiListDeviceProfileResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListDeviceProfileResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }
}

extension $ExtapiListDeviceProfileResponseExtension
    on ExtapiListDeviceProfileResponse {
  ExtapiListDeviceProfileResponse copyWith(
      {List<ExtapiDeviceProfileListItem>? result, String? totalCount}) {
    return ExtapiListDeviceProfileResponse(
        result: result ?? this.result,
        totalCount: totalCount ?? this.totalCount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListDeviceQueueItemsResponse {
  ExtapiListDeviceQueueItemsResponse({
    this.deviceQueueItems,
  });

  factory ExtapiListDeviceQueueItemsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiListDeviceQueueItemsResponseFromJson(json);

  @JsonKey(name: 'deviceQueueItems', defaultValue: <ExtapiDeviceQueueItem>[])
  final List<ExtapiDeviceQueueItem>? deviceQueueItems;
  static const fromJsonFactory = _$ExtapiListDeviceQueueItemsResponseFromJson;
  static const toJsonFactory = _$ExtapiListDeviceQueueItemsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiListDeviceQueueItemsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListDeviceQueueItemsResponse &&
            (identical(other.deviceQueueItems, deviceQueueItems) ||
                const DeepCollectionEquality()
                    .equals(other.deviceQueueItems, deviceQueueItems)));
  }
}

extension $ExtapiListDeviceQueueItemsResponseExtension
    on ExtapiListDeviceQueueItemsResponse {
  ExtapiListDeviceQueueItemsResponse copyWith(
      {List<ExtapiDeviceQueueItem>? deviceQueueItems}) {
    return ExtapiListDeviceQueueItemsResponse(
        deviceQueueItems: deviceQueueItems ?? this.deviceQueueItems);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListDeviceResponse {
  ExtapiListDeviceResponse({
    this.result,
    this.totalCount,
  });

  factory ExtapiListDeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiListDeviceResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiDeviceListItem>[])
  final List<ExtapiDeviceListItem>? result;
  @JsonKey(name: 'totalCount')
  final String? totalCount;
  static const fromJsonFactory = _$ExtapiListDeviceResponseFromJson;
  static const toJsonFactory = _$ExtapiListDeviceResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiListDeviceResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListDeviceResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }
}

extension $ExtapiListDeviceResponseExtension on ExtapiListDeviceResponse {
  ExtapiListDeviceResponse copyWith(
      {List<ExtapiDeviceListItem>? result, String? totalCount}) {
    return ExtapiListDeviceResponse(
        result: result ?? this.result,
        totalCount: totalCount ?? this.totalCount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListGatewayLocationsResponse {
  ExtapiListGatewayLocationsResponse({
    this.result,
  });

  factory ExtapiListGatewayLocationsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiListGatewayLocationsResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiGatewayLocationListItem>[])
  final List<ExtapiGatewayLocationListItem>? result;
  static const fromJsonFactory = _$ExtapiListGatewayLocationsResponseFromJson;
  static const toJsonFactory = _$ExtapiListGatewayLocationsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiListGatewayLocationsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListGatewayLocationsResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }
}

extension $ExtapiListGatewayLocationsResponseExtension
    on ExtapiListGatewayLocationsResponse {
  ExtapiListGatewayLocationsResponse copyWith(
      {List<ExtapiGatewayLocationListItem>? result}) {
    return ExtapiListGatewayLocationsResponse(result: result ?? this.result);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListGatewayProfilesResponse {
  ExtapiListGatewayProfilesResponse({
    this.result,
    this.totalCount,
  });

  factory ExtapiListGatewayProfilesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiListGatewayProfilesResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiGatewayProfileListItem>[])
  final List<ExtapiGatewayProfileListItem>? result;
  @JsonKey(name: 'totalCount')
  final String? totalCount;
  static const fromJsonFactory = _$ExtapiListGatewayProfilesResponseFromJson;
  static const toJsonFactory = _$ExtapiListGatewayProfilesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiListGatewayProfilesResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListGatewayProfilesResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }
}

extension $ExtapiListGatewayProfilesResponseExtension
    on ExtapiListGatewayProfilesResponse {
  ExtapiListGatewayProfilesResponse copyWith(
      {List<ExtapiGatewayProfileListItem>? result, String? totalCount}) {
    return ExtapiListGatewayProfilesResponse(
        result: result ?? this.result,
        totalCount: totalCount ?? this.totalCount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListGatewayResponse {
  ExtapiListGatewayResponse({
    this.result,
    this.totalCount,
  });

  factory ExtapiListGatewayResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiListGatewayResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiGatewayListItem>[])
  final List<ExtapiGatewayListItem>? result;
  @JsonKey(name: 'totalCount')
  final String? totalCount;
  static const fromJsonFactory = _$ExtapiListGatewayResponseFromJson;
  static const toJsonFactory = _$ExtapiListGatewayResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiListGatewayResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListGatewayResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }
}

extension $ExtapiListGatewayResponseExtension on ExtapiListGatewayResponse {
  ExtapiListGatewayResponse copyWith(
      {List<ExtapiGatewayListItem>? result, String? totalCount}) {
    return ExtapiListGatewayResponse(
        result: result ?? this.result,
        totalCount: totalCount ?? this.totalCount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListNetworkServerResponse {
  ExtapiListNetworkServerResponse({
    this.result,
    this.totalCount,
  });

  factory ExtapiListNetworkServerResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiListNetworkServerResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiNetworkServerListItem>[])
  final List<ExtapiNetworkServerListItem>? result;
  @JsonKey(name: 'totalCount')
  final String? totalCount;
  static const fromJsonFactory = _$ExtapiListNetworkServerResponseFromJson;
  static const toJsonFactory = _$ExtapiListNetworkServerResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiListNetworkServerResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListNetworkServerResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }
}

extension $ExtapiListNetworkServerResponseExtension
    on ExtapiListNetworkServerResponse {
  ExtapiListNetworkServerResponse copyWith(
      {List<ExtapiNetworkServerListItem>? result, String? totalCount}) {
    return ExtapiListNetworkServerResponse(
        result: result ?? this.result,
        totalCount: totalCount ?? this.totalCount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListOrganizationResponse {
  ExtapiListOrganizationResponse({
    this.result,
    this.totalCount,
  });

  factory ExtapiListOrganizationResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiListOrganizationResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiOrganizationListItem>[])
  final List<ExtapiOrganizationListItem>? result;
  @JsonKey(name: 'totalCount')
  final String? totalCount;
  static const fromJsonFactory = _$ExtapiListOrganizationResponseFromJson;
  static const toJsonFactory = _$ExtapiListOrganizationResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiListOrganizationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListOrganizationResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }
}

extension $ExtapiListOrganizationResponseExtension
    on ExtapiListOrganizationResponse {
  ExtapiListOrganizationResponse copyWith(
      {List<ExtapiOrganizationListItem>? result, String? totalCount}) {
    return ExtapiListOrganizationResponse(
        result: result ?? this.result,
        totalCount: totalCount ?? this.totalCount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListOrganizationUsersResponse {
  ExtapiListOrganizationUsersResponse({
    this.result,
    this.totalCount,
  });

  factory ExtapiListOrganizationUsersResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiListOrganizationUsersResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiOrganizationUserListItem>[])
  final List<ExtapiOrganizationUserListItem>? result;
  @JsonKey(name: 'totalCount')
  final String? totalCount;
  static const fromJsonFactory = _$ExtapiListOrganizationUsersResponseFromJson;
  static const toJsonFactory = _$ExtapiListOrganizationUsersResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiListOrganizationUsersResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListOrganizationUsersResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }
}

extension $ExtapiListOrganizationUsersResponseExtension
    on ExtapiListOrganizationUsersResponse {
  ExtapiListOrganizationUsersResponse copyWith(
      {List<ExtapiOrganizationUserListItem>? result, String? totalCount}) {
    return ExtapiListOrganizationUsersResponse(
        result: result ?? this.result,
        totalCount: totalCount ?? this.totalCount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListServiceProfileResponse {
  ExtapiListServiceProfileResponse({
    this.result,
    this.totalCount,
  });

  factory ExtapiListServiceProfileResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiListServiceProfileResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiServiceProfileListItem>[])
  final List<ExtapiServiceProfileListItem>? result;
  @JsonKey(name: 'totalCount')
  final String? totalCount;
  static const fromJsonFactory = _$ExtapiListServiceProfileResponseFromJson;
  static const toJsonFactory = _$ExtapiListServiceProfileResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiListServiceProfileResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListServiceProfileResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }
}

extension $ExtapiListServiceProfileResponseExtension
    on ExtapiListServiceProfileResponse {
  ExtapiListServiceProfileResponse copyWith(
      {List<ExtapiServiceProfileListItem>? result, String? totalCount}) {
    return ExtapiListServiceProfileResponse(
        result: result ?? this.result,
        totalCount: totalCount ?? this.totalCount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListUserActionsByEmailResponse {
  ExtapiListUserActionsByEmailResponse({
    this.userActions,
  });

  factory ExtapiListUserActionsByEmailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiListUserActionsByEmailResponseFromJson(json);

  @JsonKey(name: 'userActions', defaultValue: <ExtapiUserAction>[])
  final List<ExtapiUserAction>? userActions;
  static const fromJsonFactory = _$ExtapiListUserActionsByEmailResponseFromJson;
  static const toJsonFactory = _$ExtapiListUserActionsByEmailResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiListUserActionsByEmailResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListUserActionsByEmailResponse &&
            (identical(other.userActions, userActions) ||
                const DeepCollectionEquality()
                    .equals(other.userActions, userActions)));
  }
}

extension $ExtapiListUserActionsByEmailResponseExtension
    on ExtapiListUserActionsByEmailResponse {
  ExtapiListUserActionsByEmailResponse copyWith(
      {List<ExtapiUserAction>? userActions}) {
    return ExtapiListUserActionsByEmailResponse(
        userActions: userActions ?? this.userActions);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListUserActionsResponse {
  ExtapiListUserActionsResponse({
    this.userActions,
  });

  factory ExtapiListUserActionsResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiListUserActionsResponseFromJson(json);

  @JsonKey(name: 'userActions', defaultValue: <ExtapiUserAction>[])
  final List<ExtapiUserAction>? userActions;
  static const fromJsonFactory = _$ExtapiListUserActionsResponseFromJson;
  static const toJsonFactory = _$ExtapiListUserActionsResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiListUserActionsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListUserActionsResponse &&
            (identical(other.userActions, userActions) ||
                const DeepCollectionEquality()
                    .equals(other.userActions, userActions)));
  }
}

extension $ExtapiListUserActionsResponseExtension
    on ExtapiListUserActionsResponse {
  ExtapiListUserActionsResponse copyWith(
      {List<ExtapiUserAction>? userActions}) {
    return ExtapiListUserActionsResponse(
        userActions: userActions ?? this.userActions);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiListUserResponse {
  ExtapiListUserResponse({
    this.result,
    this.totalCount,
  });

  factory ExtapiListUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiListUserResponseFromJson(json);

  @JsonKey(name: 'result', defaultValue: <ExtapiUserListItem>[])
  final List<ExtapiUserListItem>? result;
  @JsonKey(name: 'totalCount')
  final String? totalCount;
  static const fromJsonFactory = _$ExtapiListUserResponseFromJson;
  static const toJsonFactory = _$ExtapiListUserResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiListUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiListUserResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }
}

extension $ExtapiListUserResponseExtension on ExtapiListUserResponse {
  ExtapiListUserResponse copyWith(
      {List<ExtapiUserListItem>? result, String? totalCount}) {
    return ExtapiListUserResponse(
        result: result ?? this.result,
        totalCount: totalCount ?? this.totalCount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiLogin2FARequest {
  ExtapiLogin2FARequest();

  factory ExtapiLogin2FARequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiLogin2FARequestFromJson(json);

  static const fromJsonFactory = _$ExtapiLogin2FARequestFromJson;
  static const toJsonFactory = _$ExtapiLogin2FARequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiLogin2FARequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiLoginRequest {
  ExtapiLoginRequest({
    this.captcha,
    this.password,
    this.username,
  });

  factory ExtapiLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiLoginRequestFromJson(json);

  @JsonKey(name: 'captcha')
  final String? captcha;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$ExtapiLoginRequestFromJson;
  static const toJsonFactory = _$ExtapiLoginRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiLoginRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiLoginRequest &&
            (identical(other.captcha, captcha) ||
                const DeepCollectionEquality()
                    .equals(other.captcha, captcha)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }
}

extension $ExtapiLoginRequestExtension on ExtapiLoginRequest {
  ExtapiLoginRequest copyWith(
      {String? captcha, String? password, String? username}) {
    return ExtapiLoginRequest(
        captcha: captcha ?? this.captcha,
        password: password ?? this.password,
        username: username ?? this.username);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiLoginResponse {
  ExtapiLoginResponse({
    this.authToken,
    this.is2faRequired,
    this.jwt,
  });

  factory ExtapiLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiLoginResponseFromJson(json);

  @JsonKey(name: 'authToken')
  final String? authToken;
  @JsonKey(name: 'is2faRequired')
  final bool? is2faRequired;
  @JsonKey(name: 'jwt')
  final String? jwt;
  static const fromJsonFactory = _$ExtapiLoginResponseFromJson;
  static const toJsonFactory = _$ExtapiLoginResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiLoginResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiLoginResponse &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)) &&
            (identical(other.is2faRequired, is2faRequired) ||
                const DeepCollectionEquality()
                    .equals(other.is2faRequired, is2faRequired)) &&
            (identical(other.jwt, jwt) ||
                const DeepCollectionEquality().equals(other.jwt, jwt)));
  }
}

extension $ExtapiLoginResponseExtension on ExtapiLoginResponse {
  ExtapiLoginResponse copyWith(
      {String? authToken, bool? is2faRequired, String? jwt}) {
    return ExtapiLoginResponse(
        authToken: authToken ?? this.authToken,
        is2faRequired: is2faRequired ?? this.is2faRequired,
        jwt: jwt ?? this.jwt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiLogoutResponse {
  ExtapiLogoutResponse();

  factory ExtapiLogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiLogoutResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiLogoutResponseFromJson;
  static const toJsonFactory = _$ExtapiLogoutResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiLogoutResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiMXCLockdropsTotalResponse {
  ExtapiMXCLockdropsTotalResponse({
    this.amount,
  });

  factory ExtapiMXCLockdropsTotalResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiMXCLockdropsTotalResponseFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  static const fromJsonFactory = _$ExtapiMXCLockdropsTotalResponseFromJson;
  static const toJsonFactory = _$ExtapiMXCLockdropsTotalResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiMXCLockdropsTotalResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiMXCLockdropsTotalResponse &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }
}

extension $ExtapiMXCLockdropsTotalResponseExtension
    on ExtapiMXCLockdropsTotalResponse {
  ExtapiMXCLockdropsTotalResponse copyWith({String? amount}) {
    return ExtapiMXCLockdropsTotalResponse(amount: amount ?? this.amount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiManualTriggerUpdateFirmwareRequest {
  ExtapiManualTriggerUpdateFirmwareRequest();

  factory ExtapiManualTriggerUpdateFirmwareRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiManualTriggerUpdateFirmwareRequestFromJson(json);

  static const fromJsonFactory =
      _$ExtapiManualTriggerUpdateFirmwareRequestFromJson;
  static const toJsonFactory = _$ExtapiManualTriggerUpdateFirmwareRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiManualTriggerUpdateFirmwareRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiManualTriggerUpdateFirmwareResponse {
  ExtapiManualTriggerUpdateFirmwareResponse();

  factory ExtapiManualTriggerUpdateFirmwareResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiManualTriggerUpdateFirmwareResponseFromJson(json);

  static const fromJsonFactory =
      _$ExtapiManualTriggerUpdateFirmwareResponseFromJson;
  static const toJsonFactory =
      _$ExtapiManualTriggerUpdateFirmwareResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiManualTriggerUpdateFirmwareResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiMiningData {
  ExtapiMiningData({
    this.amount,
    this.month,
  });

  factory ExtapiMiningData.fromJson(Map<String, dynamic> json) =>
      _$ExtapiMiningDataFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'month')
  final String? month;
  static const fromJsonFactory = _$ExtapiMiningDataFromJson;
  static const toJsonFactory = _$ExtapiMiningDataToJson;
  Map<String, dynamic> toJson() => _$ExtapiMiningDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiMiningData &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }
}

extension $ExtapiMiningDataExtension on ExtapiMiningData {
  ExtapiMiningData copyWith({String? amount, String? month}) {
    return ExtapiMiningData(
        amount: amount ?? this.amount, month: month ?? this.month);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiMiningHealthAverage {
  ExtapiMiningHealthAverage({
    this.miningFuelHealth,
    this.overall,
    this.uptimeHealth,
  });

  factory ExtapiMiningHealthAverage.fromJson(Map<String, dynamic> json) =>
      _$ExtapiMiningHealthAverageFromJson(json);

  @JsonKey(name: 'miningFuelHealth')
  final double? miningFuelHealth;
  @JsonKey(name: 'overall')
  final double? overall;
  @JsonKey(name: 'uptimeHealth')
  final double? uptimeHealth;
  static const fromJsonFactory = _$ExtapiMiningHealthAverageFromJson;
  static const toJsonFactory = _$ExtapiMiningHealthAverageToJson;
  Map<String, dynamic> toJson() => _$ExtapiMiningHealthAverageToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiMiningHealthAverage &&
            (identical(other.miningFuelHealth, miningFuelHealth) ||
                const DeepCollectionEquality()
                    .equals(other.miningFuelHealth, miningFuelHealth)) &&
            (identical(other.overall, overall) ||
                const DeepCollectionEquality()
                    .equals(other.overall, overall)) &&
            (identical(other.uptimeHealth, uptimeHealth) ||
                const DeepCollectionEquality()
                    .equals(other.uptimeHealth, uptimeHealth)));
  }
}

extension $ExtapiMiningHealthAverageExtension on ExtapiMiningHealthAverage {
  ExtapiMiningHealthAverage copyWith(
      {double? miningFuelHealth, double? overall, double? uptimeHealth}) {
    return ExtapiMiningHealthAverage(
        miningFuelHealth: miningFuelHealth ?? this.miningFuelHealth,
        overall: overall ?? this.overall,
        uptimeHealth: uptimeHealth ?? this.uptimeHealth);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiMiningReportResponse {
  ExtapiMiningReportResponse({
    this.data,
    this.finish,
  });

  factory ExtapiMiningReportResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiMiningReportResponseFromJson(json);

  @JsonKey(name: 'data')
  final String? data;
  @JsonKey(name: 'finish')
  final bool? finish;
  static const fromJsonFactory = _$ExtapiMiningReportResponseFromJson;
  static const toJsonFactory = _$ExtapiMiningReportResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiMiningReportResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiMiningReportResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.finish, finish) ||
                const DeepCollectionEquality().equals(other.finish, finish)));
  }
}

extension $ExtapiMiningReportResponseExtension on ExtapiMiningReportResponse {
  ExtapiMiningReportResponse copyWith({String? data, bool? finish}) {
    return ExtapiMiningReportResponse(
        data: data ?? this.data, finish: finish ?? this.finish);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiMiningStats {
  ExtapiMiningStats({
    this.amount,
    this.date,
    this.health,
    this.onlineSeconds,
  });

  factory ExtapiMiningStats.fromJson(Map<String, dynamic> json) =>
      _$ExtapiMiningStatsFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'health')
  final double? health;
  @JsonKey(name: 'onlineSeconds')
  final String? onlineSeconds;
  static const fromJsonFactory = _$ExtapiMiningStatsFromJson;
  static const toJsonFactory = _$ExtapiMiningStatsToJson;
  Map<String, dynamic> toJson() => _$ExtapiMiningStatsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiMiningStats &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.health, health) ||
                const DeepCollectionEquality().equals(other.health, health)) &&
            (identical(other.onlineSeconds, onlineSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.onlineSeconds, onlineSeconds)));
  }
}

extension $ExtapiMiningStatsExtension on ExtapiMiningStats {
  ExtapiMiningStats copyWith(
      {String? amount, DateTime? date, double? health, String? onlineSeconds}) {
    return ExtapiMiningStats(
        amount: amount ?? this.amount,
        date: date ?? this.date,
        health: health ?? this.health,
        onlineSeconds: onlineSeconds ?? this.onlineSeconds);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiModifyUserSupportPermissionRequest {
  ExtapiModifyUserSupportPermissionRequest({
    this.grantPermission,
    this.userID,
  });

  factory ExtapiModifyUserSupportPermissionRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiModifyUserSupportPermissionRequestFromJson(json);

  @JsonKey(name: 'grantPermission')
  final bool? grantPermission;
  @JsonKey(name: 'userID')
  final String? userID;
  static const fromJsonFactory =
      _$ExtapiModifyUserSupportPermissionRequestFromJson;
  static const toJsonFactory = _$ExtapiModifyUserSupportPermissionRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiModifyUserSupportPermissionRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiModifyUserSupportPermissionRequest &&
            (identical(other.grantPermission, grantPermission) ||
                const DeepCollectionEquality()
                    .equals(other.grantPermission, grantPermission)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }
}

extension $ExtapiModifyUserSupportPermissionRequestExtension
    on ExtapiModifyUserSupportPermissionRequest {
  ExtapiModifyUserSupportPermissionRequest copyWith(
      {bool? grantPermission, String? userID}) {
    return ExtapiModifyUserSupportPermissionRequest(
        grantPermission: grantPermission ?? this.grantPermission,
        userID: userID ?? this.userID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiModifyUserSupportPermissionResponse {
  ExtapiModifyUserSupportPermissionResponse();

  factory ExtapiModifyUserSupportPermissionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiModifyUserSupportPermissionResponseFromJson(json);

  static const fromJsonFactory =
      _$ExtapiModifyUserSupportPermissionResponseFromJson;
  static const toJsonFactory =
      _$ExtapiModifyUserSupportPermissionResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiModifyUserSupportPermissionResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiModifyWithdrawFeeRequest {
  ExtapiModifyWithdrawFeeRequest({
    this.currency,
    this.feeCurrency,
    this.withdrawFee,
  });

  factory ExtapiModifyWithdrawFeeRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiModifyWithdrawFeeRequestFromJson(json);

  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'feeCurrency')
  final String? feeCurrency;
  @JsonKey(name: 'withdrawFee')
  final String? withdrawFee;
  static const fromJsonFactory = _$ExtapiModifyWithdrawFeeRequestFromJson;
  static const toJsonFactory = _$ExtapiModifyWithdrawFeeRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiModifyWithdrawFeeRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiModifyWithdrawFeeRequest &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.feeCurrency, feeCurrency) ||
                const DeepCollectionEquality()
                    .equals(other.feeCurrency, feeCurrency)) &&
            (identical(other.withdrawFee, withdrawFee) ||
                const DeepCollectionEquality()
                    .equals(other.withdrawFee, withdrawFee)));
  }
}

extension $ExtapiModifyWithdrawFeeRequestExtension
    on ExtapiModifyWithdrawFeeRequest {
  ExtapiModifyWithdrawFeeRequest copyWith(
      {String? currency, String? feeCurrency, String? withdrawFee}) {
    return ExtapiModifyWithdrawFeeRequest(
        currency: currency ?? this.currency,
        feeCurrency: feeCurrency ?? this.feeCurrency,
        withdrawFee: withdrawFee ?? this.withdrawFee);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiModifyWithdrawFeeResponse {
  ExtapiModifyWithdrawFeeResponse();

  factory ExtapiModifyWithdrawFeeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiModifyWithdrawFeeResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiModifyWithdrawFeeResponseFromJson;
  static const toJsonFactory = _$ExtapiModifyWithdrawFeeResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiModifyWithdrawFeeResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiNetworkServer {
  ExtapiNetworkServer({
    this.caCert,
    this.gatewayDiscoveryDR,
    this.gatewayDiscoveryEnabled,
    this.gatewayDiscoveryInterval,
    this.gatewayDiscoveryTXFrequency,
    this.id,
    this.name,
    this.routingProfileCACert,
    this.routingProfileTLSCert,
    this.routingProfileTLSKey,
    this.server,
    this.tlsCert,
    this.tlsKey,
  });

  factory ExtapiNetworkServer.fromJson(Map<String, dynamic> json) =>
      _$ExtapiNetworkServerFromJson(json);

  @JsonKey(name: 'caCert')
  final String? caCert;
  @JsonKey(name: 'gatewayDiscoveryDR')
  final int? gatewayDiscoveryDR;
  @JsonKey(name: 'gatewayDiscoveryEnabled')
  final bool? gatewayDiscoveryEnabled;
  @JsonKey(name: 'gatewayDiscoveryInterval')
  final int? gatewayDiscoveryInterval;
  @JsonKey(name: 'gatewayDiscoveryTXFrequency')
  final int? gatewayDiscoveryTXFrequency;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'routingProfileCACert')
  final String? routingProfileCACert;
  @JsonKey(name: 'routingProfileTLSCert')
  final String? routingProfileTLSCert;
  @JsonKey(name: 'routingProfileTLSKey')
  final String? routingProfileTLSKey;
  @JsonKey(name: 'server')
  final String? server;
  @JsonKey(name: 'tlsCert')
  final String? tlsCert;
  @JsonKey(name: 'tlsKey')
  final String? tlsKey;
  static const fromJsonFactory = _$ExtapiNetworkServerFromJson;
  static const toJsonFactory = _$ExtapiNetworkServerToJson;
  Map<String, dynamic> toJson() => _$ExtapiNetworkServerToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiNetworkServer &&
            (identical(other.caCert, caCert) ||
                const DeepCollectionEquality().equals(other.caCert, caCert)) &&
            (identical(other.gatewayDiscoveryDR, gatewayDiscoveryDR) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayDiscoveryDR, gatewayDiscoveryDR)) &&
            (identical(other.gatewayDiscoveryEnabled, gatewayDiscoveryEnabled) ||
                const DeepCollectionEquality().equals(
                    other.gatewayDiscoveryEnabled, gatewayDiscoveryEnabled)) &&
            (identical(
                    other.gatewayDiscoveryInterval, gatewayDiscoveryInterval) ||
                const DeepCollectionEquality().equals(
                    other.gatewayDiscoveryInterval,
                    gatewayDiscoveryInterval)) &&
            (identical(other.gatewayDiscoveryTXFrequency, gatewayDiscoveryTXFrequency) ||
                const DeepCollectionEquality().equals(
                    other.gatewayDiscoveryTXFrequency,
                    gatewayDiscoveryTXFrequency)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.routingProfileCACert, routingProfileCACert) ||
                const DeepCollectionEquality().equals(
                    other.routingProfileCACert, routingProfileCACert)) &&
            (identical(other.routingProfileTLSCert, routingProfileTLSCert) ||
                const DeepCollectionEquality().equals(
                    other.routingProfileTLSCert, routingProfileTLSCert)) &&
            (identical(other.routingProfileTLSKey, routingProfileTLSKey) ||
                const DeepCollectionEquality().equals(
                    other.routingProfileTLSKey, routingProfileTLSKey)) &&
            (identical(other.server, server) ||
                const DeepCollectionEquality().equals(other.server, server)) &&
            (identical(other.tlsCert, tlsCert) ||
                const DeepCollectionEquality().equals(other.tlsCert, tlsCert)) &&
            (identical(other.tlsKey, tlsKey) || const DeepCollectionEquality().equals(other.tlsKey, tlsKey)));
  }
}

extension $ExtapiNetworkServerExtension on ExtapiNetworkServer {
  ExtapiNetworkServer copyWith(
      {String? caCert,
      int? gatewayDiscoveryDR,
      bool? gatewayDiscoveryEnabled,
      int? gatewayDiscoveryInterval,
      int? gatewayDiscoveryTXFrequency,
      String? id,
      String? name,
      String? routingProfileCACert,
      String? routingProfileTLSCert,
      String? routingProfileTLSKey,
      String? server,
      String? tlsCert,
      String? tlsKey}) {
    return ExtapiNetworkServer(
        caCert: caCert ?? this.caCert,
        gatewayDiscoveryDR: gatewayDiscoveryDR ?? this.gatewayDiscoveryDR,
        gatewayDiscoveryEnabled:
            gatewayDiscoveryEnabled ?? this.gatewayDiscoveryEnabled,
        gatewayDiscoveryInterval:
            gatewayDiscoveryInterval ?? this.gatewayDiscoveryInterval,
        gatewayDiscoveryTXFrequency:
            gatewayDiscoveryTXFrequency ?? this.gatewayDiscoveryTXFrequency,
        id: id ?? this.id,
        name: name ?? this.name,
        routingProfileCACert: routingProfileCACert ?? this.routingProfileCACert,
        routingProfileTLSCert:
            routingProfileTLSCert ?? this.routingProfileTLSCert,
        routingProfileTLSKey: routingProfileTLSKey ?? this.routingProfileTLSKey,
        server: server ?? this.server,
        tlsCert: tlsCert ?? this.tlsCert,
        tlsKey: tlsKey ?? this.tlsKey);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiNetworkServerListItem {
  ExtapiNetworkServerListItem({
    this.createdAt,
    this.id,
    this.name,
    this.server,
    this.updatedAt,
  });

  factory ExtapiNetworkServerListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiNetworkServerListItemFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'server')
  final String? server;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiNetworkServerListItemFromJson;
  static const toJsonFactory = _$ExtapiNetworkServerListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiNetworkServerListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiNetworkServerListItem &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.server, server) ||
                const DeepCollectionEquality().equals(other.server, server)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiNetworkServerListItemExtension on ExtapiNetworkServerListItem {
  ExtapiNetworkServerListItem copyWith(
      {DateTime? createdAt,
      String? id,
      String? name,
      String? server,
      DateTime? updatedAt}) {
    return ExtapiNetworkServerListItem(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        name: name ?? this.name,
        server: server ?? this.server,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiOrder {
  ExtapiOrder({
    this.amountProduct,
    this.bonusPerPieceUsd,
    this.bonusStatus,
    this.createdAt,
    this.orderId,
    this.productId,
    this.shopifyAccount,
  });

  factory ExtapiOrder.fromJson(Map<String, dynamic> json) =>
      _$ExtapiOrderFromJson(json);

  @JsonKey(name: 'amountProduct')
  final String? amountProduct;
  @JsonKey(name: 'bonusPerPieceUsd')
  final String? bonusPerPieceUsd;
  @JsonKey(name: 'bonusStatus')
  final String? bonusStatus;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'shopifyAccount')
  final String? shopifyAccount;
  static const fromJsonFactory = _$ExtapiOrderFromJson;
  static const toJsonFactory = _$ExtapiOrderToJson;
  Map<String, dynamic> toJson() => _$ExtapiOrderToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiOrder &&
            (identical(other.amountProduct, amountProduct) ||
                const DeepCollectionEquality()
                    .equals(other.amountProduct, amountProduct)) &&
            (identical(other.bonusPerPieceUsd, bonusPerPieceUsd) ||
                const DeepCollectionEquality()
                    .equals(other.bonusPerPieceUsd, bonusPerPieceUsd)) &&
            (identical(other.bonusStatus, bonusStatus) ||
                const DeepCollectionEquality()
                    .equals(other.bonusStatus, bonusStatus)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.shopifyAccount, shopifyAccount) ||
                const DeepCollectionEquality()
                    .equals(other.shopifyAccount, shopifyAccount)));
  }
}

extension $ExtapiOrderExtension on ExtapiOrder {
  ExtapiOrder copyWith(
      {String? amountProduct,
      String? bonusPerPieceUsd,
      String? bonusStatus,
      String? createdAt,
      String? orderId,
      String? productId,
      String? shopifyAccount}) {
    return ExtapiOrder(
        amountProduct: amountProduct ?? this.amountProduct,
        bonusPerPieceUsd: bonusPerPieceUsd ?? this.bonusPerPieceUsd,
        bonusStatus: bonusStatus ?? this.bonusStatus,
        createdAt: createdAt ?? this.createdAt,
        orderId: orderId ?? this.orderId,
        productId: productId ?? this.productId,
        shopifyAccount: shopifyAccount ?? this.shopifyAccount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiOrganization {
  ExtapiOrganization({
    this.canHaveGateways,
    this.displayName,
    this.id,
    this.maxDeviceCount,
    this.maxGatewayCount,
    this.name,
  });

  factory ExtapiOrganization.fromJson(Map<String, dynamic> json) =>
      _$ExtapiOrganizationFromJson(json);

  @JsonKey(name: 'canHaveGateways')
  final bool? canHaveGateways;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'maxDeviceCount')
  final int? maxDeviceCount;
  @JsonKey(name: 'maxGatewayCount')
  final int? maxGatewayCount;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ExtapiOrganizationFromJson;
  static const toJsonFactory = _$ExtapiOrganizationToJson;
  Map<String, dynamic> toJson() => _$ExtapiOrganizationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiOrganization &&
            (identical(other.canHaveGateways, canHaveGateways) ||
                const DeepCollectionEquality()
                    .equals(other.canHaveGateways, canHaveGateways)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.maxDeviceCount, maxDeviceCount) ||
                const DeepCollectionEquality()
                    .equals(other.maxDeviceCount, maxDeviceCount)) &&
            (identical(other.maxGatewayCount, maxGatewayCount) ||
                const DeepCollectionEquality()
                    .equals(other.maxGatewayCount, maxGatewayCount)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }
}

extension $ExtapiOrganizationExtension on ExtapiOrganization {
  ExtapiOrganization copyWith(
      {bool? canHaveGateways,
      String? displayName,
      String? id,
      int? maxDeviceCount,
      int? maxGatewayCount,
      String? name}) {
    return ExtapiOrganization(
        canHaveGateways: canHaveGateways ?? this.canHaveGateways,
        displayName: displayName ?? this.displayName,
        id: id ?? this.id,
        maxDeviceCount: maxDeviceCount ?? this.maxDeviceCount,
        maxGatewayCount: maxGatewayCount ?? this.maxGatewayCount,
        name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiOrganizationLink {
  ExtapiOrganizationLink({
    this.createdAt,
    this.isAdmin,
    this.isDeviceAdmin,
    this.isGatewayAdmin,
    this.organizationDisplayName,
    this.organizationID,
    this.organizationName,
    this.updatedAt,
  });

  factory ExtapiOrganizationLink.fromJson(Map<String, dynamic> json) =>
      _$ExtapiOrganizationLinkFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'isAdmin')
  final bool? isAdmin;
  @JsonKey(name: 'isDeviceAdmin')
  final bool? isDeviceAdmin;
  @JsonKey(name: 'isGatewayAdmin')
  final bool? isGatewayAdmin;
  @JsonKey(name: 'organizationDisplayName')
  final String? organizationDisplayName;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'organizationName')
  final String? organizationName;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiOrganizationLinkFromJson;
  static const toJsonFactory = _$ExtapiOrganizationLinkToJson;
  Map<String, dynamic> toJson() => _$ExtapiOrganizationLinkToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiOrganizationLink &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.isDeviceAdmin, isDeviceAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isDeviceAdmin, isDeviceAdmin)) &&
            (identical(other.isGatewayAdmin, isGatewayAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isGatewayAdmin, isGatewayAdmin)) &&
            (identical(
                    other.organizationDisplayName, organizationDisplayName) ||
                const DeepCollectionEquality().equals(
                    other.organizationDisplayName, organizationDisplayName)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.organizationName, organizationName) ||
                const DeepCollectionEquality()
                    .equals(other.organizationName, organizationName)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiOrganizationLinkExtension on ExtapiOrganizationLink {
  ExtapiOrganizationLink copyWith(
      {DateTime? createdAt,
      bool? isAdmin,
      bool? isDeviceAdmin,
      bool? isGatewayAdmin,
      String? organizationDisplayName,
      String? organizationID,
      String? organizationName,
      DateTime? updatedAt}) {
    return ExtapiOrganizationLink(
        createdAt: createdAt ?? this.createdAt,
        isAdmin: isAdmin ?? this.isAdmin,
        isDeviceAdmin: isDeviceAdmin ?? this.isDeviceAdmin,
        isGatewayAdmin: isGatewayAdmin ?? this.isGatewayAdmin,
        organizationDisplayName:
            organizationDisplayName ?? this.organizationDisplayName,
        organizationID: organizationID ?? this.organizationID,
        organizationName: organizationName ?? this.organizationName,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiOrganizationListItem {
  ExtapiOrganizationListItem({
    this.canHaveGateways,
    this.createdAt,
    this.displayName,
    this.id,
    this.name,
    this.updatedAt,
  });

  factory ExtapiOrganizationListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiOrganizationListItemFromJson(json);

  @JsonKey(name: 'canHaveGateways')
  final bool? canHaveGateways;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiOrganizationListItemFromJson;
  static const toJsonFactory = _$ExtapiOrganizationListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiOrganizationListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiOrganizationListItem &&
            (identical(other.canHaveGateways, canHaveGateways) ||
                const DeepCollectionEquality()
                    .equals(other.canHaveGateways, canHaveGateways)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiOrganizationListItemExtension on ExtapiOrganizationListItem {
  ExtapiOrganizationListItem copyWith(
      {bool? canHaveGateways,
      DateTime? createdAt,
      String? displayName,
      String? id,
      String? name,
      DateTime? updatedAt}) {
    return ExtapiOrganizationListItem(
        canHaveGateways: canHaveGateways ?? this.canHaveGateways,
        createdAt: createdAt ?? this.createdAt,
        displayName: displayName ?? this.displayName,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiOrganizationUser {
  ExtapiOrganizationUser({
    this.isAdmin,
    this.isDeviceAdmin,
    this.isGatewayAdmin,
    this.organizationID,
    this.userID,
    this.username,
  });

  factory ExtapiOrganizationUser.fromJson(Map<String, dynamic> json) =>
      _$ExtapiOrganizationUserFromJson(json);

  @JsonKey(name: 'isAdmin')
  final bool? isAdmin;
  @JsonKey(name: 'isDeviceAdmin')
  final bool? isDeviceAdmin;
  @JsonKey(name: 'isGatewayAdmin')
  final bool? isGatewayAdmin;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'userID')
  final String? userID;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$ExtapiOrganizationUserFromJson;
  static const toJsonFactory = _$ExtapiOrganizationUserToJson;
  Map<String, dynamic> toJson() => _$ExtapiOrganizationUserToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiOrganizationUser &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.isDeviceAdmin, isDeviceAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isDeviceAdmin, isDeviceAdmin)) &&
            (identical(other.isGatewayAdmin, isGatewayAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isGatewayAdmin, isGatewayAdmin)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }
}

extension $ExtapiOrganizationUserExtension on ExtapiOrganizationUser {
  ExtapiOrganizationUser copyWith(
      {bool? isAdmin,
      bool? isDeviceAdmin,
      bool? isGatewayAdmin,
      String? organizationID,
      String? userID,
      String? username}) {
    return ExtapiOrganizationUser(
        isAdmin: isAdmin ?? this.isAdmin,
        isDeviceAdmin: isDeviceAdmin ?? this.isDeviceAdmin,
        isGatewayAdmin: isGatewayAdmin ?? this.isGatewayAdmin,
        organizationID: organizationID ?? this.organizationID,
        userID: userID ?? this.userID,
        username: username ?? this.username);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiOrganizationUserListItem {
  ExtapiOrganizationUserListItem({
    this.createdAt,
    this.isAdmin,
    this.isDeviceAdmin,
    this.isGatewayAdmin,
    this.updatedAt,
    this.userID,
    this.username,
  });

  factory ExtapiOrganizationUserListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiOrganizationUserListItemFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'isAdmin')
  final bool? isAdmin;
  @JsonKey(name: 'isDeviceAdmin')
  final bool? isDeviceAdmin;
  @JsonKey(name: 'isGatewayAdmin')
  final bool? isGatewayAdmin;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'userID')
  final String? userID;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$ExtapiOrganizationUserListItemFromJson;
  static const toJsonFactory = _$ExtapiOrganizationUserListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiOrganizationUserListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiOrganizationUserListItem &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.isDeviceAdmin, isDeviceAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isDeviceAdmin, isDeviceAdmin)) &&
            (identical(other.isGatewayAdmin, isGatewayAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isGatewayAdmin, isGatewayAdmin)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }
}

extension $ExtapiOrganizationUserListItemExtension
    on ExtapiOrganizationUserListItem {
  ExtapiOrganizationUserListItem copyWith(
      {DateTime? createdAt,
      bool? isAdmin,
      bool? isDeviceAdmin,
      bool? isGatewayAdmin,
      DateTime? updatedAt,
      String? userID,
      String? username}) {
    return ExtapiOrganizationUserListItem(
        createdAt: createdAt ?? this.createdAt,
        isAdmin: isAdmin ?? this.isAdmin,
        isDeviceAdmin: isDeviceAdmin ?? this.isDeviceAdmin,
        isGatewayAdmin: isGatewayAdmin ?? this.isGatewayAdmin,
        updatedAt: updatedAt ?? this.updatedAt,
        userID: userID ?? this.userID,
        username: username ?? this.username);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiPasswordResetReq {
  ExtapiPasswordResetReq({
    this.captcha,
    this.language,
    this.username,
  });

  factory ExtapiPasswordResetReq.fromJson(Map<String, dynamic> json) =>
      _$ExtapiPasswordResetReqFromJson(json);

  @JsonKey(name: 'captcha')
  final String? captcha;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$ExtapiPasswordResetReqFromJson;
  static const toJsonFactory = _$ExtapiPasswordResetReqToJson;
  Map<String, dynamic> toJson() => _$ExtapiPasswordResetReqToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiPasswordResetReq &&
            (identical(other.captcha, captcha) ||
                const DeepCollectionEquality()
                    .equals(other.captcha, captcha)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }
}

extension $ExtapiPasswordResetReqExtension on ExtapiPasswordResetReq {
  ExtapiPasswordResetReq copyWith(
      {String? captcha, String? language, String? username}) {
    return ExtapiPasswordResetReq(
        captcha: captcha ?? this.captcha,
        language: language ?? this.language,
        username: username ?? this.username);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiPasswordResetResp {
  ExtapiPasswordResetResp();

  factory ExtapiPasswordResetResp.fromJson(Map<String, dynamic> json) =>
      _$ExtapiPasswordResetRespFromJson(json);

  static const fromJsonFactory = _$ExtapiPasswordResetRespFromJson;
  static const toJsonFactory = _$ExtapiPasswordResetRespToJson;
  Map<String, dynamic> toJson() => _$ExtapiPasswordResetRespToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiPingRX {
  ExtapiPingRX({
    this.altitude,
    this.gatewayID,
    this.latitude,
    this.loRaSNR,
    this.longitude,
    this.rssi,
  });

  factory ExtapiPingRX.fromJson(Map<String, dynamic> json) =>
      _$ExtapiPingRXFromJson(json);

  @JsonKey(name: 'altitude')
  final double? altitude;
  @JsonKey(name: 'gatewayID')
  final String? gatewayID;
  @JsonKey(name: 'latitude')
  final double? latitude;
  @JsonKey(name: 'loRaSNR')
  final double? loRaSNR;
  @JsonKey(name: 'longitude')
  final double? longitude;
  @JsonKey(name: 'rssi')
  final int? rssi;
  static const fromJsonFactory = _$ExtapiPingRXFromJson;
  static const toJsonFactory = _$ExtapiPingRXToJson;
  Map<String, dynamic> toJson() => _$ExtapiPingRXToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiPingRX &&
            (identical(other.altitude, altitude) ||
                const DeepCollectionEquality()
                    .equals(other.altitude, altitude)) &&
            (identical(other.gatewayID, gatewayID) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayID, gatewayID)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.loRaSNR, loRaSNR) ||
                const DeepCollectionEquality()
                    .equals(other.loRaSNR, loRaSNR)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.rssi, rssi) ||
                const DeepCollectionEquality().equals(other.rssi, rssi)));
  }
}

extension $ExtapiPingRXExtension on ExtapiPingRX {
  ExtapiPingRX copyWith(
      {double? altitude,
      String? gatewayID,
      double? latitude,
      double? loRaSNR,
      double? longitude,
      int? rssi}) {
    return ExtapiPingRX(
        altitude: altitude ?? this.altitude,
        gatewayID: gatewayID ?? this.gatewayID,
        latitude: latitude ?? this.latitude,
        loRaSNR: loRaSNR ?? this.loRaSNR,
        longitude: longitude ?? this.longitude,
        rssi: rssi ?? this.rssi);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiProfileResponse {
  ExtapiProfileResponse({
    this.externalUserAccounts,
    this.lastLoginService,
    this.organizations,
    this.user,
  });

  factory ExtapiProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiProfileResponseFromJson(json);

  @JsonKey(
      name: 'externalUserAccounts', defaultValue: <ExtapiExternalUserAccount>[])
  final List<ExtapiExternalUserAccount>? externalUserAccounts;
  @JsonKey(name: 'lastLoginService')
  final String? lastLoginService;
  @JsonKey(name: 'organizations', defaultValue: <ExtapiOrganizationLink>[])
  final List<ExtapiOrganizationLink>? organizations;
  @JsonKey(name: 'user')
  final ExtapiUser? user;
  static const fromJsonFactory = _$ExtapiProfileResponseFromJson;
  static const toJsonFactory = _$ExtapiProfileResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiProfileResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiProfileResponse &&
            (identical(other.externalUserAccounts, externalUserAccounts) ||
                const DeepCollectionEquality().equals(
                    other.externalUserAccounts, externalUserAccounts)) &&
            (identical(other.lastLoginService, lastLoginService) ||
                const DeepCollectionEquality()
                    .equals(other.lastLoginService, lastLoginService)) &&
            (identical(other.organizations, organizations) ||
                const DeepCollectionEquality()
                    .equals(other.organizations, organizations)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }
}

extension $ExtapiProfileResponseExtension on ExtapiProfileResponse {
  ExtapiProfileResponse copyWith(
      {List<ExtapiExternalUserAccount>? externalUserAccounts,
      String? lastLoginService,
      List<ExtapiOrganizationLink>? organizations,
      ExtapiUser? user}) {
    return ExtapiProfileResponse(
        externalUserAccounts: externalUserAccounts ?? this.externalUserAccounts,
        lastLoginService: lastLoginService ?? this.lastLoginService,
        organizations: organizations ?? this.organizations,
        user: user ?? this.user);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiRecoverUserAccountRequest {
  ExtapiRecoverUserAccountRequest({
    this.illegalEmail,
    this.originalEmail,
    this.reason,
    this.userID,
  });

  factory ExtapiRecoverUserAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiRecoverUserAccountRequestFromJson(json);

  @JsonKey(name: 'illegalEmail')
  final String? illegalEmail;
  @JsonKey(name: 'originalEmail')
  final String? originalEmail;
  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'userID')
  final String? userID;
  static const fromJsonFactory = _$ExtapiRecoverUserAccountRequestFromJson;
  static const toJsonFactory = _$ExtapiRecoverUserAccountRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiRecoverUserAccountRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiRecoverUserAccountRequest &&
            (identical(other.illegalEmail, illegalEmail) ||
                const DeepCollectionEquality()
                    .equals(other.illegalEmail, illegalEmail)) &&
            (identical(other.originalEmail, originalEmail) ||
                const DeepCollectionEquality()
                    .equals(other.originalEmail, originalEmail)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }
}

extension $ExtapiRecoverUserAccountRequestExtension
    on ExtapiRecoverUserAccountRequest {
  ExtapiRecoverUserAccountRequest copyWith(
      {String? illegalEmail,
      String? originalEmail,
      String? reason,
      String? userID}) {
    return ExtapiRecoverUserAccountRequest(
        illegalEmail: illegalEmail ?? this.illegalEmail,
        originalEmail: originalEmail ?? this.originalEmail,
        reason: reason ?? this.reason,
        userID: userID ?? this.userID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiRecoverUserAccountResponse {
  ExtapiRecoverUserAccountResponse({
    this.message,
  });

  factory ExtapiRecoverUserAccountResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiRecoverUserAccountResponseFromJson(json);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ExtapiRecoverUserAccountResponseFromJson;
  static const toJsonFactory = _$ExtapiRecoverUserAccountResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiRecoverUserAccountResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiRecoverUserAccountResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }
}

extension $ExtapiRecoverUserAccountResponseExtension
    on ExtapiRecoverUserAccountResponse {
  ExtapiRecoverUserAccountResponse copyWith({String? message}) {
    return ExtapiRecoverUserAccountResponse(message: message ?? this.message);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiRegisterExternalUserRequest {
  ExtapiRegisterExternalUserRequest({
    this.email,
    this.organizationName,
  });

  factory ExtapiRegisterExternalUserRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiRegisterExternalUserRequestFromJson(json);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'organizationName')
  final String? organizationName;
  static const fromJsonFactory = _$ExtapiRegisterExternalUserRequestFromJson;
  static const toJsonFactory = _$ExtapiRegisterExternalUserRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiRegisterExternalUserRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiRegisterExternalUserRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.organizationName, organizationName) ||
                const DeepCollectionEquality()
                    .equals(other.organizationName, organizationName)));
  }
}

extension $ExtapiRegisterExternalUserRequestExtension
    on ExtapiRegisterExternalUserRequest {
  ExtapiRegisterExternalUserRequest copyWith(
      {String? email, String? organizationName}) {
    return ExtapiRegisterExternalUserRequest(
        email: email ?? this.email,
        organizationName: organizationName ?? this.organizationName);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiRegisterExternalUserResponse {
  ExtapiRegisterExternalUserResponse({
    this.jwt,
  });

  factory ExtapiRegisterExternalUserResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiRegisterExternalUserResponseFromJson(json);

  @JsonKey(name: 'jwt')
  final String? jwt;
  static const fromJsonFactory = _$ExtapiRegisterExternalUserResponseFromJson;
  static const toJsonFactory = _$ExtapiRegisterExternalUserResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiRegisterExternalUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiRegisterExternalUserResponse &&
            (identical(other.jwt, jwt) ||
                const DeepCollectionEquality().equals(other.jwt, jwt)));
  }
}

extension $ExtapiRegisterExternalUserResponseExtension
    on ExtapiRegisterExternalUserResponse {
  ExtapiRegisterExternalUserResponse copyWith({String? jwt}) {
    return ExtapiRegisterExternalUserResponse(jwt: jwt ?? this.jwt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiRegisterRequest {
  ExtapiRegisterRequest({
    this.organizationId,
    this.sn,
  });

  factory ExtapiRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiRegisterRequestFromJson(json);

  @JsonKey(name: 'organizationId')
  final String? organizationId;
  @JsonKey(name: 'sn')
  final String? sn;
  static const fromJsonFactory = _$ExtapiRegisterRequestFromJson;
  static const toJsonFactory = _$ExtapiRegisterRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiRegisterRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiRegisterRequest &&
            (identical(other.organizationId, organizationId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationId, organizationId)) &&
            (identical(other.sn, sn) ||
                const DeepCollectionEquality().equals(other.sn, sn)));
  }
}

extension $ExtapiRegisterRequestExtension on ExtapiRegisterRequest {
  ExtapiRegisterRequest copyWith({String? organizationId, String? sn}) {
    return ExtapiRegisterRequest(
        organizationId: organizationId ?? this.organizationId,
        sn: sn ?? this.sn);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiRegisterResponse {
  ExtapiRegisterResponse({
    this.status,
  });

  factory ExtapiRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiRegisterResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory = _$ExtapiRegisterResponseFromJson;
  static const toJsonFactory = _$ExtapiRegisterResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiRegisterResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiRegisterResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiRegisterResponseExtension on ExtapiRegisterResponse {
  ExtapiRegisterResponse copyWith({String? status}) {
    return ExtapiRegisterResponse(status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiRegisterUserRequest {
  ExtapiRegisterUserRequest({
    this.captcha,
    this.email,
    this.language,
  });

  factory ExtapiRegisterUserRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiRegisterUserRequestFromJson(json);

  @JsonKey(name: 'captcha')
  final String? captcha;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'language')
  final String? language;
  static const fromJsonFactory = _$ExtapiRegisterUserRequestFromJson;
  static const toJsonFactory = _$ExtapiRegisterUserRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiRegisterUserRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiRegisterUserRequest &&
            (identical(other.captcha, captcha) ||
                const DeepCollectionEquality()
                    .equals(other.captcha, captcha)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }
}

extension $ExtapiRegisterUserRequestExtension on ExtapiRegisterUserRequest {
  ExtapiRegisterUserRequest copyWith(
      {String? captcha, String? email, String? language}) {
    return ExtapiRegisterUserRequest(
        captcha: captcha ?? this.captcha,
        email: email ?? this.email,
        language: language ?? this.language);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiRegulateIllegalGatewayRequest {
  ExtapiRegulateIllegalGatewayRequest({
    this.reason,
    this.snList,
  });

  factory ExtapiRegulateIllegalGatewayRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiRegulateIllegalGatewayRequestFromJson(json);

  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'snList')
  final String? snList;
  static const fromJsonFactory = _$ExtapiRegulateIllegalGatewayRequestFromJson;
  static const toJsonFactory = _$ExtapiRegulateIllegalGatewayRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiRegulateIllegalGatewayRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiRegulateIllegalGatewayRequest &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.snList, snList) ||
                const DeepCollectionEquality().equals(other.snList, snList)));
  }
}

extension $ExtapiRegulateIllegalGatewayRequestExtension
    on ExtapiRegulateIllegalGatewayRequest {
  ExtapiRegulateIllegalGatewayRequest copyWith(
      {String? reason, String? snList}) {
    return ExtapiRegulateIllegalGatewayRequest(
        reason: reason ?? this.reason, snList: snList ?? this.snList);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiRegulateIllegalGatewayResponse {
  ExtapiRegulateIllegalGatewayResponse({
    this.message,
  });

  factory ExtapiRegulateIllegalGatewayResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiRegulateIllegalGatewayResponseFromJson(json);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ExtapiRegulateIllegalGatewayResponseFromJson;
  static const toJsonFactory = _$ExtapiRegulateIllegalGatewayResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiRegulateIllegalGatewayResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiRegulateIllegalGatewayResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }
}

extension $ExtapiRegulateIllegalGatewayResponseExtension
    on ExtapiRegulateIllegalGatewayResponse {
  ExtapiRegulateIllegalGatewayResponse copyWith({String? message}) {
    return ExtapiRegulateIllegalGatewayResponse(
        message: message ?? this.message);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiRequestSupportPermissionRequest {
  ExtapiRequestSupportPermissionRequest();

  factory ExtapiRequestSupportPermissionRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiRequestSupportPermissionRequestFromJson(json);

  static const fromJsonFactory =
      _$ExtapiRequestSupportPermissionRequestFromJson;
  static const toJsonFactory = _$ExtapiRequestSupportPermissionRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiRequestSupportPermissionRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiRequestSupportPermissionResponse {
  ExtapiRequestSupportPermissionResponse({
    this.status,
  });

  factory ExtapiRequestSupportPermissionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiRequestSupportPermissionResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$ExtapiRequestSupportPermissionResponseFromJson;
  static const toJsonFactory = _$ExtapiRequestSupportPermissionResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiRequestSupportPermissionResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiRequestSupportPermissionResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiRequestSupportPermissionResponseExtension
    on ExtapiRequestSupportPermissionResponse {
  ExtapiRequestSupportPermissionResponse copyWith({String? status}) {
    return ExtapiRequestSupportPermissionResponse(
        status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiReset2FAReqeust {
  ExtapiReset2FAReqeust({
    this.reason,
    this.userID,
  });

  factory ExtapiReset2FAReqeust.fromJson(Map<String, dynamic> json) =>
      _$ExtapiReset2FAReqeustFromJson(json);

  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'userID')
  final String? userID;
  static const fromJsonFactory = _$ExtapiReset2FAReqeustFromJson;
  static const toJsonFactory = _$ExtapiReset2FAReqeustToJson;
  Map<String, dynamic> toJson() => _$ExtapiReset2FAReqeustToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiReset2FAReqeust &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }
}

extension $ExtapiReset2FAReqeustExtension on ExtapiReset2FAReqeust {
  ExtapiReset2FAReqeust copyWith({String? reason, String? userID}) {
    return ExtapiReset2FAReqeust(
        reason: reason ?? this.reason, userID: userID ?? this.userID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiReset2FAResponse {
  ExtapiReset2FAResponse({
    this.message,
  });

  factory ExtapiReset2FAResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiReset2FAResponseFromJson(json);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ExtapiReset2FAResponseFromJson;
  static const toJsonFactory = _$ExtapiReset2FAResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiReset2FAResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiReset2FAResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }
}

extension $ExtapiReset2FAResponseExtension on ExtapiReset2FAResponse {
  ExtapiReset2FAResponse copyWith({String? message}) {
    return ExtapiReset2FAResponse(message: message ?? this.message);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiResetDefaultGatewatConfigByIDRequest {
  ExtapiResetDefaultGatewatConfigByIDRequest({
    this.id,
  });

  factory ExtapiResetDefaultGatewatConfigByIDRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiResetDefaultGatewatConfigByIDRequestFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory =
      _$ExtapiResetDefaultGatewatConfigByIDRequestFromJson;
  static const toJsonFactory =
      _$ExtapiResetDefaultGatewatConfigByIDRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiResetDefaultGatewatConfigByIDRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiResetDefaultGatewatConfigByIDRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }
}

extension $ExtapiResetDefaultGatewatConfigByIDRequestExtension
    on ExtapiResetDefaultGatewatConfigByIDRequest {
  ExtapiResetDefaultGatewatConfigByIDRequest copyWith({String? id}) {
    return ExtapiResetDefaultGatewatConfigByIDRequest(id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiResetDefaultGatewatConfigByIDResponse {
  ExtapiResetDefaultGatewatConfigByIDResponse({
    this.status,
  });

  factory ExtapiResetDefaultGatewatConfigByIDResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiResetDefaultGatewatConfigByIDResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$ExtapiResetDefaultGatewatConfigByIDResponseFromJson;
  static const toJsonFactory =
      _$ExtapiResetDefaultGatewatConfigByIDResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiResetDefaultGatewatConfigByIDResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiResetDefaultGatewatConfigByIDResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiResetDefaultGatewatConfigByIDResponseExtension
    on ExtapiResetDefaultGatewatConfigByIDResponse {
  ExtapiResetDefaultGatewatConfigByIDResponse copyWith({String? status}) {
    return ExtapiResetDefaultGatewatConfigByIDResponse(
        status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiResetPasswordResetLimitRequest {
  ExtapiResetPasswordResetLimitRequest({
    this.reason,
    this.userID,
  });

  factory ExtapiResetPasswordResetLimitRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiResetPasswordResetLimitRequestFromJson(json);

  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'userID')
  final String? userID;
  static const fromJsonFactory = _$ExtapiResetPasswordResetLimitRequestFromJson;
  static const toJsonFactory = _$ExtapiResetPasswordResetLimitRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiResetPasswordResetLimitRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiResetPasswordResetLimitRequest &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }
}

extension $ExtapiResetPasswordResetLimitRequestExtension
    on ExtapiResetPasswordResetLimitRequest {
  ExtapiResetPasswordResetLimitRequest copyWith(
      {String? reason, String? userID}) {
    return ExtapiResetPasswordResetLimitRequest(
        reason: reason ?? this.reason, userID: userID ?? this.userID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiResetPasswordResetLimitResponse {
  ExtapiResetPasswordResetLimitResponse({
    this.message,
  });

  factory ExtapiResetPasswordResetLimitResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiResetPasswordResetLimitResponseFromJson(json);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory =
      _$ExtapiResetPasswordResetLimitResponseFromJson;
  static const toJsonFactory = _$ExtapiResetPasswordResetLimitResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiResetPasswordResetLimitResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiResetPasswordResetLimitResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }
}

extension $ExtapiResetPasswordResetLimitResponseExtension
    on ExtapiResetPasswordResetLimitResponse {
  ExtapiResetPasswordResetLimitResponse copyWith({String? message}) {
    return ExtapiResetPasswordResetLimitResponse(
        message: message ?? this.message);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiSendCommandToDeviceResponse {
  ExtapiSendCommandToDeviceResponse({
    this.topic,
  });

  factory ExtapiSendCommandToDeviceResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiSendCommandToDeviceResponseFromJson(json);

  @JsonKey(name: 'topic')
  final String? topic;
  static const fromJsonFactory = _$ExtapiSendCommandToDeviceResponseFromJson;
  static const toJsonFactory = _$ExtapiSendCommandToDeviceResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiSendCommandToDeviceResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiSendCommandToDeviceResponse &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)));
  }
}

extension $ExtapiSendCommandToDeviceResponseExtension
    on ExtapiSendCommandToDeviceResponse {
  ExtapiSendCommandToDeviceResponse copyWith({String? topic}) {
    return ExtapiSendCommandToDeviceResponse(topic: topic ?? this.topic);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiServiceProfile {
  ExtapiServiceProfile({
    this.addGWMetaData,
    this.channelMask,
    this.devStatusReqFreq,
    this.dlBucketSize,
    this.dlRate,
    this.dlRatePolicy,
    this.drMax,
    this.drMin,
    this.hrAllowed,
    this.id,
    this.minGWDiversity,
    this.name,
    this.networkServerID,
    this.nwkGeoLoc,
    this.organizationID,
    this.prAllowed,
    this.raAllowed,
    this.reportDevStatusBattery,
    this.reportDevStatusMargin,
    this.targetPER,
    this.ulBucketSize,
    this.ulRate,
    this.ulRatePolicy,
  });

  factory ExtapiServiceProfile.fromJson(Map<String, dynamic> json) =>
      _$ExtapiServiceProfileFromJson(json);

  @JsonKey(name: 'addGWMetaData')
  final bool? addGWMetaData;
  @JsonKey(name: 'channelMask')
  final String? channelMask;
  @JsonKey(name: 'devStatusReqFreq')
  final int? devStatusReqFreq;
  @JsonKey(name: 'dlBucketSize')
  final int? dlBucketSize;
  @JsonKey(name: 'dlRate')
  final int? dlRate;
  @JsonKey(
      name: 'dlRatePolicy',
      toJson: extapiRatePolicyToJson,
      fromJson: extapiRatePolicyFromJson)
  final enums.ExtapiRatePolicy? dlRatePolicy;
  @JsonKey(name: 'drMax')
  final int? drMax;
  @JsonKey(name: 'drMin')
  final int? drMin;
  @JsonKey(name: 'hrAllowed')
  final bool? hrAllowed;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'minGWDiversity')
  final int? minGWDiversity;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'networkServerID')
  final String? networkServerID;
  @JsonKey(name: 'nwkGeoLoc')
  final bool? nwkGeoLoc;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'prAllowed')
  final bool? prAllowed;
  @JsonKey(name: 'raAllowed')
  final bool? raAllowed;
  @JsonKey(name: 'reportDevStatusBattery')
  final bool? reportDevStatusBattery;
  @JsonKey(name: 'reportDevStatusMargin')
  final bool? reportDevStatusMargin;
  @JsonKey(name: 'targetPER')
  final int? targetPER;
  @JsonKey(name: 'ulBucketSize')
  final int? ulBucketSize;
  @JsonKey(name: 'ulRate')
  final int? ulRate;
  @JsonKey(
      name: 'ulRatePolicy',
      toJson: extapiRatePolicyToJson,
      fromJson: extapiRatePolicyFromJson)
  final enums.ExtapiRatePolicy? ulRatePolicy;
  static const fromJsonFactory = _$ExtapiServiceProfileFromJson;
  static const toJsonFactory = _$ExtapiServiceProfileToJson;
  Map<String, dynamic> toJson() => _$ExtapiServiceProfileToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiServiceProfile &&
            (identical(other.addGWMetaData, addGWMetaData) ||
                const DeepCollectionEquality()
                    .equals(other.addGWMetaData, addGWMetaData)) &&
            (identical(other.channelMask, channelMask) ||
                const DeepCollectionEquality()
                    .equals(other.channelMask, channelMask)) &&
            (identical(other.devStatusReqFreq, devStatusReqFreq) ||
                const DeepCollectionEquality()
                    .equals(other.devStatusReqFreq, devStatusReqFreq)) &&
            (identical(other.dlBucketSize, dlBucketSize) ||
                const DeepCollectionEquality()
                    .equals(other.dlBucketSize, dlBucketSize)) &&
            (identical(other.dlRate, dlRate) ||
                const DeepCollectionEquality().equals(other.dlRate, dlRate)) &&
            (identical(other.dlRatePolicy, dlRatePolicy) ||
                const DeepCollectionEquality()
                    .equals(other.dlRatePolicy, dlRatePolicy)) &&
            (identical(other.drMax, drMax) ||
                const DeepCollectionEquality().equals(other.drMax, drMax)) &&
            (identical(other.drMin, drMin) ||
                const DeepCollectionEquality().equals(other.drMin, drMin)) &&
            (identical(other.hrAllowed, hrAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.hrAllowed, hrAllowed)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.minGWDiversity, minGWDiversity) ||
                const DeepCollectionEquality()
                    .equals(other.minGWDiversity, minGWDiversity)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.networkServerID, networkServerID) ||
                const DeepCollectionEquality()
                    .equals(other.networkServerID, networkServerID)) &&
            (identical(other.nwkGeoLoc, nwkGeoLoc) ||
                const DeepCollectionEquality()
                    .equals(other.nwkGeoLoc, nwkGeoLoc)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.prAllowed, prAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.prAllowed, prAllowed)) &&
            (identical(other.raAllowed, raAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.raAllowed, raAllowed)) &&
            (identical(other.reportDevStatusBattery, reportDevStatusBattery) ||
                const DeepCollectionEquality().equals(
                    other.reportDevStatusBattery, reportDevStatusBattery)) &&
            (identical(other.reportDevStatusMargin, reportDevStatusMargin) ||
                const DeepCollectionEquality().equals(
                    other.reportDevStatusMargin, reportDevStatusMargin)) &&
            (identical(other.targetPER, targetPER) ||
                const DeepCollectionEquality()
                    .equals(other.targetPER, targetPER)) &&
            (identical(other.ulBucketSize, ulBucketSize) ||
                const DeepCollectionEquality()
                    .equals(other.ulBucketSize, ulBucketSize)) &&
            (identical(other.ulRate, ulRate) ||
                const DeepCollectionEquality().equals(other.ulRate, ulRate)) &&
            (identical(other.ulRatePolicy, ulRatePolicy) ||
                const DeepCollectionEquality()
                    .equals(other.ulRatePolicy, ulRatePolicy)));
  }
}

extension $ExtapiServiceProfileExtension on ExtapiServiceProfile {
  ExtapiServiceProfile copyWith(
      {bool? addGWMetaData,
      String? channelMask,
      int? devStatusReqFreq,
      int? dlBucketSize,
      int? dlRate,
      enums.ExtapiRatePolicy? dlRatePolicy,
      int? drMax,
      int? drMin,
      bool? hrAllowed,
      String? id,
      int? minGWDiversity,
      String? name,
      String? networkServerID,
      bool? nwkGeoLoc,
      String? organizationID,
      bool? prAllowed,
      bool? raAllowed,
      bool? reportDevStatusBattery,
      bool? reportDevStatusMargin,
      int? targetPER,
      int? ulBucketSize,
      int? ulRate,
      enums.ExtapiRatePolicy? ulRatePolicy}) {
    return ExtapiServiceProfile(
        addGWMetaData: addGWMetaData ?? this.addGWMetaData,
        channelMask: channelMask ?? this.channelMask,
        devStatusReqFreq: devStatusReqFreq ?? this.devStatusReqFreq,
        dlBucketSize: dlBucketSize ?? this.dlBucketSize,
        dlRate: dlRate ?? this.dlRate,
        dlRatePolicy: dlRatePolicy ?? this.dlRatePolicy,
        drMax: drMax ?? this.drMax,
        drMin: drMin ?? this.drMin,
        hrAllowed: hrAllowed ?? this.hrAllowed,
        id: id ?? this.id,
        minGWDiversity: minGWDiversity ?? this.minGWDiversity,
        name: name ?? this.name,
        networkServerID: networkServerID ?? this.networkServerID,
        nwkGeoLoc: nwkGeoLoc ?? this.nwkGeoLoc,
        organizationID: organizationID ?? this.organizationID,
        prAllowed: prAllowed ?? this.prAllowed,
        raAllowed: raAllowed ?? this.raAllowed,
        reportDevStatusBattery:
            reportDevStatusBattery ?? this.reportDevStatusBattery,
        reportDevStatusMargin:
            reportDevStatusMargin ?? this.reportDevStatusMargin,
        targetPER: targetPER ?? this.targetPER,
        ulBucketSize: ulBucketSize ?? this.ulBucketSize,
        ulRate: ulRate ?? this.ulRate,
        ulRatePolicy: ulRatePolicy ?? this.ulRatePolicy);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiServiceProfileListItem {
  ExtapiServiceProfileListItem({
    this.createdAt,
    this.id,
    this.name,
    this.networkServerID,
    this.organizationID,
    this.updatedAt,
  });

  factory ExtapiServiceProfileListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiServiceProfileListItemFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'networkServerID')
  final String? networkServerID;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ExtapiServiceProfileListItemFromJson;
  static const toJsonFactory = _$ExtapiServiceProfileListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiServiceProfileListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiServiceProfileListItem &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.networkServerID, networkServerID) ||
                const DeepCollectionEquality()
                    .equals(other.networkServerID, networkServerID)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }
}

extension $ExtapiServiceProfileListItemExtension
    on ExtapiServiceProfileListItem {
  ExtapiServiceProfileListItem copyWith(
      {DateTime? createdAt,
      String? id,
      String? name,
      String? networkServerID,
      String? organizationID,
      DateTime? updatedAt}) {
    return ExtapiServiceProfileListItem(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        name: name ?? this.name,
        networkServerID: networkServerID ?? this.networkServerID,
        organizationID: organizationID ?? this.organizationID,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiSetAutoUpdateFirmwareRequest {
  ExtapiSetAutoUpdateFirmwareRequest({
    this.autoUpdate,
    this.gatewayId,
  });

  factory ExtapiSetAutoUpdateFirmwareRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiSetAutoUpdateFirmwareRequestFromJson(json);

  @JsonKey(name: 'autoUpdate')
  final bool? autoUpdate;
  @JsonKey(name: 'gatewayId')
  final String? gatewayId;
  static const fromJsonFactory = _$ExtapiSetAutoUpdateFirmwareRequestFromJson;
  static const toJsonFactory = _$ExtapiSetAutoUpdateFirmwareRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiSetAutoUpdateFirmwareRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiSetAutoUpdateFirmwareRequest &&
            (identical(other.autoUpdate, autoUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.autoUpdate, autoUpdate)) &&
            (identical(other.gatewayId, gatewayId) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayId, gatewayId)));
  }
}

extension $ExtapiSetAutoUpdateFirmwareRequestExtension
    on ExtapiSetAutoUpdateFirmwareRequest {
  ExtapiSetAutoUpdateFirmwareRequest copyWith(
      {bool? autoUpdate, String? gatewayId}) {
    return ExtapiSetAutoUpdateFirmwareRequest(
        autoUpdate: autoUpdate ?? this.autoUpdate,
        gatewayId: gatewayId ?? this.gatewayId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiSetAutoUpdateFirmwareResponse {
  ExtapiSetAutoUpdateFirmwareResponse({
    this.message,
  });

  factory ExtapiSetAutoUpdateFirmwareResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiSetAutoUpdateFirmwareResponseFromJson(json);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ExtapiSetAutoUpdateFirmwareResponseFromJson;
  static const toJsonFactory = _$ExtapiSetAutoUpdateFirmwareResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiSetAutoUpdateFirmwareResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiSetAutoUpdateFirmwareResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }
}

extension $ExtapiSetAutoUpdateFirmwareResponseExtension
    on ExtapiSetAutoUpdateFirmwareResponse {
  ExtapiSetAutoUpdateFirmwareResponse copyWith({String? message}) {
    return ExtapiSetAutoUpdateFirmwareResponse(
        message: message ?? this.message);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStake {
  ExtapiStake({
    this.active,
    this.amount,
    this.boost,
    this.endTime,
    this.id,
    this.lockTill,
    this.revenue,
    this.startTime,
  });

  factory ExtapiStake.fromJson(Map<String, dynamic> json) =>
      _$ExtapiStakeFromJson(json);

  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'boost')
  final String? boost;
  @JsonKey(name: 'endTime')
  final DateTime? endTime;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'lockTill')
  final DateTime? lockTill;
  @JsonKey(name: 'revenue')
  final String? revenue;
  @JsonKey(name: 'startTime')
  final DateTime? startTime;
  static const fromJsonFactory = _$ExtapiStakeFromJson;
  static const toJsonFactory = _$ExtapiStakeToJson;
  Map<String, dynamic> toJson() => _$ExtapiStakeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStake &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.boost, boost) ||
                const DeepCollectionEquality().equals(other.boost, boost)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lockTill, lockTill) ||
                const DeepCollectionEquality()
                    .equals(other.lockTill, lockTill)) &&
            (identical(other.revenue, revenue) ||
                const DeepCollectionEquality()
                    .equals(other.revenue, revenue)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)));
  }
}

extension $ExtapiStakeExtension on ExtapiStake {
  ExtapiStake copyWith(
      {bool? active,
      String? amount,
      String? boost,
      DateTime? endTime,
      String? id,
      DateTime? lockTill,
      String? revenue,
      DateTime? startTime}) {
    return ExtapiStake(
        active: active ?? this.active,
        amount: amount ?? this.amount,
        boost: boost ?? this.boost,
        endTime: endTime ?? this.endTime,
        id: id ?? this.id,
        lockTill: lockTill ?? this.lockTill,
        revenue: revenue ?? this.revenue,
        startTime: startTime ?? this.startTime);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStakeInfoResponse {
  ExtapiStakeInfoResponse({
    this.revenues,
    this.stake,
  });

  factory ExtapiStakeInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiStakeInfoResponseFromJson(json);

  @JsonKey(name: 'revenues', defaultValue: <ExtapiStakeRevenue>[])
  final List<ExtapiStakeRevenue>? revenues;
  @JsonKey(name: 'stake')
  final ExtapiStake? stake;
  static const fromJsonFactory = _$ExtapiStakeInfoResponseFromJson;
  static const toJsonFactory = _$ExtapiStakeInfoResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiStakeInfoResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStakeInfoResponse &&
            (identical(other.revenues, revenues) ||
                const DeepCollectionEquality()
                    .equals(other.revenues, revenues)) &&
            (identical(other.stake, stake) ||
                const DeepCollectionEquality().equals(other.stake, stake)));
  }
}

extension $ExtapiStakeInfoResponseExtension on ExtapiStakeInfoResponse {
  ExtapiStakeInfoResponse copyWith(
      {List<ExtapiStakeRevenue>? revenues, ExtapiStake? stake}) {
    return ExtapiStakeInfoResponse(
        revenues: revenues ?? this.revenues, stake: stake ?? this.stake);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStakeRequest {
  ExtapiStakeRequest({
    this.amount,
    this.boost,
    this.currency,
    this.lockPeriods,
    this.orgId,
  });

  factory ExtapiStakeRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiStakeRequestFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'boost')
  final String? boost;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'lockPeriods')
  final String? lockPeriods;
  @JsonKey(name: 'orgId')
  final String? orgId;
  static const fromJsonFactory = _$ExtapiStakeRequestFromJson;
  static const toJsonFactory = _$ExtapiStakeRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiStakeRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStakeRequest &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.boost, boost) ||
                const DeepCollectionEquality().equals(other.boost, boost)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.lockPeriods, lockPeriods) ||
                const DeepCollectionEquality()
                    .equals(other.lockPeriods, lockPeriods)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)));
  }
}

extension $ExtapiStakeRequestExtension on ExtapiStakeRequest {
  ExtapiStakeRequest copyWith(
      {String? amount,
      String? boost,
      String? currency,
      String? lockPeriods,
      String? orgId}) {
    return ExtapiStakeRequest(
        amount: amount ?? this.amount,
        boost: boost ?? this.boost,
        currency: currency ?? this.currency,
        lockPeriods: lockPeriods ?? this.lockPeriods,
        orgId: orgId ?? this.orgId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStakeResponse {
  ExtapiStakeResponse({
    this.status,
  });

  factory ExtapiStakeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiStakeResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory = _$ExtapiStakeResponseFromJson;
  static const toJsonFactory = _$ExtapiStakeResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiStakeResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStakeResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiStakeResponseExtension on ExtapiStakeResponse {
  ExtapiStakeResponse copyWith({String? status}) {
    return ExtapiStakeResponse(status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStakeRevenue {
  ExtapiStakeRevenue({
    this.amount,
    this.time,
  });

  factory ExtapiStakeRevenue.fromJson(Map<String, dynamic> json) =>
      _$ExtapiStakeRevenueFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'time')
  final DateTime? time;
  static const fromJsonFactory = _$ExtapiStakeRevenueFromJson;
  static const toJsonFactory = _$ExtapiStakeRevenueToJson;
  Map<String, dynamic> toJson() => _$ExtapiStakeRevenueToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStakeRevenue &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }
}

extension $ExtapiStakeRevenueExtension on ExtapiStakeRevenue {
  ExtapiStakeRevenue copyWith({String? amount, DateTime? time}) {
    return ExtapiStakeRevenue(
        amount: amount ?? this.amount, time: time ?? this.time);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStakingHistory {
  ExtapiStakingHistory({
    this.amount,
    this.stake,
    this.timestamp,
    this.type,
  });

  factory ExtapiStakingHistory.fromJson(Map<String, dynamic> json) =>
      _$ExtapiStakingHistoryFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'stake')
  final ExtapiStake? stake;
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;
  @JsonKey(name: 'type')
  final String? type;
  static const fromJsonFactory = _$ExtapiStakingHistoryFromJson;
  static const toJsonFactory = _$ExtapiStakingHistoryToJson;
  Map<String, dynamic> toJson() => _$ExtapiStakingHistoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStakingHistory &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.stake, stake) ||
                const DeepCollectionEquality().equals(other.stake, stake)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }
}

extension $ExtapiStakingHistoryExtension on ExtapiStakingHistory {
  ExtapiStakingHistory copyWith(
      {String? amount, ExtapiStake? stake, DateTime? timestamp, String? type}) {
    return ExtapiStakingHistory(
        amount: amount ?? this.amount,
        stake: stake ?? this.stake,
        timestamp: timestamp ?? this.timestamp,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStakingHistoryResponse {
  ExtapiStakingHistoryResponse({
    this.stakingHist,
  });

  factory ExtapiStakingHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiStakingHistoryResponseFromJson(json);

  @JsonKey(name: 'stakingHist', defaultValue: <ExtapiStakingHistory>[])
  final List<ExtapiStakingHistory>? stakingHist;
  static const fromJsonFactory = _$ExtapiStakingHistoryResponseFromJson;
  static const toJsonFactory = _$ExtapiStakingHistoryResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiStakingHistoryResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStakingHistoryResponse &&
            (identical(other.stakingHist, stakingHist) ||
                const DeepCollectionEquality()
                    .equals(other.stakingHist, stakingHist)));
  }
}

extension $ExtapiStakingHistoryResponseExtension
    on ExtapiStakingHistoryResponse {
  ExtapiStakingHistoryResponse copyWith(
      {List<ExtapiStakingHistory>? stakingHist}) {
    return ExtapiStakingHistoryResponse(
        stakingHist: stakingHist ?? this.stakingHist);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStakingPercentageResponse {
  ExtapiStakingPercentageResponse({
    this.lockBoosts,
    this.stakingInterest,
  });

  factory ExtapiStakingPercentageResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiStakingPercentageResponseFromJson(json);

  @JsonKey(name: 'lockBoosts', defaultValue: <ExtapiBoost>[])
  final List<ExtapiBoost>? lockBoosts;
  @JsonKey(name: 'stakingInterest')
  final double? stakingInterest;
  static const fromJsonFactory = _$ExtapiStakingPercentageResponseFromJson;
  static const toJsonFactory = _$ExtapiStakingPercentageResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiStakingPercentageResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStakingPercentageResponse &&
            (identical(other.lockBoosts, lockBoosts) ||
                const DeepCollectionEquality()
                    .equals(other.lockBoosts, lockBoosts)) &&
            (identical(other.stakingInterest, stakingInterest) ||
                const DeepCollectionEquality()
                    .equals(other.stakingInterest, stakingInterest)));
  }
}

extension $ExtapiStakingPercentageResponseExtension
    on ExtapiStakingPercentageResponse {
  ExtapiStakingPercentageResponse copyWith(
      {List<ExtapiBoost>? lockBoosts, double? stakingInterest}) {
    return ExtapiStakingPercentageResponse(
        lockBoosts: lockBoosts ?? this.lockBoosts,
        stakingInterest: stakingInterest ?? this.stakingInterest);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStakingRevenueResponse {
  ExtapiStakingRevenueResponse({
    this.amount,
  });

  factory ExtapiStakingRevenueResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiStakingRevenueResponseFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  static const fromJsonFactory = _$ExtapiStakingRevenueResponseFromJson;
  static const toJsonFactory = _$ExtapiStakingRevenueResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiStakingRevenueResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStakingRevenueResponse &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }
}

extension $ExtapiStakingRevenueResponseExtension
    on ExtapiStakingRevenueResponse {
  ExtapiStakingRevenueResponse copyWith({String? amount}) {
    return ExtapiStakingRevenueResponse(amount: amount ?? this.amount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStakingTotalsResponse {
  ExtapiStakingTotalsResponse({
    this.amount,
  });

  factory ExtapiStakingTotalsResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiStakingTotalsResponseFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  static const fromJsonFactory = _$ExtapiStakingTotalsResponseFromJson;
  static const toJsonFactory = _$ExtapiStakingTotalsResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiStakingTotalsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStakingTotalsResponse &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }
}

extension $ExtapiStakingTotalsResponseExtension on ExtapiStakingTotalsResponse {
  ExtapiStakingTotalsResponse copyWith({String? amount}) {
    return ExtapiStakingTotalsResponse(amount: amount ?? this.amount);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStreamDeviceEventLogsResponse {
  ExtapiStreamDeviceEventLogsResponse({
    this.payloadJSON,
    this.type,
  });

  factory ExtapiStreamDeviceEventLogsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiStreamDeviceEventLogsResponseFromJson(json);

  @JsonKey(name: 'payloadJSON')
  final String? payloadJSON;
  @JsonKey(name: 'type')
  final String? type;
  static const fromJsonFactory = _$ExtapiStreamDeviceEventLogsResponseFromJson;
  static const toJsonFactory = _$ExtapiStreamDeviceEventLogsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiStreamDeviceEventLogsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStreamDeviceEventLogsResponse &&
            (identical(other.payloadJSON, payloadJSON) ||
                const DeepCollectionEquality()
                    .equals(other.payloadJSON, payloadJSON)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }
}

extension $ExtapiStreamDeviceEventLogsResponseExtension
    on ExtapiStreamDeviceEventLogsResponse {
  ExtapiStreamDeviceEventLogsResponse copyWith(
      {String? payloadJSON, String? type}) {
    return ExtapiStreamDeviceEventLogsResponse(
        payloadJSON: payloadJSON ?? this.payloadJSON, type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStreamDeviceFrameLogsResponse {
  ExtapiStreamDeviceFrameLogsResponse({
    this.downlinkFrame,
    this.uplinkFrame,
  });

  factory ExtapiStreamDeviceFrameLogsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiStreamDeviceFrameLogsResponseFromJson(json);

  @JsonKey(name: 'downlinkFrame')
  final ExtapiDownlinkFrameLog? downlinkFrame;
  @JsonKey(name: 'uplinkFrame')
  final ExtapiUplinkFrameLog? uplinkFrame;
  static const fromJsonFactory = _$ExtapiStreamDeviceFrameLogsResponseFromJson;
  static const toJsonFactory = _$ExtapiStreamDeviceFrameLogsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiStreamDeviceFrameLogsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStreamDeviceFrameLogsResponse &&
            (identical(other.downlinkFrame, downlinkFrame) ||
                const DeepCollectionEquality()
                    .equals(other.downlinkFrame, downlinkFrame)) &&
            (identical(other.uplinkFrame, uplinkFrame) ||
                const DeepCollectionEquality()
                    .equals(other.uplinkFrame, uplinkFrame)));
  }
}

extension $ExtapiStreamDeviceFrameLogsResponseExtension
    on ExtapiStreamDeviceFrameLogsResponse {
  ExtapiStreamDeviceFrameLogsResponse copyWith(
      {ExtapiDownlinkFrameLog? downlinkFrame,
      ExtapiUplinkFrameLog? uplinkFrame}) {
    return ExtapiStreamDeviceFrameLogsResponse(
        downlinkFrame: downlinkFrame ?? this.downlinkFrame,
        uplinkFrame: uplinkFrame ?? this.uplinkFrame);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiStreamGatewayFrameLogsResponse {
  ExtapiStreamGatewayFrameLogsResponse({
    this.downlinkFrame,
    this.uplinkFrame,
  });

  factory ExtapiStreamGatewayFrameLogsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiStreamGatewayFrameLogsResponseFromJson(json);

  @JsonKey(name: 'downlinkFrame')
  final ExtapiDownlinkFrameLog? downlinkFrame;
  @JsonKey(name: 'uplinkFrame')
  final ExtapiUplinkFrameLog? uplinkFrame;
  static const fromJsonFactory = _$ExtapiStreamGatewayFrameLogsResponseFromJson;
  static const toJsonFactory = _$ExtapiStreamGatewayFrameLogsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiStreamGatewayFrameLogsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiStreamGatewayFrameLogsResponse &&
            (identical(other.downlinkFrame, downlinkFrame) ||
                const DeepCollectionEquality()
                    .equals(other.downlinkFrame, downlinkFrame)) &&
            (identical(other.uplinkFrame, uplinkFrame) ||
                const DeepCollectionEquality()
                    .equals(other.uplinkFrame, uplinkFrame)));
  }
}

extension $ExtapiStreamGatewayFrameLogsResponseExtension
    on ExtapiStreamGatewayFrameLogsResponse {
  ExtapiStreamGatewayFrameLogsResponse copyWith(
      {ExtapiDownlinkFrameLog? downlinkFrame,
      ExtapiUplinkFrameLog? uplinkFrame}) {
    return ExtapiStreamGatewayFrameLogsResponse(
        downlinkFrame: downlinkFrame ?? this.downlinkFrame,
        uplinkFrame: uplinkFrame ?? this.uplinkFrame);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiSubsribeApplicationEventsResponse {
  ExtapiSubsribeApplicationEventsResponse({
    this.topic,
  });

  factory ExtapiSubsribeApplicationEventsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiSubsribeApplicationEventsResponseFromJson(json);

  @JsonKey(name: 'topic')
  final String? topic;
  static const fromJsonFactory =
      _$ExtapiSubsribeApplicationEventsResponseFromJson;
  static const toJsonFactory = _$ExtapiSubsribeApplicationEventsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiSubsribeApplicationEventsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiSubsribeApplicationEventsResponse &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)));
  }
}

extension $ExtapiSubsribeApplicationEventsResponseExtension
    on ExtapiSubsribeApplicationEventsResponse {
  ExtapiSubsribeApplicationEventsResponse copyWith({String? topic}) {
    return ExtapiSubsribeApplicationEventsResponse(topic: topic ?? this.topic);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiSubsribeDeviceEventsResponse {
  ExtapiSubsribeDeviceEventsResponse({
    this.topic,
  });

  factory ExtapiSubsribeDeviceEventsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiSubsribeDeviceEventsResponseFromJson(json);

  @JsonKey(name: 'topic', defaultValue: <String>[])
  final List<String>? topic;
  static const fromJsonFactory = _$ExtapiSubsribeDeviceEventsResponseFromJson;
  static const toJsonFactory = _$ExtapiSubsribeDeviceEventsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiSubsribeDeviceEventsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiSubsribeDeviceEventsResponse &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)));
  }
}

extension $ExtapiSubsribeDeviceEventsResponseExtension
    on ExtapiSubsribeDeviceEventsResponse {
  ExtapiSubsribeDeviceEventsResponse copyWith({List<String>? topic}) {
    return ExtapiSubsribeDeviceEventsResponse(topic: topic ?? this.topic);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiSupportPermissionRequest {
  ExtapiSupportPermissionRequest({
    this.email,
    this.timestamp,
    this.userID,
  });

  factory ExtapiSupportPermissionRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiSupportPermissionRequestFromJson(json);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;
  @JsonKey(name: 'userID')
  final String? userID;
  static const fromJsonFactory = _$ExtapiSupportPermissionRequestFromJson;
  static const toJsonFactory = _$ExtapiSupportPermissionRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiSupportPermissionRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiSupportPermissionRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }
}

extension $ExtapiSupportPermissionRequestExtension
    on ExtapiSupportPermissionRequest {
  ExtapiSupportPermissionRequest copyWith(
      {String? email, DateTime? timestamp, String? userID}) {
    return ExtapiSupportPermissionRequest(
        email: email ?? this.email,
        timestamp: timestamp ?? this.timestamp,
        userID: userID ?? this.userID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiTOTPStatusRequest {
  ExtapiTOTPStatusRequest();

  factory ExtapiTOTPStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiTOTPStatusRequestFromJson(json);

  static const fromJsonFactory = _$ExtapiTOTPStatusRequestFromJson;
  static const toJsonFactory = _$ExtapiTOTPStatusRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiTOTPStatusRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiTOTPStatusResponse {
  ExtapiTOTPStatusResponse({
    this.enabled,
  });

  factory ExtapiTOTPStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiTOTPStatusResponseFromJson(json);

  @JsonKey(name: 'enabled')
  final bool? enabled;
  static const fromJsonFactory = _$ExtapiTOTPStatusResponseFromJson;
  static const toJsonFactory = _$ExtapiTOTPStatusResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiTOTPStatusResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiTOTPStatusResponse &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality().equals(other.enabled, enabled)));
  }
}

extension $ExtapiTOTPStatusResponseExtension on ExtapiTOTPStatusResponse {
  ExtapiTOTPStatusResponse copyWith({bool? enabled}) {
    return ExtapiTOTPStatusResponse(enabled: enabled ?? this.enabled);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiTopUpGatewayMiningFuelRequest {
  ExtapiTopUpGatewayMiningFuelRequest({
    this.currency,
    this.orgId,
    this.topUps,
  });

  factory ExtapiTopUpGatewayMiningFuelRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiTopUpGatewayMiningFuelRequestFromJson(json);

  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'orgId')
  final String? orgId;
  @JsonKey(name: 'topUps', defaultValue: <ExtapiGatewayMiningFuelChange>[])
  final List<ExtapiGatewayMiningFuelChange>? topUps;
  static const fromJsonFactory = _$ExtapiTopUpGatewayMiningFuelRequestFromJson;
  static const toJsonFactory = _$ExtapiTopUpGatewayMiningFuelRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiTopUpGatewayMiningFuelRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiTopUpGatewayMiningFuelRequest &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.topUps, topUps) ||
                const DeepCollectionEquality().equals(other.topUps, topUps)));
  }
}

extension $ExtapiTopUpGatewayMiningFuelRequestExtension
    on ExtapiTopUpGatewayMiningFuelRequest {
  ExtapiTopUpGatewayMiningFuelRequest copyWith(
      {String? currency,
      String? orgId,
      List<ExtapiGatewayMiningFuelChange>? topUps}) {
    return ExtapiTopUpGatewayMiningFuelRequest(
        currency: currency ?? this.currency,
        orgId: orgId ?? this.orgId,
        topUps: topUps ?? this.topUps);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiTopUpGatewayMiningFuelResponse {
  ExtapiTopUpGatewayMiningFuelResponse();

  factory ExtapiTopUpGatewayMiningFuelResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiTopUpGatewayMiningFuelResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiTopUpGatewayMiningFuelResponseFromJson;
  static const toJsonFactory = _$ExtapiTopUpGatewayMiningFuelResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiTopUpGatewayMiningFuelResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiTopUpHistory {
  ExtapiTopUpHistory({
    this.amount,
    this.timestamp,
    this.txHash,
  });

  factory ExtapiTopUpHistory.fromJson(Map<String, dynamic> json) =>
      _$ExtapiTopUpHistoryFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;
  @JsonKey(name: 'txHash')
  final String? txHash;
  static const fromJsonFactory = _$ExtapiTopUpHistoryFromJson;
  static const toJsonFactory = _$ExtapiTopUpHistoryToJson;
  Map<String, dynamic> toJson() => _$ExtapiTopUpHistoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiTopUpHistory &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.txHash, txHash) ||
                const DeepCollectionEquality().equals(other.txHash, txHash)));
  }
}

extension $ExtapiTopUpHistoryExtension on ExtapiTopUpHistory {
  ExtapiTopUpHistory copyWith(
      {String? amount, DateTime? timestamp, String? txHash}) {
    return ExtapiTopUpHistory(
        amount: amount ?? this.amount,
        timestamp: timestamp ?? this.timestamp,
        txHash: txHash ?? this.txHash);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiTopUpResponse {
  ExtapiTopUpResponse();

  factory ExtapiTopUpResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiTopUpResponseFromJson(json);

  static const fromJsonFactory = _$ExtapiTopUpResponseFromJson;
  static const toJsonFactory = _$ExtapiTopUpResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiTopUpResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiTransaction {
  ExtapiTransaction({
    this.amount,
    this.detailsJson,
    this.id,
    this.paymentType,
    this.timestamp,
  });

  factory ExtapiTransaction.fromJson(Map<String, dynamic> json) =>
      _$ExtapiTransactionFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'detailsJson')
  final String? detailsJson;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'paymentType')
  final String? paymentType;
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;
  static const fromJsonFactory = _$ExtapiTransactionFromJson;
  static const toJsonFactory = _$ExtapiTransactionToJson;
  Map<String, dynamic> toJson() => _$ExtapiTransactionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiTransaction &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.detailsJson, detailsJson) ||
                const DeepCollectionEquality()
                    .equals(other.detailsJson, detailsJson)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }
}

extension $ExtapiTransactionExtension on ExtapiTransaction {
  ExtapiTransaction copyWith(
      {String? amount,
      String? detailsJson,
      String? id,
      String? paymentType,
      DateTime? timestamp}) {
    return ExtapiTransaction(
        amount: amount ?? this.amount,
        detailsJson: detailsJson ?? this.detailsJson,
        id: id ?? this.id,
        paymentType: paymentType ?? this.paymentType,
        timestamp: timestamp ?? this.timestamp);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUnbindExternalUserRequest {
  ExtapiUnbindExternalUserRequest({
    this.organizationId,
    this.service,
  });

  factory ExtapiUnbindExternalUserRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUnbindExternalUserRequestFromJson(json);

  @JsonKey(name: 'organizationId')
  final String? organizationId;
  @JsonKey(name: 'service')
  final String? service;
  static const fromJsonFactory = _$ExtapiUnbindExternalUserRequestFromJson;
  static const toJsonFactory = _$ExtapiUnbindExternalUserRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiUnbindExternalUserRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUnbindExternalUserRequest &&
            (identical(other.organizationId, organizationId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationId, organizationId)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality().equals(other.service, service)));
  }
}

extension $ExtapiUnbindExternalUserRequestExtension
    on ExtapiUnbindExternalUserRequest {
  ExtapiUnbindExternalUserRequest copyWith(
      {String? organizationId, String? service}) {
    return ExtapiUnbindExternalUserRequest(
        organizationId: organizationId ?? this.organizationId,
        service: service ?? this.service);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUnbindExternalUserResponse {
  ExtapiUnbindExternalUserResponse({
    this.status,
  });

  factory ExtapiUnbindExternalUserResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiUnbindExternalUserResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory = _$ExtapiUnbindExternalUserResponseFromJson;
  static const toJsonFactory = _$ExtapiUnbindExternalUserResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiUnbindExternalUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUnbindExternalUserResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiUnbindExternalUserResponseExtension
    on ExtapiUnbindExternalUserResponse {
  ExtapiUnbindExternalUserResponse copyWith({String? status}) {
    return ExtapiUnbindExternalUserResponse(status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUnstakeRequest {
  ExtapiUnstakeRequest({
    this.orgId,
    this.stakeId,
  });

  factory ExtapiUnstakeRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUnstakeRequestFromJson(json);

  @JsonKey(name: 'orgId')
  final String? orgId;
  @JsonKey(name: 'stakeId')
  final String? stakeId;
  static const fromJsonFactory = _$ExtapiUnstakeRequestFromJson;
  static const toJsonFactory = _$ExtapiUnstakeRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiUnstakeRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUnstakeRequest &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.stakeId, stakeId) ||
                const DeepCollectionEquality().equals(other.stakeId, stakeId)));
  }
}

extension $ExtapiUnstakeRequestExtension on ExtapiUnstakeRequest {
  ExtapiUnstakeRequest copyWith({String? orgId, String? stakeId}) {
    return ExtapiUnstakeRequest(
        orgId: orgId ?? this.orgId, stakeId: stakeId ?? this.stakeId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUnstakeResponse {
  ExtapiUnstakeResponse({
    this.status,
  });

  factory ExtapiUnstakeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUnstakeResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory = _$ExtapiUnstakeResponseFromJson;
  static const toJsonFactory = _$ExtapiUnstakeResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiUnstakeResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUnstakeResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiUnstakeResponseExtension on ExtapiUnstakeResponse {
  ExtapiUnstakeResponse copyWith({String? status}) {
    return ExtapiUnstakeResponse(status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateApplicationRequest {
  ExtapiUpdateApplicationRequest({
    this.application,
  });

  factory ExtapiUpdateApplicationRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUpdateApplicationRequestFromJson(json);

  @JsonKey(name: 'application')
  final ExtapiApplication? application;
  static const fromJsonFactory = _$ExtapiUpdateApplicationRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateApplicationRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiUpdateApplicationRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateApplicationRequest &&
            (identical(other.application, application) ||
                const DeepCollectionEquality()
                    .equals(other.application, application)));
  }
}

extension $ExtapiUpdateApplicationRequestExtension
    on ExtapiUpdateApplicationRequest {
  ExtapiUpdateApplicationRequest copyWith({ExtapiApplication? application}) {
    return ExtapiUpdateApplicationRequest(
        application: application ?? this.application);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateDefaultGatewayConfigRequest {
  ExtapiUpdateDefaultGatewayConfigRequest({
    this.defaultConfig,
    this.model,
    this.region,
  });

  factory ExtapiUpdateDefaultGatewayConfigRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiUpdateDefaultGatewayConfigRequestFromJson(json);

  @JsonKey(name: 'defaultConfig')
  final String? defaultConfig;
  @JsonKey(name: 'model')
  final String? model;
  @JsonKey(name: 'region')
  final String? region;
  static const fromJsonFactory =
      _$ExtapiUpdateDefaultGatewayConfigRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateDefaultGatewayConfigRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiUpdateDefaultGatewayConfigRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateDefaultGatewayConfigRequest &&
            (identical(other.defaultConfig, defaultConfig) ||
                const DeepCollectionEquality()
                    .equals(other.defaultConfig, defaultConfig)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)));
  }
}

extension $ExtapiUpdateDefaultGatewayConfigRequestExtension
    on ExtapiUpdateDefaultGatewayConfigRequest {
  ExtapiUpdateDefaultGatewayConfigRequest copyWith(
      {String? defaultConfig, String? model, String? region}) {
    return ExtapiUpdateDefaultGatewayConfigRequest(
        defaultConfig: defaultConfig ?? this.defaultConfig,
        model: model ?? this.model,
        region: region ?? this.region);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateDefaultGatewayConfigResponse {
  ExtapiUpdateDefaultGatewayConfigResponse({
    this.status,
  });

  factory ExtapiUpdateDefaultGatewayConfigResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiUpdateDefaultGatewayConfigResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$ExtapiUpdateDefaultGatewayConfigResponseFromJson;
  static const toJsonFactory = _$ExtapiUpdateDefaultGatewayConfigResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiUpdateDefaultGatewayConfigResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateDefaultGatewayConfigResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiUpdateDefaultGatewayConfigResponseExtension
    on ExtapiUpdateDefaultGatewayConfigResponse {
  ExtapiUpdateDefaultGatewayConfigResponse copyWith({String? status}) {
    return ExtapiUpdateDefaultGatewayConfigResponse(
        status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateDeviceKeysRequest {
  ExtapiUpdateDeviceKeysRequest({
    this.deviceKeys,
  });

  factory ExtapiUpdateDeviceKeysRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUpdateDeviceKeysRequestFromJson(json);

  @JsonKey(name: 'deviceKeys')
  final ExtapiDeviceKeys? deviceKeys;
  static const fromJsonFactory = _$ExtapiUpdateDeviceKeysRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateDeviceKeysRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiUpdateDeviceKeysRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateDeviceKeysRequest &&
            (identical(other.deviceKeys, deviceKeys) ||
                const DeepCollectionEquality()
                    .equals(other.deviceKeys, deviceKeys)));
  }
}

extension $ExtapiUpdateDeviceKeysRequestExtension
    on ExtapiUpdateDeviceKeysRequest {
  ExtapiUpdateDeviceKeysRequest copyWith({ExtapiDeviceKeys? deviceKeys}) {
    return ExtapiUpdateDeviceKeysRequest(
        deviceKeys: deviceKeys ?? this.deviceKeys);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateDeviceProfileRequest {
  ExtapiUpdateDeviceProfileRequest({
    this.deviceProfile,
  });

  factory ExtapiUpdateDeviceProfileRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiUpdateDeviceProfileRequestFromJson(json);

  @JsonKey(name: 'deviceProfile')
  final ExtapiDeviceProfile? deviceProfile;
  static const fromJsonFactory = _$ExtapiUpdateDeviceProfileRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateDeviceProfileRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiUpdateDeviceProfileRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateDeviceProfileRequest &&
            (identical(other.deviceProfile, deviceProfile) ||
                const DeepCollectionEquality()
                    .equals(other.deviceProfile, deviceProfile)));
  }
}

extension $ExtapiUpdateDeviceProfileRequestExtension
    on ExtapiUpdateDeviceProfileRequest {
  ExtapiUpdateDeviceProfileRequest copyWith(
      {ExtapiDeviceProfile? deviceProfile}) {
    return ExtapiUpdateDeviceProfileRequest(
        deviceProfile: deviceProfile ?? this.deviceProfile);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateDeviceRequest {
  ExtapiUpdateDeviceRequest({
    this.device,
  });

  factory ExtapiUpdateDeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUpdateDeviceRequestFromJson(json);

  @JsonKey(name: 'device')
  final ExtapiDevice? device;
  static const fromJsonFactory = _$ExtapiUpdateDeviceRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateDeviceRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiUpdateDeviceRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateDeviceRequest &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }
}

extension $ExtapiUpdateDeviceRequestExtension on ExtapiUpdateDeviceRequest {
  ExtapiUpdateDeviceRequest copyWith({ExtapiDevice? device}) {
    return ExtapiUpdateDeviceRequest(device: device ?? this.device);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateGatewayProfileRequest {
  ExtapiUpdateGatewayProfileRequest({
    this.gatewayProfile,
  });

  factory ExtapiUpdateGatewayProfileRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiUpdateGatewayProfileRequestFromJson(json);

  @JsonKey(name: 'gatewayProfile')
  final ExtapiGatewayProfile? gatewayProfile;
  static const fromJsonFactory = _$ExtapiUpdateGatewayProfileRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateGatewayProfileRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiUpdateGatewayProfileRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateGatewayProfileRequest &&
            (identical(other.gatewayProfile, gatewayProfile) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayProfile, gatewayProfile)));
  }
}

extension $ExtapiUpdateGatewayProfileRequestExtension
    on ExtapiUpdateGatewayProfileRequest {
  ExtapiUpdateGatewayProfileRequest copyWith(
      {ExtapiGatewayProfile? gatewayProfile}) {
    return ExtapiUpdateGatewayProfileRequest(
        gatewayProfile: gatewayProfile ?? this.gatewayProfile);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateGatewayRequest {
  ExtapiUpdateGatewayRequest({
    this.gateway,
  });

  factory ExtapiUpdateGatewayRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUpdateGatewayRequestFromJson(json);

  @JsonKey(name: 'gateway')
  final ExtapiGateway? gateway;
  static const fromJsonFactory = _$ExtapiUpdateGatewayRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateGatewayRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiUpdateGatewayRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateGatewayRequest &&
            (identical(other.gateway, gateway) ||
                const DeepCollectionEquality().equals(other.gateway, gateway)));
  }
}

extension $ExtapiUpdateGatewayRequestExtension on ExtapiUpdateGatewayRequest {
  ExtapiUpdateGatewayRequest copyWith({ExtapiGateway? gateway}) {
    return ExtapiUpdateGatewayRequest(gateway: gateway ?? this.gateway);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateGwConfigRequest {
  ExtapiUpdateGwConfigRequest({
    this.conf,
    this.gatewayId,
  });

  factory ExtapiUpdateGwConfigRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUpdateGwConfigRequestFromJson(json);

  @JsonKey(name: 'conf')
  final String? conf;
  @JsonKey(name: 'gatewayId')
  final String? gatewayId;
  static const fromJsonFactory = _$ExtapiUpdateGwConfigRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateGwConfigRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiUpdateGwConfigRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateGwConfigRequest &&
            (identical(other.conf, conf) ||
                const DeepCollectionEquality().equals(other.conf, conf)) &&
            (identical(other.gatewayId, gatewayId) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayId, gatewayId)));
  }
}

extension $ExtapiUpdateGwConfigRequestExtension on ExtapiUpdateGwConfigRequest {
  ExtapiUpdateGwConfigRequest copyWith({String? conf, String? gatewayId}) {
    return ExtapiUpdateGwConfigRequest(
        conf: conf ?? this.conf, gatewayId: gatewayId ?? this.gatewayId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateGwConfigResponse {
  ExtapiUpdateGwConfigResponse({
    this.status,
  });

  factory ExtapiUpdateGwConfigResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUpdateGwConfigResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory = _$ExtapiUpdateGwConfigResponseFromJson;
  static const toJsonFactory = _$ExtapiUpdateGwConfigResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiUpdateGwConfigResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateGwConfigResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiUpdateGwConfigResponseExtension
    on ExtapiUpdateGwConfigResponse {
  ExtapiUpdateGwConfigResponse copyWith({String? status}) {
    return ExtapiUpdateGwConfigResponse(status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateNetworkServerRequest {
  ExtapiUpdateNetworkServerRequest({
    this.networkServer,
  });

  factory ExtapiUpdateNetworkServerRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiUpdateNetworkServerRequestFromJson(json);

  @JsonKey(name: 'networkServer')
  final ExtapiNetworkServer? networkServer;
  static const fromJsonFactory = _$ExtapiUpdateNetworkServerRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateNetworkServerRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiUpdateNetworkServerRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateNetworkServerRequest &&
            (identical(other.networkServer, networkServer) ||
                const DeepCollectionEquality()
                    .equals(other.networkServer, networkServer)));
  }
}

extension $ExtapiUpdateNetworkServerRequestExtension
    on ExtapiUpdateNetworkServerRequest {
  ExtapiUpdateNetworkServerRequest copyWith(
      {ExtapiNetworkServer? networkServer}) {
    return ExtapiUpdateNetworkServerRequest(
        networkServer: networkServer ?? this.networkServer);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateOrganizationRequest {
  ExtapiUpdateOrganizationRequest({
    this.organization,
  });

  factory ExtapiUpdateOrganizationRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUpdateOrganizationRequestFromJson(json);

  @JsonKey(name: 'organization')
  final ExtapiOrganization? organization;
  static const fromJsonFactory = _$ExtapiUpdateOrganizationRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateOrganizationRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiUpdateOrganizationRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateOrganizationRequest &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)));
  }
}

extension $ExtapiUpdateOrganizationRequestExtension
    on ExtapiUpdateOrganizationRequest {
  ExtapiUpdateOrganizationRequest copyWith({ExtapiOrganization? organization}) {
    return ExtapiUpdateOrganizationRequest(
        organization: organization ?? this.organization);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateOrganizationUserRequest {
  ExtapiUpdateOrganizationUserRequest({
    this.organizationUser,
  });

  factory ExtapiUpdateOrganizationUserRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiUpdateOrganizationUserRequestFromJson(json);

  @JsonKey(name: 'organizationUser')
  final ExtapiOrganizationUser? organizationUser;
  static const fromJsonFactory = _$ExtapiUpdateOrganizationUserRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateOrganizationUserRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiUpdateOrganizationUserRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateOrganizationUserRequest &&
            (identical(other.organizationUser, organizationUser) ||
                const DeepCollectionEquality()
                    .equals(other.organizationUser, organizationUser)));
  }
}

extension $ExtapiUpdateOrganizationUserRequestExtension
    on ExtapiUpdateOrganizationUserRequest {
  ExtapiUpdateOrganizationUserRequest copyWith(
      {ExtapiOrganizationUser? organizationUser}) {
    return ExtapiUpdateOrganizationUserRequest(
        organizationUser: organizationUser ?? this.organizationUser);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateServiceProfileRequest {
  ExtapiUpdateServiceProfileRequest({
    this.serviceProfile,
  });

  factory ExtapiUpdateServiceProfileRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiUpdateServiceProfileRequestFromJson(json);

  @JsonKey(name: 'serviceProfile')
  final ExtapiServiceProfile? serviceProfile;
  static const fromJsonFactory = _$ExtapiUpdateServiceProfileRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateServiceProfileRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiUpdateServiceProfileRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateServiceProfileRequest &&
            (identical(other.serviceProfile, serviceProfile) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProfile, serviceProfile)));
  }
}

extension $ExtapiUpdateServiceProfileRequestExtension
    on ExtapiUpdateServiceProfileRequest {
  ExtapiUpdateServiceProfileRequest copyWith(
      {ExtapiServiceProfile? serviceProfile}) {
    return ExtapiUpdateServiceProfileRequest(
        serviceProfile: serviceProfile ?? this.serviceProfile);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateUserRequest {
  ExtapiUpdateUserRequest({
    this.user,
  });

  factory ExtapiUpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUpdateUserRequestFromJson(json);

  @JsonKey(name: 'user')
  final ExtapiUser? user;
  static const fromJsonFactory = _$ExtapiUpdateUserRequestFromJson;
  static const toJsonFactory = _$ExtapiUpdateUserRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiUpdateUserRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateUserRequest &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }
}

extension $ExtapiUpdateUserRequestExtension on ExtapiUpdateUserRequest {
  ExtapiUpdateUserRequest copyWith({ExtapiUser? user}) {
    return ExtapiUpdateUserRequest(user: user ?? this.user);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUpdateUserResponse {
  ExtapiUpdateUserResponse({
    this.jwt,
  });

  factory ExtapiUpdateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUpdateUserResponseFromJson(json);

  @JsonKey(name: 'jwt')
  final String? jwt;
  static const fromJsonFactory = _$ExtapiUpdateUserResponseFromJson;
  static const toJsonFactory = _$ExtapiUpdateUserResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiUpdateUserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUpdateUserResponse &&
            (identical(other.jwt, jwt) ||
                const DeepCollectionEquality().equals(other.jwt, jwt)));
  }
}

extension $ExtapiUpdateUserResponseExtension on ExtapiUpdateUserResponse {
  ExtapiUpdateUserResponse copyWith({String? jwt}) {
    return ExtapiUpdateUserResponse(jwt: jwt ?? this.jwt);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUplinkFrameLog {
  ExtapiUplinkFrameLog({
    this.phyPayloadJSON,
    this.rxInfo,
    this.txInfo,
  });

  factory ExtapiUplinkFrameLog.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUplinkFrameLogFromJson(json);

  @JsonKey(name: 'phyPayloadJSON')
  final String? phyPayloadJSON;
  @JsonKey(name: 'rxInfo', defaultValue: <GwUplinkRXInfo>[])
  final List<GwUplinkRXInfo>? rxInfo;
  @JsonKey(name: 'txInfo')
  final GwUplinkTXInfo? txInfo;
  static const fromJsonFactory = _$ExtapiUplinkFrameLogFromJson;
  static const toJsonFactory = _$ExtapiUplinkFrameLogToJson;
  Map<String, dynamic> toJson() => _$ExtapiUplinkFrameLogToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUplinkFrameLog &&
            (identical(other.phyPayloadJSON, phyPayloadJSON) ||
                const DeepCollectionEquality()
                    .equals(other.phyPayloadJSON, phyPayloadJSON)) &&
            (identical(other.rxInfo, rxInfo) ||
                const DeepCollectionEquality().equals(other.rxInfo, rxInfo)) &&
            (identical(other.txInfo, txInfo) ||
                const DeepCollectionEquality().equals(other.txInfo, txInfo)));
  }
}

extension $ExtapiUplinkFrameLogExtension on ExtapiUplinkFrameLog {
  ExtapiUplinkFrameLog copyWith(
      {String? phyPayloadJSON,
      List<GwUplinkRXInfo>? rxInfo,
      GwUplinkTXInfo? txInfo}) {
    return ExtapiUplinkFrameLog(
        phyPayloadJSON: phyPayloadJSON ?? this.phyPayloadJSON,
        rxInfo: rxInfo ?? this.rxInfo,
        txInfo: txInfo ?? this.txInfo);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUser {
  ExtapiUser({
    this.email,
    this.id,
    this.isActive,
    this.isAdmin,
    this.note,
    this.sessionTTL,
    this.username,
  });

  factory ExtapiUser.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUserFromJson(json);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'isAdmin')
  final bool? isAdmin;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'sessionTTL')
  final int? sessionTTL;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$ExtapiUserFromJson;
  static const toJsonFactory = _$ExtapiUserToJson;
  Map<String, dynamic> toJson() => _$ExtapiUserToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUser &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.sessionTTL, sessionTTL) ||
                const DeepCollectionEquality()
                    .equals(other.sessionTTL, sessionTTL)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }
}

extension $ExtapiUserExtension on ExtapiUser {
  ExtapiUser copyWith(
      {String? email,
      String? id,
      bool? isActive,
      bool? isAdmin,
      String? note,
      int? sessionTTL,
      String? username}) {
    return ExtapiUser(
        email: email ?? this.email,
        id: id ?? this.id,
        isActive: isActive ?? this.isActive,
        isAdmin: isAdmin ?? this.isAdmin,
        note: note ?? this.note,
        sessionTTL: sessionTTL ?? this.sessionTTL,
        username: username ?? this.username);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUserAction {
  ExtapiUserAction({
    this.action,
    this.details,
    this.operatorID,
    this.timestamp,
    this.userID,
  });

  factory ExtapiUserAction.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUserActionFromJson(json);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'details')
  final String? details;
  @JsonKey(name: 'operatorID')
  final String? operatorID;
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;
  @JsonKey(name: 'userID')
  final String? userID;
  static const fromJsonFactory = _$ExtapiUserActionFromJson;
  static const toJsonFactory = _$ExtapiUserActionToJson;
  Map<String, dynamic> toJson() => _$ExtapiUserActionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUserAction &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.operatorID, operatorID) ||
                const DeepCollectionEquality()
                    .equals(other.operatorID, operatorID)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }
}

extension $ExtapiUserActionExtension on ExtapiUserAction {
  ExtapiUserAction copyWith(
      {String? action,
      String? details,
      String? operatorID,
      DateTime? timestamp,
      String? userID}) {
    return ExtapiUserAction(
        action: action ?? this.action,
        details: details ?? this.details,
        operatorID: operatorID ?? this.operatorID,
        timestamp: timestamp ?? this.timestamp,
        userID: userID ?? this.userID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUserListItem {
  ExtapiUserListItem({
    this.createdAt,
    this.id,
    this.isActive,
    this.isAdmin,
    this.sessionTTL,
    this.updatedAt,
    this.username,
  });

  factory ExtapiUserListItem.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUserListItemFromJson(json);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'isAdmin')
  final bool? isAdmin;
  @JsonKey(name: 'sessionTTL')
  final int? sessionTTL;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$ExtapiUserListItemFromJson;
  static const toJsonFactory = _$ExtapiUserListItemToJson;
  Map<String, dynamic> toJson() => _$ExtapiUserListItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUserListItem &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.sessionTTL, sessionTTL) ||
                const DeepCollectionEquality()
                    .equals(other.sessionTTL, sessionTTL)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }
}

extension $ExtapiUserListItemExtension on ExtapiUserListItem {
  ExtapiUserListItem copyWith(
      {DateTime? createdAt,
      String? id,
      bool? isActive,
      bool? isAdmin,
      int? sessionTTL,
      DateTime? updatedAt,
      String? username}) {
    return ExtapiUserListItem(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        isActive: isActive ?? this.isActive,
        isAdmin: isAdmin ?? this.isAdmin,
        sessionTTL: sessionTTL ?? this.sessionTTL,
        updatedAt: updatedAt ?? this.updatedAt,
        username: username ?? this.username);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiUserOrganization {
  ExtapiUserOrganization({
    this.isAdmin,
    this.isDeviceAdmin,
    this.isGatewayAdmin,
    this.organizationID,
  });

  factory ExtapiUserOrganization.fromJson(Map<String, dynamic> json) =>
      _$ExtapiUserOrganizationFromJson(json);

  @JsonKey(name: 'isAdmin')
  final bool? isAdmin;
  @JsonKey(name: 'isDeviceAdmin')
  final bool? isDeviceAdmin;
  @JsonKey(name: 'isGatewayAdmin')
  final bool? isGatewayAdmin;
  @JsonKey(name: 'organizationID')
  final String? organizationID;
  static const fromJsonFactory = _$ExtapiUserOrganizationFromJson;
  static const toJsonFactory = _$ExtapiUserOrganizationToJson;
  Map<String, dynamic> toJson() => _$ExtapiUserOrganizationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiUserOrganization &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.isDeviceAdmin, isDeviceAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isDeviceAdmin, isDeviceAdmin)) &&
            (identical(other.isGatewayAdmin, isGatewayAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isGatewayAdmin, isGatewayAdmin)) &&
            (identical(other.organizationID, organizationID) ||
                const DeepCollectionEquality()
                    .equals(other.organizationID, organizationID)));
  }
}

extension $ExtapiUserOrganizationExtension on ExtapiUserOrganization {
  ExtapiUserOrganization copyWith(
      {bool? isAdmin,
      bool? isDeviceAdmin,
      bool? isGatewayAdmin,
      String? organizationID}) {
    return ExtapiUserOrganization(
        isAdmin: isAdmin ?? this.isAdmin,
        isDeviceAdmin: isDeviceAdmin ?? this.isDeviceAdmin,
        isGatewayAdmin: isGatewayAdmin ?? this.isGatewayAdmin,
        organizationID: organizationID ?? this.organizationID);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiVerifyEmailRequest {
  ExtapiVerifyEmailRequest({
    this.email,
    this.verificationCode,
  });

  factory ExtapiVerifyEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiVerifyEmailRequestFromJson(json);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'verificationCode')
  final String? verificationCode;
  static const fromJsonFactory = _$ExtapiVerifyEmailRequestFromJson;
  static const toJsonFactory = _$ExtapiVerifyEmailRequestToJson;
  Map<String, dynamic> toJson() => _$ExtapiVerifyEmailRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiVerifyEmailRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.verificationCode, verificationCode) ||
                const DeepCollectionEquality()
                    .equals(other.verificationCode, verificationCode)));
  }
}

extension $ExtapiVerifyEmailRequestExtension on ExtapiVerifyEmailRequest {
  ExtapiVerifyEmailRequest copyWith({String? email, String? verificationCode}) {
    return ExtapiVerifyEmailRequest(
        email: email ?? this.email,
        verificationCode: verificationCode ?? this.verificationCode);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiVerifyShopifyEmailRequest {
  ExtapiVerifyShopifyEmailRequest({
    this.email,
    this.language,
    this.organizationId,
  });

  factory ExtapiVerifyShopifyEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$ExtapiVerifyShopifyEmailRequestFromJson(json);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'organizationId')
  final String? organizationId;
  static const fromJsonFactory = _$ExtapiVerifyShopifyEmailRequestFromJson;
  static const toJsonFactory = _$ExtapiVerifyShopifyEmailRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiVerifyShopifyEmailRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiVerifyShopifyEmailRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.organizationId, organizationId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationId, organizationId)));
  }
}

extension $ExtapiVerifyShopifyEmailRequestExtension
    on ExtapiVerifyShopifyEmailRequest {
  ExtapiVerifyShopifyEmailRequest copyWith(
      {String? email, String? language, String? organizationId}) {
    return ExtapiVerifyShopifyEmailRequest(
        email: email ?? this.email,
        language: language ?? this.language,
        organizationId: organizationId ?? this.organizationId);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiVerifyShopifyEmailResponse {
  ExtapiVerifyShopifyEmailResponse({
    this.status,
  });

  factory ExtapiVerifyShopifyEmailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiVerifyShopifyEmailResponseFromJson(json);

  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory = _$ExtapiVerifyShopifyEmailResponseFromJson;
  static const toJsonFactory = _$ExtapiVerifyShopifyEmailResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiVerifyShopifyEmailResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiVerifyShopifyEmailResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }
}

extension $ExtapiVerifyShopifyEmailResponseExtension
    on ExtapiVerifyShopifyEmailResponse {
  ExtapiVerifyShopifyEmailResponse copyWith({String? status}) {
    return ExtapiVerifyShopifyEmailResponse(status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiWithdrawGatewayMiningFuelRequest {
  ExtapiWithdrawGatewayMiningFuelRequest({
    this.currency,
    this.orgId,
    this.withdrawals,
  });

  factory ExtapiWithdrawGatewayMiningFuelRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiWithdrawGatewayMiningFuelRequestFromJson(json);

  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'orgId')
  final String? orgId;
  @JsonKey(name: 'withdrawals', defaultValue: <ExtapiGatewayMiningFuelChange>[])
  final List<ExtapiGatewayMiningFuelChange>? withdrawals;
  static const fromJsonFactory =
      _$ExtapiWithdrawGatewayMiningFuelRequestFromJson;
  static const toJsonFactory = _$ExtapiWithdrawGatewayMiningFuelRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiWithdrawGatewayMiningFuelRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiWithdrawGatewayMiningFuelRequest &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.withdrawals, withdrawals) ||
                const DeepCollectionEquality()
                    .equals(other.withdrawals, withdrawals)));
  }
}

extension $ExtapiWithdrawGatewayMiningFuelRequestExtension
    on ExtapiWithdrawGatewayMiningFuelRequest {
  ExtapiWithdrawGatewayMiningFuelRequest copyWith(
      {String? currency,
      String? orgId,
      List<ExtapiGatewayMiningFuelChange>? withdrawals}) {
    return ExtapiWithdrawGatewayMiningFuelRequest(
        currency: currency ?? this.currency,
        orgId: orgId ?? this.orgId,
        withdrawals: withdrawals ?? this.withdrawals);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiWithdrawGatewayMiningFuelResponse {
  ExtapiWithdrawGatewayMiningFuelResponse();

  factory ExtapiWithdrawGatewayMiningFuelResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExtapiWithdrawGatewayMiningFuelResponseFromJson(json);

  static const fromJsonFactory =
      _$ExtapiWithdrawGatewayMiningFuelResponseFromJson;
  static const toJsonFactory = _$ExtapiWithdrawGatewayMiningFuelResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExtapiWithdrawGatewayMiningFuelResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtapiWithdrawHistory {
  ExtapiWithdrawHistory({
    this.amount,
    this.denyComment,
    this.timestamp,
    this.txHash,
    this.txStatus,
    this.withdrawFee,
  });

  factory ExtapiWithdrawHistory.fromJson(Map<String, dynamic> json) =>
      _$ExtapiWithdrawHistoryFromJson(json);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'denyComment')
  final String? denyComment;
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;
  @JsonKey(name: 'txHash')
  final String? txHash;
  @JsonKey(name: 'txStatus')
  final String? txStatus;
  @JsonKey(name: 'withdrawFee')
  final String? withdrawFee;
  static const fromJsonFactory = _$ExtapiWithdrawHistoryFromJson;
  static const toJsonFactory = _$ExtapiWithdrawHistoryToJson;
  Map<String, dynamic> toJson() => _$ExtapiWithdrawHistoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiWithdrawHistory &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.denyComment, denyComment) ||
                const DeepCollectionEquality()
                    .equals(other.denyComment, denyComment)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.txHash, txHash) ||
                const DeepCollectionEquality().equals(other.txHash, txHash)) &&
            (identical(other.txStatus, txStatus) ||
                const DeepCollectionEquality()
                    .equals(other.txStatus, txStatus)) &&
            (identical(other.withdrawFee, withdrawFee) ||
                const DeepCollectionEquality()
                    .equals(other.withdrawFee, withdrawFee)));
  }
}

extension $ExtapiWithdrawHistoryExtension on ExtapiWithdrawHistory {
  ExtapiWithdrawHistory copyWith(
      {String? amount,
      String? denyComment,
      DateTime? timestamp,
      String? txHash,
      String? txStatus,
      String? withdrawFee}) {
    return ExtapiWithdrawHistory(
        amount: amount ?? this.amount,
        denyComment: denyComment ?? this.denyComment,
        timestamp: timestamp ?? this.timestamp,
        txHash: txHash ?? this.txHash,
        txStatus: txStatus ?? this.txStatus,
        withdrawFee: withdrawFee ?? this.withdrawFee);
  }
}

@JsonSerializable(explicitToJson: true)
class ExtapiWithdrawResponse {
  ExtapiWithdrawResponse({
    this.msg,
  });

  factory ExtapiWithdrawResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtapiWithdrawResponseFromJson(json);

  @JsonKey(name: 'msg')
  final String? msg;
  static const fromJsonFactory = _$ExtapiWithdrawResponseFromJson;
  static const toJsonFactory = _$ExtapiWithdrawResponseToJson;
  Map<String, dynamic> toJson() => _$ExtapiWithdrawResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtapiWithdrawResponse &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }
}

extension $ExtapiWithdrawResponseExtension on ExtapiWithdrawResponse {
  ExtapiWithdrawResponse copyWith({String? msg}) {
    return ExtapiWithdrawResponse(msg: msg ?? this.msg);
  }
}

@JsonSerializable(explicitToJson: true)
class GwDelayTimingInfo {
  GwDelayTimingInfo({
    this.delay,
  });

  factory GwDelayTimingInfo.fromJson(Map<String, dynamic> json) =>
      _$GwDelayTimingInfoFromJson(json);

  @JsonKey(name: 'delay')
  final String? delay;
  static const fromJsonFactory = _$GwDelayTimingInfoFromJson;
  static const toJsonFactory = _$GwDelayTimingInfoToJson;
  Map<String, dynamic> toJson() => _$GwDelayTimingInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GwDelayTimingInfo &&
            (identical(other.delay, delay) ||
                const DeepCollectionEquality().equals(other.delay, delay)));
  }
}

extension $GwDelayTimingInfoExtension on GwDelayTimingInfo {
  GwDelayTimingInfo copyWith({String? delay}) {
    return GwDelayTimingInfo(delay: delay ?? this.delay);
  }
}

@JsonSerializable(explicitToJson: true)
class GwDownlinkTXInfo {
  GwDownlinkTXInfo({
    this.antenna,
    this.board,
    this.context,
    this.delayTimingInfo,
    this.frequency,
    this.fskModulationInfo,
    this.gatewayID,
    this.gpsEpochTimingInfo,
    this.immediatelyTimingInfo,
    this.loRaModulationInfo,
    this.modulation,
    this.power,
    this.timing,
  });

  factory GwDownlinkTXInfo.fromJson(Map<String, dynamic> json) =>
      _$GwDownlinkTXInfoFromJson(json);

  @JsonKey(name: 'antenna')
  final int? antenna;
  @JsonKey(name: 'board')
  final int? board;
  @JsonKey(name: 'context')
  final String? context;
  @JsonKey(name: 'delayTimingInfo')
  final GwDelayTimingInfo? delayTimingInfo;
  @JsonKey(name: 'frequency')
  final int? frequency;
  @JsonKey(name: 'fskModulationInfo')
  final GwFSKModulationInfo? fskModulationInfo;
  @JsonKey(name: 'gatewayID')
  final String? gatewayID;
  @JsonKey(name: 'gpsEpochTimingInfo')
  final GwGPSEpochTimingInfo? gpsEpochTimingInfo;
  @JsonKey(name: 'immediatelyTimingInfo')
  final GwImmediatelyTimingInfo? immediatelyTimingInfo;
  @JsonKey(name: 'loRaModulationInfo')
  final GwLoRaModulationInfo? loRaModulationInfo;
  @JsonKey(
      name: 'modulation',
      toJson: commonModulationToJson,
      fromJson: commonModulationFromJson)
  final enums.CommonModulation? modulation;
  @JsonKey(name: 'power')
  final int? power;
  @JsonKey(
      name: 'timing',
      toJson: gwDownlinkTimingToJson,
      fromJson: gwDownlinkTimingFromJson)
  final enums.GwDownlinkTiming? timing;
  static const fromJsonFactory = _$GwDownlinkTXInfoFromJson;
  static const toJsonFactory = _$GwDownlinkTXInfoToJson;
  Map<String, dynamic> toJson() => _$GwDownlinkTXInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GwDownlinkTXInfo &&
            (identical(other.antenna, antenna) ||
                const DeepCollectionEquality()
                    .equals(other.antenna, antenna)) &&
            (identical(other.board, board) ||
                const DeepCollectionEquality().equals(other.board, board)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.delayTimingInfo, delayTimingInfo) ||
                const DeepCollectionEquality()
                    .equals(other.delayTimingInfo, delayTimingInfo)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.fskModulationInfo, fskModulationInfo) ||
                const DeepCollectionEquality()
                    .equals(other.fskModulationInfo, fskModulationInfo)) &&
            (identical(other.gatewayID, gatewayID) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayID, gatewayID)) &&
            (identical(other.gpsEpochTimingInfo, gpsEpochTimingInfo) ||
                const DeepCollectionEquality()
                    .equals(other.gpsEpochTimingInfo, gpsEpochTimingInfo)) &&
            (identical(other.immediatelyTimingInfo, immediatelyTimingInfo) ||
                const DeepCollectionEquality().equals(
                    other.immediatelyTimingInfo, immediatelyTimingInfo)) &&
            (identical(other.loRaModulationInfo, loRaModulationInfo) ||
                const DeepCollectionEquality()
                    .equals(other.loRaModulationInfo, loRaModulationInfo)) &&
            (identical(other.modulation, modulation) ||
                const DeepCollectionEquality()
                    .equals(other.modulation, modulation)) &&
            (identical(other.power, power) ||
                const DeepCollectionEquality().equals(other.power, power)) &&
            (identical(other.timing, timing) ||
                const DeepCollectionEquality().equals(other.timing, timing)));
  }
}

extension $GwDownlinkTXInfoExtension on GwDownlinkTXInfo {
  GwDownlinkTXInfo copyWith(
      {int? antenna,
      int? board,
      String? context,
      GwDelayTimingInfo? delayTimingInfo,
      int? frequency,
      GwFSKModulationInfo? fskModulationInfo,
      String? gatewayID,
      GwGPSEpochTimingInfo? gpsEpochTimingInfo,
      GwImmediatelyTimingInfo? immediatelyTimingInfo,
      GwLoRaModulationInfo? loRaModulationInfo,
      enums.CommonModulation? modulation,
      int? power,
      enums.GwDownlinkTiming? timing}) {
    return GwDownlinkTXInfo(
        antenna: antenna ?? this.antenna,
        board: board ?? this.board,
        context: context ?? this.context,
        delayTimingInfo: delayTimingInfo ?? this.delayTimingInfo,
        frequency: frequency ?? this.frequency,
        fskModulationInfo: fskModulationInfo ?? this.fskModulationInfo,
        gatewayID: gatewayID ?? this.gatewayID,
        gpsEpochTimingInfo: gpsEpochTimingInfo ?? this.gpsEpochTimingInfo,
        immediatelyTimingInfo:
            immediatelyTimingInfo ?? this.immediatelyTimingInfo,
        loRaModulationInfo: loRaModulationInfo ?? this.loRaModulationInfo,
        modulation: modulation ?? this.modulation,
        power: power ?? this.power,
        timing: timing ?? this.timing);
  }
}

@JsonSerializable(explicitToJson: true)
class GwEncryptedFineTimestamp {
  GwEncryptedFineTimestamp({
    this.aesKeyIndex,
    this.encryptedNS,
    this.fpgaID,
  });

  factory GwEncryptedFineTimestamp.fromJson(Map<String, dynamic> json) =>
      _$GwEncryptedFineTimestampFromJson(json);

  @JsonKey(name: 'aesKeyIndex')
  final int? aesKeyIndex;
  @JsonKey(name: 'encryptedNS')
  final String? encryptedNS;
  @JsonKey(name: 'fpgaID')
  final String? fpgaID;
  static const fromJsonFactory = _$GwEncryptedFineTimestampFromJson;
  static const toJsonFactory = _$GwEncryptedFineTimestampToJson;
  Map<String, dynamic> toJson() => _$GwEncryptedFineTimestampToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GwEncryptedFineTimestamp &&
            (identical(other.aesKeyIndex, aesKeyIndex) ||
                const DeepCollectionEquality()
                    .equals(other.aesKeyIndex, aesKeyIndex)) &&
            (identical(other.encryptedNS, encryptedNS) ||
                const DeepCollectionEquality()
                    .equals(other.encryptedNS, encryptedNS)) &&
            (identical(other.fpgaID, fpgaID) ||
                const DeepCollectionEquality().equals(other.fpgaID, fpgaID)));
  }
}

extension $GwEncryptedFineTimestampExtension on GwEncryptedFineTimestamp {
  GwEncryptedFineTimestamp copyWith(
      {int? aesKeyIndex, String? encryptedNS, String? fpgaID}) {
    return GwEncryptedFineTimestamp(
        aesKeyIndex: aesKeyIndex ?? this.aesKeyIndex,
        encryptedNS: encryptedNS ?? this.encryptedNS,
        fpgaID: fpgaID ?? this.fpgaID);
  }
}

@JsonSerializable(explicitToJson: true)
class GwFSKModulationInfo {
  GwFSKModulationInfo({
    this.datarate,
    this.frequencyDeviation,
  });

  factory GwFSKModulationInfo.fromJson(Map<String, dynamic> json) =>
      _$GwFSKModulationInfoFromJson(json);

  @JsonKey(name: 'datarate')
  final int? datarate;
  @JsonKey(name: 'frequencyDeviation')
  final int? frequencyDeviation;
  static const fromJsonFactory = _$GwFSKModulationInfoFromJson;
  static const toJsonFactory = _$GwFSKModulationInfoToJson;
  Map<String, dynamic> toJson() => _$GwFSKModulationInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GwFSKModulationInfo &&
            (identical(other.datarate, datarate) ||
                const DeepCollectionEquality()
                    .equals(other.datarate, datarate)) &&
            (identical(other.frequencyDeviation, frequencyDeviation) ||
                const DeepCollectionEquality()
                    .equals(other.frequencyDeviation, frequencyDeviation)));
  }
}

extension $GwFSKModulationInfoExtension on GwFSKModulationInfo {
  GwFSKModulationInfo copyWith({int? datarate, int? frequencyDeviation}) {
    return GwFSKModulationInfo(
        datarate: datarate ?? this.datarate,
        frequencyDeviation: frequencyDeviation ?? this.frequencyDeviation);
  }
}

@JsonSerializable(explicitToJson: true)
class GwGPSEpochTimingInfo {
  GwGPSEpochTimingInfo({
    this.timeSinceGPSEpoch,
  });

  factory GwGPSEpochTimingInfo.fromJson(Map<String, dynamic> json) =>
      _$GwGPSEpochTimingInfoFromJson(json);

  @JsonKey(name: 'timeSinceGPSEpoch')
  final String? timeSinceGPSEpoch;
  static const fromJsonFactory = _$GwGPSEpochTimingInfoFromJson;
  static const toJsonFactory = _$GwGPSEpochTimingInfoToJson;
  Map<String, dynamic> toJson() => _$GwGPSEpochTimingInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GwGPSEpochTimingInfo &&
            (identical(other.timeSinceGPSEpoch, timeSinceGPSEpoch) ||
                const DeepCollectionEquality()
                    .equals(other.timeSinceGPSEpoch, timeSinceGPSEpoch)));
  }
}

extension $GwGPSEpochTimingInfoExtension on GwGPSEpochTimingInfo {
  GwGPSEpochTimingInfo copyWith({String? timeSinceGPSEpoch}) {
    return GwGPSEpochTimingInfo(
        timeSinceGPSEpoch: timeSinceGPSEpoch ?? this.timeSinceGPSEpoch);
  }
}

@JsonSerializable(explicitToJson: true)
class GwImmediatelyTimingInfo {
  GwImmediatelyTimingInfo();

  factory GwImmediatelyTimingInfo.fromJson(Map<String, dynamic> json) =>
      _$GwImmediatelyTimingInfoFromJson(json);

  static const fromJsonFactory = _$GwImmediatelyTimingInfoFromJson;
  static const toJsonFactory = _$GwImmediatelyTimingInfoToJson;
  Map<String, dynamic> toJson() => _$GwImmediatelyTimingInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GwLRFHSSModulationInfo {
  GwLRFHSSModulationInfo({
    this.codeRate,
    this.gridSteps,
    this.operatingChannelWidth,
  });

  factory GwLRFHSSModulationInfo.fromJson(Map<String, dynamic> json) =>
      _$GwLRFHSSModulationInfoFromJson(json);

  @JsonKey(name: 'codeRate')
  final String? codeRate;
  @JsonKey(name: 'gridSteps')
  final int? gridSteps;
  @JsonKey(name: 'operatingChannelWidth')
  final int? operatingChannelWidth;
  static const fromJsonFactory = _$GwLRFHSSModulationInfoFromJson;
  static const toJsonFactory = _$GwLRFHSSModulationInfoToJson;
  Map<String, dynamic> toJson() => _$GwLRFHSSModulationInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GwLRFHSSModulationInfo &&
            (identical(other.codeRate, codeRate) ||
                const DeepCollectionEquality()
                    .equals(other.codeRate, codeRate)) &&
            (identical(other.gridSteps, gridSteps) ||
                const DeepCollectionEquality()
                    .equals(other.gridSteps, gridSteps)) &&
            (identical(other.operatingChannelWidth, operatingChannelWidth) ||
                const DeepCollectionEquality().equals(
                    other.operatingChannelWidth, operatingChannelWidth)));
  }
}

extension $GwLRFHSSModulationInfoExtension on GwLRFHSSModulationInfo {
  GwLRFHSSModulationInfo copyWith(
      {String? codeRate, int? gridSteps, int? operatingChannelWidth}) {
    return GwLRFHSSModulationInfo(
        codeRate: codeRate ?? this.codeRate,
        gridSteps: gridSteps ?? this.gridSteps,
        operatingChannelWidth:
            operatingChannelWidth ?? this.operatingChannelWidth);
  }
}

@JsonSerializable(explicitToJson: true)
class GwLoRaModulationInfo {
  GwLoRaModulationInfo({
    this.bandwidth,
    this.codeRate,
    this.polarizationInversion,
    this.spreadingFactor,
  });

  factory GwLoRaModulationInfo.fromJson(Map<String, dynamic> json) =>
      _$GwLoRaModulationInfoFromJson(json);

  @JsonKey(name: 'bandwidth')
  final int? bandwidth;
  @JsonKey(name: 'codeRate')
  final String? codeRate;
  @JsonKey(name: 'polarizationInversion')
  final bool? polarizationInversion;
  @JsonKey(name: 'spreadingFactor')
  final int? spreadingFactor;
  static const fromJsonFactory = _$GwLoRaModulationInfoFromJson;
  static const toJsonFactory = _$GwLoRaModulationInfoToJson;
  Map<String, dynamic> toJson() => _$GwLoRaModulationInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GwLoRaModulationInfo &&
            (identical(other.bandwidth, bandwidth) ||
                const DeepCollectionEquality()
                    .equals(other.bandwidth, bandwidth)) &&
            (identical(other.codeRate, codeRate) ||
                const DeepCollectionEquality()
                    .equals(other.codeRate, codeRate)) &&
            (identical(other.polarizationInversion, polarizationInversion) ||
                const DeepCollectionEquality().equals(
                    other.polarizationInversion, polarizationInversion)) &&
            (identical(other.spreadingFactor, spreadingFactor) ||
                const DeepCollectionEquality()
                    .equals(other.spreadingFactor, spreadingFactor)));
  }
}

extension $GwLoRaModulationInfoExtension on GwLoRaModulationInfo {
  GwLoRaModulationInfo copyWith(
      {int? bandwidth,
      String? codeRate,
      bool? polarizationInversion,
      int? spreadingFactor}) {
    return GwLoRaModulationInfo(
        bandwidth: bandwidth ?? this.bandwidth,
        codeRate: codeRate ?? this.codeRate,
        polarizationInversion:
            polarizationInversion ?? this.polarizationInversion,
        spreadingFactor: spreadingFactor ?? this.spreadingFactor);
  }
}

@JsonSerializable(explicitToJson: true)
class GwPlainFineTimestamp {
  GwPlainFineTimestamp({
    this.time,
  });

  factory GwPlainFineTimestamp.fromJson(Map<String, dynamic> json) =>
      _$GwPlainFineTimestampFromJson(json);

  @JsonKey(name: 'time')
  final DateTime? time;
  static const fromJsonFactory = _$GwPlainFineTimestampFromJson;
  static const toJsonFactory = _$GwPlainFineTimestampToJson;
  Map<String, dynamic> toJson() => _$GwPlainFineTimestampToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GwPlainFineTimestamp &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }
}

extension $GwPlainFineTimestampExtension on GwPlainFineTimestamp {
  GwPlainFineTimestamp copyWith({DateTime? time}) {
    return GwPlainFineTimestamp(time: time ?? this.time);
  }
}

@JsonSerializable(explicitToJson: true)
class GwUplinkRXInfo {
  GwUplinkRXInfo({
    this.antenna,
    this.board,
    this.channel,
    this.context,
    this.crcStatus,
    this.encryptedFineTimestamp,
    this.fineTimestampType,
    this.gatewayID,
    this.loRaSNR,
    this.location,
    this.plainFineTimestamp,
    this.rfChain,
    this.rssi,
    this.time,
    this.timeSinceGPSEpoch,
    this.uplinkID,
  });

  factory GwUplinkRXInfo.fromJson(Map<String, dynamic> json) =>
      _$GwUplinkRXInfoFromJson(json);

  @JsonKey(name: 'antenna')
  final int? antenna;
  @JsonKey(name: 'board')
  final int? board;
  @JsonKey(name: 'channel')
  final int? channel;
  @JsonKey(name: 'context')
  final String? context;
  @JsonKey(
      name: 'crcStatus',
      toJson: gwCRCStatusToJson,
      fromJson: gwCRCStatusFromJson)
  final enums.GwCRCStatus? crcStatus;
  @JsonKey(name: 'encryptedFineTimestamp')
  final GwEncryptedFineTimestamp? encryptedFineTimestamp;
  @JsonKey(
      name: 'fineTimestampType',
      toJson: gwFineTimestampTypeToJson,
      fromJson: gwFineTimestampTypeFromJson)
  final enums.GwFineTimestampType? fineTimestampType;
  @JsonKey(name: 'gatewayID')
  final String? gatewayID;
  @JsonKey(name: 'loRaSNR')
  final double? loRaSNR;
  @JsonKey(name: 'location')
  final CommonLocation? location;
  @JsonKey(name: 'plainFineTimestamp')
  final GwPlainFineTimestamp? plainFineTimestamp;
  @JsonKey(name: 'rfChain')
  final int? rfChain;
  @JsonKey(name: 'rssi')
  final int? rssi;
  @JsonKey(name: 'time')
  final DateTime? time;
  @JsonKey(name: 'timeSinceGPSEpoch')
  final String? timeSinceGPSEpoch;
  @JsonKey(name: 'uplinkID')
  final String? uplinkID;
  static const fromJsonFactory = _$GwUplinkRXInfoFromJson;
  static const toJsonFactory = _$GwUplinkRXInfoToJson;
  Map<String, dynamic> toJson() => _$GwUplinkRXInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GwUplinkRXInfo &&
            (identical(other.antenna, antenna) ||
                const DeepCollectionEquality()
                    .equals(other.antenna, antenna)) &&
            (identical(other.board, board) ||
                const DeepCollectionEquality().equals(other.board, board)) &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.crcStatus, crcStatus) ||
                const DeepCollectionEquality()
                    .equals(other.crcStatus, crcStatus)) &&
            (identical(other.encryptedFineTimestamp, encryptedFineTimestamp) ||
                const DeepCollectionEquality().equals(
                    other.encryptedFineTimestamp, encryptedFineTimestamp)) &&
            (identical(other.fineTimestampType, fineTimestampType) ||
                const DeepCollectionEquality()
                    .equals(other.fineTimestampType, fineTimestampType)) &&
            (identical(other.gatewayID, gatewayID) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayID, gatewayID)) &&
            (identical(other.loRaSNR, loRaSNR) ||
                const DeepCollectionEquality()
                    .equals(other.loRaSNR, loRaSNR)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.plainFineTimestamp, plainFineTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.plainFineTimestamp, plainFineTimestamp)) &&
            (identical(other.rfChain, rfChain) ||
                const DeepCollectionEquality()
                    .equals(other.rfChain, rfChain)) &&
            (identical(other.rssi, rssi) ||
                const DeepCollectionEquality().equals(other.rssi, rssi)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.timeSinceGPSEpoch, timeSinceGPSEpoch) ||
                const DeepCollectionEquality()
                    .equals(other.timeSinceGPSEpoch, timeSinceGPSEpoch)) &&
            (identical(other.uplinkID, uplinkID) ||
                const DeepCollectionEquality()
                    .equals(other.uplinkID, uplinkID)));
  }
}

extension $GwUplinkRXInfoExtension on GwUplinkRXInfo {
  GwUplinkRXInfo copyWith(
      {int? antenna,
      int? board,
      int? channel,
      String? context,
      enums.GwCRCStatus? crcStatus,
      GwEncryptedFineTimestamp? encryptedFineTimestamp,
      enums.GwFineTimestampType? fineTimestampType,
      String? gatewayID,
      double? loRaSNR,
      CommonLocation? location,
      GwPlainFineTimestamp? plainFineTimestamp,
      int? rfChain,
      int? rssi,
      DateTime? time,
      String? timeSinceGPSEpoch,
      String? uplinkID}) {
    return GwUplinkRXInfo(
        antenna: antenna ?? this.antenna,
        board: board ?? this.board,
        channel: channel ?? this.channel,
        context: context ?? this.context,
        crcStatus: crcStatus ?? this.crcStatus,
        encryptedFineTimestamp:
            encryptedFineTimestamp ?? this.encryptedFineTimestamp,
        fineTimestampType: fineTimestampType ?? this.fineTimestampType,
        gatewayID: gatewayID ?? this.gatewayID,
        loRaSNR: loRaSNR ?? this.loRaSNR,
        location: location ?? this.location,
        plainFineTimestamp: plainFineTimestamp ?? this.plainFineTimestamp,
        rfChain: rfChain ?? this.rfChain,
        rssi: rssi ?? this.rssi,
        time: time ?? this.time,
        timeSinceGPSEpoch: timeSinceGPSEpoch ?? this.timeSinceGPSEpoch,
        uplinkID: uplinkID ?? this.uplinkID);
  }
}

@JsonSerializable(explicitToJson: true)
class GwUplinkTXInfo {
  GwUplinkTXInfo({
    this.frequency,
    this.fskModulationInfo,
    this.loRaModulationInfo,
    this.lrFHSSModulationInfo,
    this.modulation,
  });

  factory GwUplinkTXInfo.fromJson(Map<String, dynamic> json) =>
      _$GwUplinkTXInfoFromJson(json);

  @JsonKey(name: 'frequency')
  final int? frequency;
  @JsonKey(name: 'fskModulationInfo')
  final GwFSKModulationInfo? fskModulationInfo;
  @JsonKey(name: 'loRaModulationInfo')
  final GwLoRaModulationInfo? loRaModulationInfo;
  @JsonKey(name: 'lrFHSSModulationInfo')
  final GwLRFHSSModulationInfo? lrFHSSModulationInfo;
  @JsonKey(
      name: 'modulation',
      toJson: commonModulationToJson,
      fromJson: commonModulationFromJson)
  final enums.CommonModulation? modulation;
  static const fromJsonFactory = _$GwUplinkTXInfoFromJson;
  static const toJsonFactory = _$GwUplinkTXInfoToJson;
  Map<String, dynamic> toJson() => _$GwUplinkTXInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GwUplinkTXInfo &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.fskModulationInfo, fskModulationInfo) ||
                const DeepCollectionEquality()
                    .equals(other.fskModulationInfo, fskModulationInfo)) &&
            (identical(other.loRaModulationInfo, loRaModulationInfo) ||
                const DeepCollectionEquality()
                    .equals(other.loRaModulationInfo, loRaModulationInfo)) &&
            (identical(other.lrFHSSModulationInfo, lrFHSSModulationInfo) ||
                const DeepCollectionEquality().equals(
                    other.lrFHSSModulationInfo, lrFHSSModulationInfo)) &&
            (identical(other.modulation, modulation) ||
                const DeepCollectionEquality()
                    .equals(other.modulation, modulation)));
  }
}

extension $GwUplinkTXInfoExtension on GwUplinkTXInfo {
  GwUplinkTXInfo copyWith(
      {int? frequency,
      GwFSKModulationInfo? fskModulationInfo,
      GwLoRaModulationInfo? loRaModulationInfo,
      GwLRFHSSModulationInfo? lrFHSSModulationInfo,
      enums.CommonModulation? modulation}) {
    return GwUplinkTXInfo(
        frequency: frequency ?? this.frequency,
        fskModulationInfo: fskModulationInfo ?? this.fskModulationInfo,
        loRaModulationInfo: loRaModulationInfo ?? this.loRaModulationInfo,
        lrFHSSModulationInfo: lrFHSSModulationInfo ?? this.lrFHSSModulationInfo,
        modulation: modulation ?? this.modulation);
  }
}

@JsonSerializable(explicitToJson: true)
class ProtobufAny {
  ProtobufAny({
    this.typeUrl,
    this.value,
  });

  factory ProtobufAny.fromJson(Map<String, dynamic> json) =>
      _$ProtobufAnyFromJson(json);

  @JsonKey(name: 'typeUrl')
  final String? typeUrl;
  @JsonKey(name: 'value')
  final String? value;
  static const fromJsonFactory = _$ProtobufAnyFromJson;
  static const toJsonFactory = _$ProtobufAnyToJson;
  Map<String, dynamic> toJson() => _$ProtobufAnyToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProtobufAny &&
            (identical(other.typeUrl, typeUrl) ||
                const DeepCollectionEquality()
                    .equals(other.typeUrl, typeUrl)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }
}

extension $ProtobufAnyExtension on ProtobufAny {
  ProtobufAny copyWith({String? typeUrl, String? value}) {
    return ProtobufAny(
        typeUrl: typeUrl ?? this.typeUrl, value: value ?? this.value);
  }
}

@JsonSerializable(explicitToJson: true)
class RuntimeError {
  RuntimeError({
    this.code,
    this.details,
    this.error,
    this.message,
  });

  factory RuntimeError.fromJson(Map<String, dynamic> json) =>
      _$RuntimeErrorFromJson(json);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'details', defaultValue: <ProtobufAny>[])
  final List<ProtobufAny>? details;
  @JsonKey(name: 'error')
  final String? error;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$RuntimeErrorFromJson;
  static const toJsonFactory = _$RuntimeErrorToJson;
  Map<String, dynamic> toJson() => _$RuntimeErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RuntimeError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }
}

extension $RuntimeErrorExtension on RuntimeError {
  RuntimeError copyWith(
      {int? code, List<ProtobufAny>? details, String? error, String? message}) {
    return RuntimeError(
        code: code ?? this.code,
        details: details ?? this.details,
        error: error ?? this.error,
        message: message ?? this.message);
  }
}

@JsonSerializable(explicitToJson: true)
class RuntimeStreamError {
  RuntimeStreamError({
    this.details,
    this.grpcCode,
    this.httpCode,
    this.httpStatus,
    this.message,
  });

  factory RuntimeStreamError.fromJson(Map<String, dynamic> json) =>
      _$RuntimeStreamErrorFromJson(json);

  @JsonKey(name: 'details', defaultValue: <ProtobufAny>[])
  final List<ProtobufAny>? details;
  @JsonKey(name: 'grpcCode')
  final int? grpcCode;
  @JsonKey(name: 'httpCode')
  final int? httpCode;
  @JsonKey(name: 'httpStatus')
  final String? httpStatus;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$RuntimeStreamErrorFromJson;
  static const toJsonFactory = _$RuntimeStreamErrorToJson;
  Map<String, dynamic> toJson() => _$RuntimeStreamErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RuntimeStreamError &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.grpcCode, grpcCode) ||
                const DeepCollectionEquality()
                    .equals(other.grpcCode, grpcCode)) &&
            (identical(other.httpCode, httpCode) ||
                const DeepCollectionEquality()
                    .equals(other.httpCode, httpCode)) &&
            (identical(other.httpStatus, httpStatus) ||
                const DeepCollectionEquality()
                    .equals(other.httpStatus, httpStatus)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }
}

extension $RuntimeStreamErrorExtension on RuntimeStreamError {
  RuntimeStreamError copyWith(
      {List<ProtobufAny>? details,
      int? grpcCode,
      int? httpCode,
      String? httpStatus,
      String? message}) {
    return RuntimeStreamError(
        details: details ?? this.details,
        grpcCode: grpcCode ?? this.grpcCode,
        httpCode: httpCode ?? this.httpCode,
        httpStatus: httpStatus ?? this.httpStatus,
        message: message ?? this.message);
  }
}

@JsonSerializable(explicitToJson: true)
class ApiDevicesDevEUIEventsGet$Response {
  ApiDevicesDevEUIEventsGet$Response({
    this.error,
    this.result,
  });

  factory ApiDevicesDevEUIEventsGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$ApiDevicesDevEUIEventsGet$ResponseFromJson(json);

  @JsonKey(name: 'error')
  final RuntimeStreamError? error;
  @JsonKey(name: 'result')
  final ExtapiStreamDeviceEventLogsResponse? result;
  static const fromJsonFactory = _$ApiDevicesDevEUIEventsGet$ResponseFromJson;
  static const toJsonFactory = _$ApiDevicesDevEUIEventsGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ApiDevicesDevEUIEventsGet$ResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiDevicesDevEUIEventsGet$Response &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }
}

extension $ApiDevicesDevEUIEventsGet$ResponseExtension
    on ApiDevicesDevEUIEventsGet$Response {
  ApiDevicesDevEUIEventsGet$Response copyWith(
      {RuntimeStreamError? error,
      ExtapiStreamDeviceEventLogsResponse? result}) {
    return ApiDevicesDevEUIEventsGet$Response(
        error: error ?? this.error, result: result ?? this.result);
  }
}

@JsonSerializable(explicitToJson: true)
class ApiDevicesDevEUIFramesGet$Response {
  ApiDevicesDevEUIFramesGet$Response({
    this.error,
    this.result,
  });

  factory ApiDevicesDevEUIFramesGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$ApiDevicesDevEUIFramesGet$ResponseFromJson(json);

  @JsonKey(name: 'error')
  final RuntimeStreamError? error;
  @JsonKey(name: 'result')
  final ExtapiStreamDeviceFrameLogsResponse? result;
  static const fromJsonFactory = _$ApiDevicesDevEUIFramesGet$ResponseFromJson;
  static const toJsonFactory = _$ApiDevicesDevEUIFramesGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ApiDevicesDevEUIFramesGet$ResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiDevicesDevEUIFramesGet$Response &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }
}

extension $ApiDevicesDevEUIFramesGet$ResponseExtension
    on ApiDevicesDevEUIFramesGet$Response {
  ApiDevicesDevEUIFramesGet$Response copyWith(
      {RuntimeStreamError? error,
      ExtapiStreamDeviceFrameLogsResponse? result}) {
    return ApiDevicesDevEUIFramesGet$Response(
        error: error ?? this.error, result: result ?? this.result);
  }
}

@JsonSerializable(explicitToJson: true)
class ApiGatewaysGatewayIDFramesGet$Response {
  ApiGatewaysGatewayIDFramesGet$Response({
    this.error,
    this.result,
  });

  factory ApiGatewaysGatewayIDFramesGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$ApiGatewaysGatewayIDFramesGet$ResponseFromJson(json);

  @JsonKey(name: 'error')
  final RuntimeStreamError? error;
  @JsonKey(name: 'result')
  final ExtapiStreamGatewayFrameLogsResponse? result;
  static const fromJsonFactory =
      _$ApiGatewaysGatewayIDFramesGet$ResponseFromJson;
  static const toJsonFactory = _$ApiGatewaysGatewayIDFramesGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ApiGatewaysGatewayIDFramesGet$ResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiGatewaysGatewayIDFramesGet$Response &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }
}

extension $ApiGatewaysGatewayIDFramesGet$ResponseExtension
    on ApiGatewaysGatewayIDFramesGet$Response {
  ApiGatewaysGatewayIDFramesGet$Response copyWith(
      {RuntimeStreamError? error,
      ExtapiStreamGatewayFrameLogsResponse? result}) {
    return ApiGatewaysGatewayIDFramesGet$Response(
        error: error ?? this.error, result: result ?? this.result);
  }
}

@JsonSerializable(explicitToJson: true)
class ApiReportMiningIncomeCsvGet$Response {
  ApiReportMiningIncomeCsvGet$Response({
    this.error,
    this.result,
  });

  factory ApiReportMiningIncomeCsvGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$ApiReportMiningIncomeCsvGet$ResponseFromJson(json);

  @JsonKey(name: 'error')
  final RuntimeStreamError? error;
  @JsonKey(name: 'result')
  final ExtapiMiningReportResponse? result;
  static const fromJsonFactory = _$ApiReportMiningIncomeCsvGet$ResponseFromJson;
  static const toJsonFactory = _$ApiReportMiningIncomeCsvGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ApiReportMiningIncomeCsvGet$ResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiReportMiningIncomeCsvGet$Response &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }
}

extension $ApiReportMiningIncomeCsvGet$ResponseExtension
    on ApiReportMiningIncomeCsvGet$Response {
  ApiReportMiningIncomeCsvGet$Response copyWith(
      {RuntimeStreamError? error, ExtapiMiningReportResponse? result}) {
    return ApiReportMiningIncomeCsvGet$Response(
        error: error ?? this.error, result: result ?? this.result);
  }
}

@JsonSerializable(explicitToJson: true)
class ApiReportMiningIncomePdfGet$Response {
  ApiReportMiningIncomePdfGet$Response({
    this.error,
    this.result,
  });

  factory ApiReportMiningIncomePdfGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$ApiReportMiningIncomePdfGet$ResponseFromJson(json);

  @JsonKey(name: 'error')
  final RuntimeStreamError? error;
  @JsonKey(name: 'result')
  final ExtapiMiningReportResponse? result;
  static const fromJsonFactory = _$ApiReportMiningIncomePdfGet$ResponseFromJson;
  static const toJsonFactory = _$ApiReportMiningIncomePdfGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ApiReportMiningIncomePdfGet$ResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiReportMiningIncomePdfGet$Response &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }
}

extension $ApiReportMiningIncomePdfGet$ResponseExtension
    on ApiReportMiningIncomePdfGet$Response {
  ApiReportMiningIncomePdfGet$Response copyWith(
      {RuntimeStreamError? error, ExtapiMiningReportResponse? result}) {
    return ApiReportMiningIncomePdfGet$Response(
        error: error ?? this.error, result: result ?? this.result);
  }
}

String? commonLocationSourceToJson(
    enums.CommonLocationSource? commonLocationSource) {
  return enums.$CommonLocationSourceMap[commonLocationSource];
}

enums.CommonLocationSource commonLocationSourceFromJson(
    String? commonLocationSource) {
  if (commonLocationSource == null) {
    return enums.CommonLocationSource.swaggerGeneratedUnknown;
  }

  return enums.$CommonLocationSourceMap.entries
      .firstWhere(
          (element) =>
              element.value.toLowerCase() == commonLocationSource.toLowerCase(),
          orElse: () => const MapEntry(
              enums.CommonLocationSource.swaggerGeneratedUnknown, ''))
      .key;
}

List<String> commonLocationSourceListToJson(
    List<enums.CommonLocationSource>? commonLocationSource) {
  if (commonLocationSource == null) {
    return [];
  }

  return commonLocationSource
      .map((e) => enums.$CommonLocationSourceMap[e]!)
      .toList();
}

List<enums.CommonLocationSource> commonLocationSourceListFromJson(
    List? commonLocationSource) {
  if (commonLocationSource == null) {
    return [];
  }

  return commonLocationSource
      .map((e) => commonLocationSourceFromJson(e.toString()))
      .toList();
}

String? commonModulationToJson(enums.CommonModulation? commonModulation) {
  return enums.$CommonModulationMap[commonModulation];
}

enums.CommonModulation commonModulationFromJson(String? commonModulation) {
  if (commonModulation == null) {
    return enums.CommonModulation.swaggerGeneratedUnknown;
  }

  return enums.$CommonModulationMap.entries
      .firstWhere(
          (element) =>
              element.value.toLowerCase() == commonModulation.toLowerCase(),
          orElse: () => const MapEntry(
              enums.CommonModulation.swaggerGeneratedUnknown, ''))
      .key;
}

List<String> commonModulationListToJson(
    List<enums.CommonModulation>? commonModulation) {
  if (commonModulation == null) {
    return [];
  }

  return commonModulation.map((e) => enums.$CommonModulationMap[e]!).toList();
}

List<enums.CommonModulation> commonModulationListFromJson(
    List? commonModulation) {
  if (commonModulation == null) {
    return [];
  }

  return commonModulation
      .map((e) => commonModulationFromJson(e.toString()))
      .toList();
}

String? extapiRatePolicyToJson(enums.ExtapiRatePolicy? extapiRatePolicy) {
  return enums.$ExtapiRatePolicyMap[extapiRatePolicy];
}

enums.ExtapiRatePolicy extapiRatePolicyFromJson(String? extapiRatePolicy) {
  if (extapiRatePolicy == null) {
    return enums.ExtapiRatePolicy.swaggerGeneratedUnknown;
  }

  return enums.$ExtapiRatePolicyMap.entries
      .firstWhere(
          (element) =>
              element.value.toLowerCase() == extapiRatePolicy.toLowerCase(),
          orElse: () => const MapEntry(
              enums.ExtapiRatePolicy.swaggerGeneratedUnknown, ''))
      .key;
}

List<String> extapiRatePolicyListToJson(
    List<enums.ExtapiRatePolicy>? extapiRatePolicy) {
  if (extapiRatePolicy == null) {
    return [];
  }

  return extapiRatePolicy.map((e) => enums.$ExtapiRatePolicyMap[e]!).toList();
}

List<enums.ExtapiRatePolicy> extapiRatePolicyListFromJson(
    List? extapiRatePolicy) {
  if (extapiRatePolicy == null) {
    return [];
  }

  return extapiRatePolicy
      .map((e) => extapiRatePolicyFromJson(e.toString()))
      .toList();
}

String? gwCRCStatusToJson(enums.GwCRCStatus? gwCRCStatus) {
  return enums.$GwCRCStatusMap[gwCRCStatus];
}

enums.GwCRCStatus gwCRCStatusFromJson(String? gwCRCStatus) {
  if (gwCRCStatus == null) {
    return enums.GwCRCStatus.swaggerGeneratedUnknown;
  }

  return enums.$GwCRCStatusMap.entries
      .firstWhere(
          (element) => element.value.toLowerCase() == gwCRCStatus.toLowerCase(),
          orElse: () =>
              const MapEntry(enums.GwCRCStatus.swaggerGeneratedUnknown, ''))
      .key;
}

List<String> gwCRCStatusListToJson(List<enums.GwCRCStatus>? gwCRCStatus) {
  if (gwCRCStatus == null) {
    return [];
  }

  return gwCRCStatus.map((e) => enums.$GwCRCStatusMap[e]!).toList();
}

List<enums.GwCRCStatus> gwCRCStatusListFromJson(List? gwCRCStatus) {
  if (gwCRCStatus == null) {
    return [];
  }

  return gwCRCStatus.map((e) => gwCRCStatusFromJson(e.toString())).toList();
}

String? gwDownlinkTimingToJson(enums.GwDownlinkTiming? gwDownlinkTiming) {
  return enums.$GwDownlinkTimingMap[gwDownlinkTiming];
}

enums.GwDownlinkTiming gwDownlinkTimingFromJson(String? gwDownlinkTiming) {
  if (gwDownlinkTiming == null) {
    return enums.GwDownlinkTiming.swaggerGeneratedUnknown;
  }

  return enums.$GwDownlinkTimingMap.entries
      .firstWhere(
          (element) =>
              element.value.toLowerCase() == gwDownlinkTiming.toLowerCase(),
          orElse: () => const MapEntry(
              enums.GwDownlinkTiming.swaggerGeneratedUnknown, ''))
      .key;
}

List<String> gwDownlinkTimingListToJson(
    List<enums.GwDownlinkTiming>? gwDownlinkTiming) {
  if (gwDownlinkTiming == null) {
    return [];
  }

  return gwDownlinkTiming.map((e) => enums.$GwDownlinkTimingMap[e]!).toList();
}

List<enums.GwDownlinkTiming> gwDownlinkTimingListFromJson(
    List? gwDownlinkTiming) {
  if (gwDownlinkTiming == null) {
    return [];
  }

  return gwDownlinkTiming
      .map((e) => gwDownlinkTimingFromJson(e.toString()))
      .toList();
}

String? gwFineTimestampTypeToJson(
    enums.GwFineTimestampType? gwFineTimestampType) {
  return enums.$GwFineTimestampTypeMap[gwFineTimestampType];
}

enums.GwFineTimestampType gwFineTimestampTypeFromJson(
    String? gwFineTimestampType) {
  if (gwFineTimestampType == null) {
    return enums.GwFineTimestampType.swaggerGeneratedUnknown;
  }

  return enums.$GwFineTimestampTypeMap.entries
      .firstWhere(
          (element) =>
              element.value.toLowerCase() == gwFineTimestampType.toLowerCase(),
          orElse: () => const MapEntry(
              enums.GwFineTimestampType.swaggerGeneratedUnknown, ''))
      .key;
}

List<String> gwFineTimestampTypeListToJson(
    List<enums.GwFineTimestampType>? gwFineTimestampType) {
  if (gwFineTimestampType == null) {
    return [];
  }

  return gwFineTimestampType
      .map((e) => enums.$GwFineTimestampTypeMap[e]!)
      .toList();
}

List<enums.GwFineTimestampType> gwFineTimestampTypeListFromJson(
    List? gwFineTimestampType) {
  if (gwFineTimestampType == null) {
    return [];
  }

  return gwFineTimestampType
      .map((e) => gwFineTimestampTypeFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
