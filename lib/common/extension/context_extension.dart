import 'package:flutter/material.dart';

extension ContextEx on BuildContext {
  Future<void> moveScreen(Widget widget) {
    return Navigator.of(this).push(
      MaterialPageRoute(builder: (_) => widget),
    );
  }
}