import 'package:example/features/auth/auth_page.dart';
import 'package:example/features/device/device_page.dart';
import 'package:example/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mxc_logic/mxc_logic.dart';

typedef CurrentProvider
    = StateNotifierProvider<PickFeaturePresenter, PickFeatureState>;
typedef ActionsProvider = ProviderBase<PickFeaturePresenter>;

@immutable
class PickFeatureState {
  final bool loggedIn;

  const PickFeatureState(this.loggedIn);
}

class PickFeaturePresenter extends StateNotifier<PickFeatureState> {
  PickFeaturePresenter(this._ref) : super(const PickFeatureState(false));

  static final CurrentProvider store =
      CurrentProvider((ref) => PickFeaturePresenter(ref)..refresh());

  static ActionsProvider get actions => store.notifier;

  final ProviderRefBase _ref;

  AuthUseCase get _authUseCase => _ref.read(authUseCaseProvider);

  NavigatorState get _navigator => _ref.read(navigatorProvider);

  void refresh() {
    state = PickFeatureState(_authUseCase.loggedIn());
  }

  Future<void> openAuthFeature() async {
    await _navigator
        .push(MaterialPageRoute(builder: (ctx) => const AuthPage()));
    refresh();
  }

  Future<void> openDeviceFeature() async {
    await _navigator
        .push(MaterialPageRoute(builder: (ctx) => const DevicePage()));
  }
}
