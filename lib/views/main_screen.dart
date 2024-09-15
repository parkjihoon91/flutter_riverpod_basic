import 'package:flutter/material.dart';
import 'package:flutter_riverpod_basic/common/extension/context_extension.dart';
import 'package:flutter_riverpod_basic/common/widget/default_widget.dart';
import 'package:flutter_riverpod_basic/common/widget/height_widget.dart';
import 'package:flutter_riverpod_basic/views/async_notifier_screen.dart';
import 'package:flutter_riverpod_basic/views/change_notifier_screen.dart';
import 'package:flutter_riverpod_basic/views/future_provider_screen.dart';
import 'package:flutter_riverpod_basic/views/notifier_provider_screen.dart';
import 'package:flutter_riverpod_basic/views/state_provider_screen.dart';
import 'package:flutter_riverpod_basic/views/stream_provider_screen.dart';

import '../common/widget/custom_elevated_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultWidget(
      title: '간단 Riverpod 예제',
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            name: 'StateProvider',
            onPressed: () {
              context.moveScreen(const StateProviderScreen());
            },
          ),
          const HeightWidget(),
          CustomElevatedButton(
            name: 'NotifierProvider',
            onPressed: () {
              context.moveScreen(const NotifierProviderScreen());
            },
          ),
          const HeightWidget(),
          CustomElevatedButton(
            name: 'AsyncNotifierProvider',
            onPressed: () {
              context.moveScreen(const AsyncNotifierScreen());
            },
          ),
          const HeightWidget(),
          CustomElevatedButton(
            name: 'FutureProvider',
            onPressed: () {
              context.moveScreen(const FutureProviderScreen());
            },
          ),
          const HeightWidget(),
          CustomElevatedButton(
            name: 'ChangeNotifierProvider',
            onPressed: () {
              context.moveScreen(const ChangeNotifierScreen());
            },
          ),
          const HeightWidget(),
          CustomElevatedButton(
            name: 'StreamProvider',
            onPressed: () {
              context.moveScreen(const StreamProviderScreen());
            },
          ),
          const HeightWidget(),
        ],
      ),
    );
  }
}