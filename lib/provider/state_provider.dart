import 'package:flutter_riverpod/flutter_riverpod.dart';

// 기존에 쓰던 StateProvider 방식
// StateProvider는 애초에 단순하기 때문에 따로 generator 방식은 없는듯
final counterStateProvider = StateProvider<int>((ref) => 0);

// 기본적으로 1개의 파라미터 사용가능
final counterStateProviderFamily = StateProvider.family(
  (ref, int a) => 0 + a,
);
