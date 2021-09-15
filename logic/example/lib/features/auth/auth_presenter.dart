import 'package:example/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mxc_logic/mxc_logic.dart';

typedef ActionsProvider = ProviderBase<AuthPresenter>;
typedef CurrentProvider = DisposablePresenterProvider<AuthPresenter, AuthState>;

@immutable
class AuthState {
  final List<Supernode>? supernodes;
  final Supernode? pickedSupernode;
  final bool loggedIn;

  const AuthState({
    this.supernodes,
    this.pickedSupernode,
    this.loggedIn = false,
  });

  AuthState copyWith({
    List<Supernode>? supernodes,
    Supernode? pickedSupernode,
    bool? loggedIn,
  }) =>
      AuthState(
        supernodes: supernodes ?? this.supernodes,
        pickedSupernode: pickedSupernode ?? this.pickedSupernode,
        loggedIn: loggedIn ?? this.loggedIn,
      );

  AuthState resetSupernode() => AuthState(
        supernodes: supernodes,
        pickedSupernode: null,
        loggedIn: loggedIn,
      );
}

class AuthPresenter extends StateNotifier<AuthState> {
  AuthPresenter(this._ref) : super(const AuthState());

  static final CurrentProvider store =
      CurrentProvider((ref) => AuthPresenter(ref)..initState());

  static ActionsProvider get actions => store.notifier;

  final ProviderRefBase _ref;

  AuthUseCase get _useCase => _ref.read(authUseCaseProvider);
  NavigatorState get _navigator => _ref.read(navigatorProvider);

  Future<void> initState() async {
    state = state.copyWith(loggedIn: _useCase.loggedIn());
    if (state.loggedIn) return;
    final supernodes = await _useCase.listSupernodes();
    state = state.copyWith(
      supernodes: supernodes.values.expand((e) => e).toList(),
    );
  }

  void pickSupernode(Supernode? supernode) =>
      state = state.copyWith(pickedSupernode: supernode);

  void resetSupernode() => state = state.resetSupernode();

  Future<void> login(String username, String password) async {
    await _useCase.login(state.pickedSupernode!.url, username, password);
    _navigator.pop();
  }

  void logOut() {
    _useCase.logOut();
    _navigator.pop();
  }
}
