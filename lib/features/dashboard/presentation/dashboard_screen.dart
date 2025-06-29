import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../main.dart';

class DashboardScreen extends HookConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // We can use hooks inside HookConsumerWidget
    final counter = useState(0);

    final String value = ref.watch(helloWorldProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Example')),
      body: Center(child: Text('$value ${counter.value}')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value++;
        },
        tooltip: 'Increment!',
        child: const Icon(Icons.add),
      ),
    );
  }
}
