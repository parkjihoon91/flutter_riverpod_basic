import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_basic/common/widget/default_widget.dart';
import 'package:flutter_riverpod_basic/provider/state_provider.dart';

import '../common/widget/custom_elevated_button.dart';
import '../common/widget/height_widget.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterStateProvider);
    final stateF = ref.watch(counterStateProviderFamily(10));
    return DefaultWidget(
      title: 'StateProvider 예제화면',
      widget: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('counterStateProvider : $state'),
            const HeightWidget(),
            CustomElevatedButton(
              name: 'counterStateProvider',
              onPressed: () {
                ref.read(counterStateProvider.notifier).update(
                      (state) => state = state + 1,
                    );
              },
            ),
            const HeightWidget(),
            Text('counterStateProviderFamily : $stateF'),
          ],
        ),
      ),
    );
  }
}
