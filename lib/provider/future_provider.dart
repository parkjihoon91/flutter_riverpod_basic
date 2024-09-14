import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../common/utils/utils.dart';

part 'future_provider.g.dart';

// 기존 FutureProvider - 함수형
final counterFutureProvider = FutureProvider<int>((ref) async {
  await delay(const Duration(milliseconds: 1000));
  return 10;
});

// generator 방식
@riverpod
Future<int> counterFutureGenerator(CounterFutureGeneratorRef ref) async {
  await delay(const Duration(milliseconds: 1000));
  return 10;
}

// Family - generator 를 사용할 경우 여러 파라미터 사용 가능
@riverpod
Future<int> counterFutureGeneratorFamily(
  CounterFutureGeneratorFamilyRef ref,
  int a,
  int b,
) async {
  return 10;
}
