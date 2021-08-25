import 'package:example/features/pick_feature/pick_feature_presenter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PickFeaturePage extends ConsumerWidget {
  const PickFeaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loggedIn = ref.watch(PickFeaturePresenter.store).loggedIn;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick feature'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pick feature',
            ),
            TextButton(
              onPressed: ref.read(PickFeaturePresenter.actions).openAuthFeature,
              child: const Text('Authentication feature'),
            ),
            TextButton(
              onPressed: loggedIn
                  ? ref.read(PickFeaturePresenter.actions).openDeviceFeature
                  : null,
              child: Text(
                loggedIn
                    ? 'Device feature'
                    : 'Device feature (authentication required)',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
