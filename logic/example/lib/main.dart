import 'package:example/features/pick_feature/pick_feature_page.dart';
import 'package:example/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  await loadProviders(_navigatorKey);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: _navigatorKey,
      home: const PickFeaturePage(),
    );
  }
}
