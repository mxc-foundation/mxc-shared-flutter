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
late final Provider<SupernodeSetupRepository> supernodeSetupRepositoryProvider;
late final Provider<NavigatorState> navigatorProvider;

Provider<AuthUseCase> authUseCaseProvider = Provider((ref) => AuthUseCase(
      ref.watch(supernodeRepositoryProvider),
      ref.watch(supernodeSetupRepositoryProvider),
    ));

Provider<DeviceUseCase> deviceUseCaseProvider = Provider((ref) => DeviceUseCase(
      ref.watch(supernodeRepositoryProvider),
    ));

Future<void> loadProviders(GlobalKey<NavigatorState> navigatorKey) async {
  final cacheManager = await CacheManager.load();
  final supernodeSetupRepository =
      await SupernodeSetupRepository.load(cacheManager);
  final tokenRefresher = TokenRefresher(supernodeSetupRepository);
  final supernodeRepository = ApiSupernodeRepository(
    setupRepository: supernodeSetupRepository,
    tokenRefresher: tokenRefresher,
  );

  cacheManagerProvider = Provider(
    (ref) => cacheManager,
  );
  supernodeSetupRepositoryProvider = Provider(
    (ref) => supernodeSetupRepository,
  );
  supernodeRepositoryProvider = Provider(
    (ref) => supernodeRepository,
  );
  navigatorProvider = Provider(
    (ref) => navigatorKey.currentState!,
  );
}
