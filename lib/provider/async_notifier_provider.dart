import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../common/utils/utils.dart';

part 'async_notifier_provider.g.dart';

/*
  FutureProvider - 함수형 / AsyncNotifier - 클래스형 차이
  state,메소드 사용차이가 있음
 */
final counterAsyncNotifierProvider =
    AsyncNotifierProvider<CounterAsyncNotifier, int>(
  CounterAsyncNotifier.new,
);

class CounterAsyncNotifier extends AsyncNotifier<int> {
  @override
  FutureOr<int> build() async {
    await delay(const Duration(milliseconds: 1000));
    return 10;
  }

  void increment() {
    int value = state.value ?? 0;
    value = value + 1;
    state = AsyncValue.data(value);
  }

  void decrement() {
    int value = state.value ?? 0;
    value = value - 1;
    state = AsyncValue.data(value);
  }
}

@riverpod
class CounterAsyncNotifierGenerator extends _$CounterAsyncNotifierGenerator {
  @override
  Future<int> build() async {
    await delay(const Duration(milliseconds: 1000));
    return 10;
  }

  void increment() {
    int value = state.value ?? 0;
    value = value + 1;
    state = AsyncValue.data(value);
  }

  void decrement() {
    int value = state.value ?? 0;
    value = value - 1;
    state = AsyncValue.data(value);
  }

}
