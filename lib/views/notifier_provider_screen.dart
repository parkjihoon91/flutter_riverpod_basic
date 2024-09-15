import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_basic/common/widget/default_widget.dart';
import 'package:flutter_riverpod_basic/common/widget/height_widget.dart';
import 'package:flutter_riverpod_basic/provider/notifier_provider.dart';

import '../common/widget/custom_elevated_button.dart';

class NotifierProviderScreen extends ConsumerWidget {
  const NotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterNotifierProvider);
    final stateG = ref.watch(counterNotifierGeneratorProvider);
    return DefaultWidget(
      title: 'NotifierProvider 예제화면',
      widget: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('counterNotifierProvider : $state'),
            const HeightWidget(),
            CustomElevatedButton(
              name: 'counterNotifierProvider increment',
              onPressed: () {
                ref.read(counterNotifierProvider.notifier).increment();
              },
            ),
            const HeightWidget(),
            CustomElevatedButton(
              name: 'counterNotifierProvider decrement',
              onPressed: () {
                ref.read(counterNotifierProvider.notifier).decrement();
              },
            ),
            const HeightWidget(),
            Text('CounterNotifierGeneratorProvider : $stateG'),
            const HeightWidget(),
            CustomElevatedButton(
              name: 'CounterNotifierGeneratorProvider increment',
              onPressed: () {
                ref.read(counterNotifierGeneratorProvider.notifier).increment();
              },
            ),
            const HeightWidget(),
            CustomElevatedButton(
              name: 'CounterNotifierGeneratorProvider decrement',
              onPressed: () {
                ref.read(counterNotifierGeneratorProvider.notifier).decrement();
              },
            ),
          ],
        ),
      ),
    );
  }
}
