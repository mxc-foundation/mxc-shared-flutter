import 'package:example/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mxc_logic/mxc_logic.dart';

import 'device_use_case.dart';

typedef ActionsProvider = ProviderBase<DevicePresenter>;
typedef CurrentProvider
    = DisposablePresenterProvider<DevicePresenter, DeviceState>;

@immutable
class DeviceState {
  final ListWithTotal<Device>? devices;

  const DeviceState({this.devices});

  DeviceState copyWith({
    ListWithTotal<Device>? devices,
  }) =>
      DeviceState(
        devices: devices ?? this.devices,
      );
}

class DevicePresenter extends StateNotifier<DeviceState> {
  DevicePresenter(this._ref) : super(const DeviceState());

  static final CurrentProvider store =
      CurrentProvider((ref) => DevicePresenter(ref)..initState());

  static ActionsProvider get actions => store.notifier;

  final Ref _ref;

  DeviceUseCase get _useCase => _ref.read(deviceUseCaseProvider);

  Future<void> initState() async {
    final devices = await _useCase.listDevices();
    state = state.copyWith(devices: devices);
  }

  Future<void> search(String value) async {
    final devices =
        await _useCase.listDevices(search: value.isEmpty ? null : value);
    state = state.copyWith(devices: devices);
  }
}
