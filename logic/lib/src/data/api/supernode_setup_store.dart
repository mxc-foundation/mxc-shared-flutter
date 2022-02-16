import 'dart:async';

import 'package:meta/meta.dart';
import 'package:mxc_logic/internal.dart';
import 'package:mxc_logic/mxc_logic.dart';

abstract class SupernodeSetupStore implements GlobalCacheStore {
  factory SupernodeSetupStore() = SupernodeSetupStoreImpl;

  String? get username;
  @internal
  set username(String? username);

  String? get token;
  @internal
  set token(String? token);

  String? get supernodeAddress;
  @internal
  set supernodeAddress(String? value);

  String? get organizationId;
  @internal
  set organizationId(String? value);

  void clean();
}

class SupernodeSetupStoreImpl extends GlobalCacheStore
    implements SupernodeSetupStore {
  @override
  String get zone => 'supernode-setup';

  late final Field<String?> _username = field('username');
  late final Field<String?> _password = field('password');
  late final Field<String?> _supernodeAddress = field('supernode-address');
  late final Field<String?> _token = field('token');
  late final Field<String?> _organizationId = field('organizationId');

  @override
  String? get username => _username.value;
  @override
  set username(String? username) => _username.value = username;

  @override
  String? get supernodeAddress => _supernodeAddress.value;

  @override
  set supernodeAddress(String? value) => _supernodeAddress.value = value;

  @override
  String? get organizationId => _organizationId.value;

  @override
  set organizationId(String? value) => _organizationId.value = value;

  @override
  String? get token => _token.value;

  @override
  set token(String? value) => _token.value = value;

  @override
  Future<void> clean() => cleanFields([
        _username,
        _password,
        _supernodeAddress,
        _token,
      ]);
}
