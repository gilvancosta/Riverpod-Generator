// ignore_for_file: avoid_print

import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../ui/pages/home/home_page.dart';

import '../../ui/pages/riverpod/counter/counter_page.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  print('appRouter!!!!');

  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/counter-river',
        name: CounterPage.titlePage,
        builder: (context, state) => const CounterPage(),
      ),
    ],
  );
}
