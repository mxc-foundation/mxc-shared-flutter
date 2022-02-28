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
