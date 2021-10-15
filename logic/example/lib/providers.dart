import 'package:example/features/device/device_use_case.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mxc_logic/internal.dart';
import 'package:mxc_logic/mxc_logic.dart';

typedef DisposablePresenterProvider<Presenter extends StateNotifier<State>,
        State>
    = AutoDisposeStateNotifierProvider<Presenter, State>;

typedef PresenterProvider<Presenter extends StateNotifier<State>, State>
    = StateNotifierProvider<Presenter, State>;

late final Provider<CacheManager> cacheManagerProvider;
late final Provider<SupernodeRepository> supernodeRepositoryProvider;
late final Provider<AuthenticationRepository> authenticationRepositoryProvider;
late final Provider<NavigatorState> navigatorProvider;

Provider<LoginUseCase> authUseCaseProvider = Provider((ref) => LoginUseCase(
      ref.watch(supernodeRepositoryProvider),
      ref.watch(authenticationRepositoryProvider),
    ));

Provider<DeviceUseCase> deviceUseCaseProvider = Provider((ref) => DeviceUseCase(
      ref.watch(supernodeRepositoryProvider),
    ));

Future<void> loadProviders(GlobalKey<NavigatorState> navigatorKey) async {
  final cacheManager = await CacheManager.load();
  final supernodeSetupStore = SupernodeSetupStore();
  await supernodeSetupStore.load(cacheManager);
  final tokenRefresher = TokenRefresher(supernodeSetupStore);
  final supernodeRepository = ApiSupernodeRepository(
    setupStore: supernodeSetupStore,
    tokenRefresher: tokenRefresher,
  );

  final supernodeCacheController = CacheController(cacheManager, 'supernode');

  cacheManagerProvider = Provider(
    (ref) => cacheManager,
  );
  authenticationRepositoryProvider = Provider(
    (ref) => AuthenticationRepository(
      supernodeSetupStore,
      supernodeCacheController,
    ),
  );
  supernodeRepositoryProvider = Provider(
    (ref) => supernodeRepository,
  );
  navigatorProvider = Provider(
    (ref) => navigatorKey.currentState!,
  );
}
