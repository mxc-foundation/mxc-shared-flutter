import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';

void utils;

extension StringMapper on String? {
  double toDouble([String defaultValue = '0']) =>
      double.parse(this ?? defaultValue);

  int toInt([String defaultValue = '0']) => int.parse(this ?? defaultValue);

  Decimal toDecimal([String defaultValue = '0']) =>
      Decimal.parse(this ?? defaultValue);

  String orDefault() => this ?? '';
}

extension NumMapper on num? {
  T orDefault<T extends num>() => 0 as T;
}

extension BooleanMapper on bool? {
  bool orDefault() => false;
}

extension LocationMapper on CommonLocation? {
  Location? toDomain() => this?.latitude == null || this?.longitude == null
      ? null
      : Location(this!.latitude!, this!.longitude!);
}

extension FramesIntervalMapper on FramesInterval {
  String toData() {
    switch (this) {
      case FramesInterval.day:
        return "DAY";
    }
  }
}

extension TokenMapper on Token {
  String toData() {
    switch (this) {
      case Token.supernodeDhx:
        return 'DHX';
      case Token.parachainDhx:
        return 'DHX';
      case Token.mxc:
        return 'MXC';
      case Token.btc:
        return 'BTC';
      case Token.nft:
        return 'NFT';
    }
  }
}

extension DateTimeMapper on DateTime {
  String toData() => toUtc().toIso8601String();
}
