import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'device_presenter.dart';

class DevicePage extends HookConsumerWidget {
  const DevicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(DevicePresenter.store);
    final searchController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Devices')),
      body: Column(
        children: [
          TextField(
            controller: searchController,
            decoration: const InputDecoration(
              labelText: 'Search',
            ),
            onChanged: (s) => ref.read(DevicePresenter.actions).search(s),
          ),
          Expanded(
            child: state.devices == null
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: state.devices!.length,
                    itemBuilder: (ctx, i) => Row(
                      children: [
                        Expanded(child: Text(state.devices![i].name)),
                        Text(state.devices![i].lastSeen.toString()),
                      ],
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
