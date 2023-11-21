import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter2_provider.g.dart';

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleDarkMode() {
    state = !state;
  }
}