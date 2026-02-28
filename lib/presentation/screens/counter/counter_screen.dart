import 'package:collectionn_widgets/presentation/providers/counter_provider.dart';
import 'package:collectionn_widgets/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_river';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final isDark = ref.watch(isDarkProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Riverpod'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(isDarkProvider.notifier).update((isDark) => !isDark);
            },
            icon: Icon(
              isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('Valor: $counter', style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).state++,
        child: Icon(Icons.add),
      ),
    );
  }
}
