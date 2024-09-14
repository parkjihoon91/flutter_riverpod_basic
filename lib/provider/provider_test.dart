
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider_test.g.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  return dio;
});

@riverpod
Dio dioGenerator(DioGeneratorRef ref) {
  final dio = Dio();
  return dio;
}

