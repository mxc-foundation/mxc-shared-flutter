// applicationID (string, optional): Application ID. ,
// description (string, optional): Description of the device. ,
// devEUI (string, optional): Device EUI (HEX encoded). ,
// deviceProfileID (string, optional): Device-profile ID attached to the device. ,
// deviceProfileName (string, optional): Device-profile name. ,
// deviceStatusBattery (integer, optional): The device battery status (deprecated, use device_status_battery_level). 0: The end-device is connected to an external power source 1..254: The battery level, 1 being at minimum and 254 being at maximum 255: The end-device was not able to measure the battery level 256: The device-status is not available. ,
// deviceStatusBatteryLevel (number, optional): Device battery level as a percentage. ,
// deviceStatusBatteryLevelUnavailable (boolean, optional): Device battery status is unavailable. ,
// deviceStatusExternalPowerSource (boolean, optional): Device is connected to an external power source. ,
// deviceStatusMargin (integer, optional): The device margin status -32..32: The demodulation SNR ration in dB 256: The device-status is not available. ,
// lastSeenAt (string, optional): The last time the application-server received any data from the device, or an empty string when the device never sent any data. ,
// name (string, optional): Name of the device.

class Device {
  final String? applicationID;
  final String? description;
  final String? devEUI;
  final String? deviceProfileID;
  final String? deviceProfileName;
  final int? deviceStatusBattery;
  final double? deviceStatusBatteryLevel;
  final bool? deviceStatusBatteryLevelUnavailable;
  final bool? deviceStatusExternalPowerSource;
  final int? deviceStatusMargin;
  final DateTime? lastSeen;
  String? name;

  Device({
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
    this.lastSeen,
    this.name
  });
}
