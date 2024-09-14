import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifier_provider.g.dart';

/*
  NotifierProvider / StateNotifierProvider
  클래스 안에서 ref 사용유무에서 차이가 난다
  앞으론 NotifierProvider 사용권장
 */

// 기존에 쓰던 StateNotifier 방식
final counterStateNotifierProvider =
    StateNotifierProvider<CounterStateNotifier, int>(
  (ref) => CounterStateNotifier(),
);

class CounterStateNotifier extends StateNotifier<int> {
  CounterStateNotifier() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

// Notifier 방식
final counterNotifierProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);

class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

// build() 함수의 리턴값 Future - AsyncNotifierProvider
// build() 함수의 리턴값 Stream - StreamNotifierProvider
// 외의 경우 대부분 - NotifierProvider

// autoDispose 를 원하지 않을때
// @Riverpod(keepAlive: true)
@riverpod
class CounterNotifierGenerator extends _$CounterNotifierGenerator {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }

}