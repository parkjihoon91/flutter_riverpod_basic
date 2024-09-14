import 'package:flutter_riverpod_basic/common/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stream_provider.g.dart';

final counterStreamProvider = StreamProvider<int>(
  (ref) async* {
    for (int i = 0; i < 100; i++) {
      await delay(const Duration(milliseconds: 1000));
      yield i;
    }
  },
);

@riverpod
Stream<int> counterStreamGenerator(CounterStreamGeneratorRef ref) async* {
  for (int i = 0; i < 100; i++) {
    await delay(const Duration(milliseconds: 1000));
    yield i;
  }
}
