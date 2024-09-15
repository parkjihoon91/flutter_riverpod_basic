import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_basic/provider/change_notifier_provider.dart';

import '../common/widget/custom_elevated_button.dart';
import '../common/widget/default_widget.dart';
import '../common/widget/height_widget.dart';

class ChangeNotifierScreen extends ConsumerWidget {
  const ChangeNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterChangeNotifierProvider);
    return DefaultWidget(
      title: 'ChangeNotifierProvider 예제화면',
      widget: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('counterChangeNotifierProvider : ${state.counter}'),
            const HeightWidget(),
            CustomElevatedButton(
              name: 'counterChangeNotifierProvider increment',
              onPressed: () {
                ref.read(counterChangeNotifierProvider.notifier).increment();
              },
            ),
            const HeightWidget(),
            CustomElevatedButton(
              name: 'counterChangeNotifierProvider decrement',
              onPressed: () {
                ref.read(counterChangeNotifierProvider.notifier).decrement();
              },
            ),
          ],
        ),
      ),
    );
  }
}
