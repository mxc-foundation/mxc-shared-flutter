class Device {
  final String applicationID;

  /// Name of the device.
  final String name;
  final String deviceProfileID;
  final String deviceProfileName;
  final String? description;
  final String? devEUI;
  final int? deviceStatusBattery;
  final double? deviceStatusBatteryLevel;
  final bool? deviceStatusBatteryLevelUnavailable;
  final bool? deviceStatusExternalPowerSource;
  final int? deviceStatusMargin;
  final DateTime? lastSeen;

  Device(
      {required this.applicationID,
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
      this.lastSeen});
}
