class Device {
  late final String applicationID;
  late final String name; // Name of the device.
  late final String deviceProfileID;
  late final String deviceProfileName;
  final String? description;
  late final String? devEUI;
  final int? deviceStatusBattery;
  final double? deviceStatusBatteryLevel;
  final bool? deviceStatusBatteryLevelUnavailable;
  final bool? deviceStatusExternalPowerSource;
  final int? deviceStatusMargin;
  final DateTime? lastSeen;

  Device({
    required this.applicationID,
    required this.name,
    required this.deviceProfileID,
    required this.deviceProfileName,
    this.description,
    this.devEUI,
    this.deviceStatusBattery,
    this.deviceStatusBatteryLevel,
    this.deviceStatusBatteryLevelUnavailable,
    this.deviceStatusExternalPowerSource,
    this.deviceStatusMargin,
    this.lastSeen,
  });

  // set deviceProfileID(String id){
  //   deviceProfileID = id;
  // }
}
