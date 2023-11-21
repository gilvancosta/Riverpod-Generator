import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/counter_provider.dart';
import 'providers/theme_provider.dart';

class CounterPage extends ConsumerWidget {
  static const titlePage = 'Counter Page';

  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider1);

    return Scaffold(
        appBar: AppBar(
          title: const Text(titlePage),
          actions: [
            IconButton(
              icon: Icon(isDarkMode
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined),
              onPressed: () {
                ref.read(isDarkModeProvider1.notifier).update((state) => !state);
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button this many times:'),
              Text(
                ' Valor: ${counter.toString()}',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print('FloatingActionButton onPressed');

            ref.read(counterProvider.notifier).state++;

            // ref.read(counterProvider.notifier).update((state) => state++);
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}
