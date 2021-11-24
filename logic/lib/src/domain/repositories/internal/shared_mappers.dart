import 'package:decimal/decimal.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/repositories/internal/jwt_parser.dart';

void utils;

extension StringMapper on String? {
  String? get _emptyToNull => (this?.isEmpty ?? false) ? null : this;

  double toDouble([String defaultValue = '0']) =>
      double.parse(_emptyToNull ?? defaultValue);

  int toInt([String defaultValue = '0']) =>
      int.parse(_emptyToNull ?? defaultValue);

  Decimal toDecimal([String defaultValue = '0']) =>
      Decimal.parse(_emptyToNull ?? defaultValue);

  DateTime? toDateTime() => _emptyToNull == null ? null : DateTime.parse(this!);

  String orDefault() => this ?? '';
}

extension NumMapper on num? {
  T orDefault<T extends num>() {
    if (this != null) return this! as T;
    if (T == double) {
      return 0.0 as T;
    }
    return 0 as T;
  }
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
        return 'DAY';
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
        return 'ETH_MXC';
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

extension ExternalAccountTypeMapper on ExternalAccountType {
  String toData() {
    switch (this) {
      case ExternalAccountType.wechat:
        return 'wechat';
      case ExternalAccountType.shopify:
        return 'shopify';
      case ExternalAccountType.unknown:
        throw Exception('Unknown external type passed');
    }
  }
}

abstract class Mappers {
  static SupernodeTokenDetails stringToSupernodeJwt(String jwt) {
    final parsedJwt = parseJwt(jwt);
    final userId = parsedJwt['userId'].toString();
    final username = parsedJwt['username'] as String;
    return SupernodeTokenDetails(userId, username, jwt);
  }

  static ExternalAccountType stringToExternalAccountType(String type) {
    switch (type) {
      case 'wechat':
        return ExternalAccountType.wechat;
      case 'shopify':
        return ExternalAccountType.shopify;
      default:
        return ExternalAccountType.unknown;
    }
  }

  static StakeHistoryType stringToStakeHistoryType(String? type) {
    switch (type) {
      case 'STAKING':
        return StakeHistoryType.staking;
      case 'UNSTAKING':
        return StakeHistoryType.unstaking;
      default:
        return StakeHistoryType.unknown;
    }
  }
}

abstract class Values {
  static final DateTime dateMin = DateTime(1);
  static final DateTime dateMax = DateTime(3000);
  static const int intMax = 9999999999;
}
