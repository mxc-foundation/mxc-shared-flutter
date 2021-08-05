import 'package:json_annotation/json_annotation.dart';

enum CommonLocationSource {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('UNKNOWN')
  unknown,
  @JsonValue('GPS')
  gps,
  @JsonValue('CONFIG')
  config,
  @JsonValue('GEO_RESOLVER_TDOA')
  geoResolverTdoa,
  @JsonValue('GEO_RESOLVER_RSSI')
  geoResolverRssi,
  @JsonValue('GEO_RESOLVER_GNSS')
  geoResolverGnss,
  @JsonValue('GEO_RESOLVER_WIFI')
  geoResolverWifi
}

const $CommonLocationSourceMap = {
  CommonLocationSource.unknown: 'UNKNOWN',
  CommonLocationSource.gps: 'GPS',
  CommonLocationSource.config: 'CONFIG',
  CommonLocationSource.geoResolverTdoa: 'GEO_RESOLVER_TDOA',
  CommonLocationSource.geoResolverRssi: 'GEO_RESOLVER_RSSI',
  CommonLocationSource.geoResolverGnss: 'GEO_RESOLVER_GNSS',
  CommonLocationSource.geoResolverWifi: 'GEO_RESOLVER_WIFI',
  CommonLocationSource.swaggerGeneratedUnknown: ''
};

enum CommonModulation {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('LORA')
  lora,
  @JsonValue('FSK')
  fsk,
  @JsonValue('LR_FHSS')
  lrFhss
}

const $CommonModulationMap = {
  CommonModulation.lora: 'LORA',
  CommonModulation.fsk: 'FSK',
  CommonModulation.lrFhss: 'LR_FHSS',
  CommonModulation.swaggerGeneratedUnknown: ''
};

enum ExtapiDeviceMode {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('DV_INACTIVE')
  dvInactive,
  @JsonValue('DV_FREE_GATEWAYS_LIMITED')
  dvFreeGatewaysLimited,
  @JsonValue('DV_WHOLE_NETWORK')
  dvWholeNetwork,
  @JsonValue('DV_DELETED')
  dvDeleted
}

const $ExtapiDeviceModeMap = {
  ExtapiDeviceMode.dvInactive: 'DV_INACTIVE',
  ExtapiDeviceMode.dvFreeGatewaysLimited: 'DV_FREE_GATEWAYS_LIMITED',
  ExtapiDeviceMode.dvWholeNetwork: 'DV_WHOLE_NETWORK',
  ExtapiDeviceMode.dvDeleted: 'DV_DELETED',
  ExtapiDeviceMode.swaggerGeneratedUnknown: ''
};

enum ExtapiFUOTADeploymentDeviceState {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('PENDING')
  pending,
  @JsonValue('SUCCESS')
  success,
  @JsonValue('ERROR')
  error
}

const $ExtapiFUOTADeploymentDeviceStateMap = {
  ExtapiFUOTADeploymentDeviceState.pending: 'PENDING',
  ExtapiFUOTADeploymentDeviceState.success: 'SUCCESS',
  ExtapiFUOTADeploymentDeviceState.error: 'ERROR',
  ExtapiFUOTADeploymentDeviceState.swaggerGeneratedUnknown: ''
};

enum ExtapiGatewayMode {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('GW_INACTIVE')
  gwInactive,
  @JsonValue('GW_FREE_GATEWAYS_LIMITED')
  gwFreeGatewaysLimited,
  @JsonValue('GW_WHOLE_NETWORK')
  gwWholeNetwork,
  @JsonValue('GW_DELETED')
  gwDeleted
}

const $ExtapiGatewayModeMap = {
  ExtapiGatewayMode.gwInactive: 'GW_INACTIVE',
  ExtapiGatewayMode.gwFreeGatewaysLimited: 'GW_FREE_GATEWAYS_LIMITED',
  ExtapiGatewayMode.gwWholeNetwork: 'GW_WHOLE_NETWORK',
  ExtapiGatewayMode.gwDeleted: 'GW_DELETED',
  ExtapiGatewayMode.swaggerGeneratedUnknown: ''
};

enum ExtapiInfluxDBPrecision {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('NS')
  ns,
  @JsonValue('U')
  u,
  @JsonValue('MS')
  ms,
  @JsonValue('S')
  s,
  @JsonValue('M')
  m,
  @JsonValue('H')
  h
}

const $ExtapiInfluxDBPrecisionMap = {
  ExtapiInfluxDBPrecision.ns: 'NS',
  ExtapiInfluxDBPrecision.u: 'U',
  ExtapiInfluxDBPrecision.ms: 'MS',
  ExtapiInfluxDBPrecision.s: 'S',
  ExtapiInfluxDBPrecision.m: 'M',
  ExtapiInfluxDBPrecision.h: 'H',
  ExtapiInfluxDBPrecision.swaggerGeneratedUnknown: ''
};

enum ExtapiIntegrationKind {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('HTTP')
  http,
  @JsonValue('INFLUXDB')
  influxdb,
  @JsonValue('THINGSBOARD')
  thingsboard,
  @JsonValue('MYDEVICES')
  mydevices,
  @JsonValue('LORACLOUD')
  loracloud
}

const $ExtapiIntegrationKindMap = {
  ExtapiIntegrationKind.http: 'HTTP',
  ExtapiIntegrationKind.influxdb: 'INFLUXDB',
  ExtapiIntegrationKind.thingsboard: 'THINGSBOARD',
  ExtapiIntegrationKind.mydevices: 'MYDEVICES',
  ExtapiIntegrationKind.loracloud: 'LORACLOUD',
  ExtapiIntegrationKind.swaggerGeneratedUnknown: ''
};

enum ExtapiMulticastGroupType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('CLASS_C')
  classC,
  @JsonValue('CLASS_B')
  classB
}

const $ExtapiMulticastGroupTypeMap = {
  ExtapiMulticastGroupType.classC: 'CLASS_C',
  ExtapiMulticastGroupType.classB: 'CLASS_B',
  ExtapiMulticastGroupType.swaggerGeneratedUnknown: ''
};

enum ExtapiRatePolicy {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('DROP')
  drop,
  @JsonValue('MARK')
  mark
}

const $ExtapiRatePolicyMap = {
  ExtapiRatePolicy.drop: 'DROP',
  ExtapiRatePolicy.mark: 'MARK',
  ExtapiRatePolicy.swaggerGeneratedUnknown: ''
};

enum GwCRCStatus {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('NO_CRC')
  noCrc,
  @JsonValue('BAD_CRC')
  badCrc,
  @JsonValue('CRC_OK')
  crcOk
}

const $GwCRCStatusMap = {
  GwCRCStatus.noCrc: 'NO_CRC',
  GwCRCStatus.badCrc: 'BAD_CRC',
  GwCRCStatus.crcOk: 'CRC_OK',
  GwCRCStatus.swaggerGeneratedUnknown: ''
};

enum GwDownlinkTiming {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('IMMEDIATELY')
  immediately,
  @JsonValue('DELAY')
  delay,
  @JsonValue('GPS_EPOCH')
  gpsEpoch
}

const $GwDownlinkTimingMap = {
  GwDownlinkTiming.immediately: 'IMMEDIATELY',
  GwDownlinkTiming.delay: 'DELAY',
  GwDownlinkTiming.gpsEpoch: 'GPS_EPOCH',
  GwDownlinkTiming.swaggerGeneratedUnknown: ''
};

enum GwFineTimestampType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('NONE')
  none,
  @JsonValue('ENCRYPTED')
  encrypted,
  @JsonValue('PLAIN')
  plain
}

const $GwFineTimestampTypeMap = {
  GwFineTimestampType.none: 'NONE',
  GwFineTimestampType.encrypted: 'ENCRYPTED',
  GwFineTimestampType.plain: 'PLAIN',
  GwFineTimestampType.swaggerGeneratedUnknown: ''
};
