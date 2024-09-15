import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_basic/provider/stream_provider.dart';

import '../common/widget/default_widget.dart';
import '../common/widget/height_widget.dart';

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterStreamProvider);
    return DefaultWidget(
      title: 'StreamProvider 예제화면',
      widget: state.when(
        data: (data) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('counterStreamProvider : $data'),
                const HeightWidget(),
              ],
            ),
          );
        },
        error: (error, trace) => Center(
          child: Text('error: ${error.toString()}'),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
