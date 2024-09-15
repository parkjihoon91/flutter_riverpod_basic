import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_basic/provider/async_notifier_provider.dart';

import '../common/widget/custom_elevated_button.dart';
import '../common/widget/default_widget.dart';
import '../common/widget/height_widget.dart';

class AsyncNotifierScreen extends ConsumerWidget {
  const AsyncNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterAsyncNotifierProvider);
    final stateG = ref.watch(counterAsyncNotifierGeneratorProvider);

    return DefaultWidget(
        title: 'AsyncNotifierProvider 예제화면',
        widget: switch (state) {
          AsyncData(:final value) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('counterAsyncNotifierProvider : $value'),
                  const HeightWidget(),
                  CustomElevatedButton(
                    name: 'counterAsyncNotifierProvider increment',
                    onPressed: () {
                      ref
                          .read(counterAsyncNotifierProvider.notifier)
                          .increment();
                    },
                  ),
                  const HeightWidget(),
                  CustomElevatedButton(
                    name: 'counterAsyncNotifierProvider decrement',
                    onPressed: () {
                      ref
                          .read(counterAsyncNotifierProvider.notifier)
                          .decrement();
                    },
                  ),
                  const HeightWidget(),
                  Text(
                    'counterAsyncNotifierGeneratorProvider : ${stateG.value}',
                  ),
                  const HeightWidget(),
                  CustomElevatedButton(
                    name: 'counterAsyncNotifierGeneratorProvider increment',
                    onPressed: () {
                      ref
                          .read(counterAsyncNotifierGeneratorProvider.notifier)
                          .increment();
                    },
                  ),
                  const HeightWidget(),
                  CustomElevatedButton(
                    name: 'counterAsyncNotifierGeneratorProvider decrement',
                    onPressed: () {
                      ref
                          .read(counterAsyncNotifierGeneratorProvider.notifier)
                          .decrement();
                    },
                  ),
                ],
              ),
            ),
          AsyncError(:final error) => Center(
              child: Text('error: ${error.toString()}'),
            ),
          _ => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
        }

        // when 방법
        // state.when(
        //   data: (data) {
        //     return Padding(
        //       padding: const EdgeInsets.all(16.0),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text('counterAsyncNotifierProvider : ${state.value}'),
        //           const HeightWidget(),
        //           CustomElevatedButton(
        //             name: 'counterAsyncNotifierProvider',
        //             onPressed: () {
        //               ref.read(counterAsyncNotifierProvider.notifier).increment();
        //             },
        //           ),
        //           const HeightWidget(),
        //           Text('counterAsyncNotifierGeneratorProvider : ${stateG.value}'),
        //           const HeightWidget(),
        //           CustomElevatedButton(
        //             name: 'counterAsyncNotifierGeneratorProvider',
        //             onPressed: () {
        //               ref.read(counterAsyncNotifierGeneratorProvider.notifier).increment();
        //             },
        //           ),
        //         ],
        //       ),
        //     );
        //   },
        //   error: (error, trace) => Center(
        //     child: Text('error: ${error.toString()}'),
        //   ),
        //   loading: () => const Center(
        //     child: CircularProgressIndicator.adaptive(),
        //   ),
        // ),
        );
  }
}
